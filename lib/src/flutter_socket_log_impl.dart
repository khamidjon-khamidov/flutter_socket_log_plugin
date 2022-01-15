part of flutter_socket_log_plugin;

class _FlutterSocketLogPluginImpl extends FlutterSocketLogPlugin {
  static const String _separator = '*#+k_!';
  final int delay = 300;

  final PublishSubject<String> _sendClientSubject = PublishSubject();

  bool isInitialized = false;
  List<LogTag> allLogTags = [];
  List<LogLevel> allLogLevels = [];
  late String appName;
  ServerSocket? _server;
  int lastProcessTime = DateTime.now().subtract(const Duration(hours: 1)).millisecondsSinceEpoch;

  final BehaviorSubject<Socket?> _clientSubject = BehaviorSubject.seeded(null);

  _FlutterSocketLogPluginImpl() {
    // _sendClientSubject.stream.flatMap(duration);

    _sendClientSubject.stream.map((value) async {
      int nowInt = now();
      int delta = max(0, delay - (nowInt - lastProcessTime));
      await Future.delayed(Duration(milliseconds: delta));
      var mClient = await client;
      if (mClient != null) {
        try {
          // add separator to fix bug(multiple messages are being added to the same message)
          mClient.write(value);
        } catch (e) {
          _printLog('error happened in encoding message: $value');
        }
      }
      lastProcessTime = now();
      return value;
    }).listen((value) {
      // do nothing
    });
  }

  int now() => DateTime.now().millisecondsSinceEpoch;

  @override
  Stream<Socket?> get _clientStream => _clientSubject.stream;

  Future<Socket?> get client => _clientSubject.first;

  @override
  void _init({
    required String appName,
    List<LogLevel>? logLevels,
    List<LogTag>? logTags,
  }) {
    if (isInitialized) {
      throw Exception('FlutterSocketLogPlugin: plugin already initialized');
    }
    isInitialized = true;

    this.appName = appName;
    allLogTags = logTags ?? DefaultLogs.defaultLogTags;
    allLogLevels = logLevels ?? DefaultLogs.defaultLogLevels;
    initSocket();
  }

  void initSocket() async {
    _printLog('Server started listening...');
    _server = await ServerSocket.bind(InternetAddress.anyIPv4, 4567);

    _server?.listen((mClient) {
      handleConnection(mClient);
    });
  }

  @override
  void _restart() {
    _printLog('restarting...');
    _server?.close();
    Future.delayed(const Duration(seconds: 2));
    initSocket();
  }

  @override
  Future<String?> get _wifiIp => NetworkInfo().getWifiIP();

  void handleConnection(Socket mClient) {
    _printLog('New Client: ${mClient.address}');
    mClient.listen(
      (Uint8List data) async {
        _printLog('Got message: ${String.fromCharCodes(data)}');
        final message = String.fromCharCodes(data);
        if (message == 'flutter_socket_log_plugin') {
          await closeLastClient();
          _printLog('New client connected. Address: ${mClient.address}');
          _clientSubject.add(mClient);
        } else {
          _printLog('Unknown client: address: ${mClient.address}, message: $message');
          mClient.close();
        }
      },
      onError: (error) async {
        await closeClient(mClient);
      },
      onDone: () async {
        await closeClient(mClient);
      },
    );
  }

  Future<void> closeLastClient() async => (await _clientSubject.first)?.close();

  Future<void> closeClient(Socket mClient) async {
    Socket? lastClient = await _clientSubject.first;
    if (lastClient != null && lastClient.address == mClient.address) {
      _clientSubject.add(null);
    }
    mClient.close();
  }

  @override
  void _log(
    String log,
    LogLevel logLevel,
    List<LogTag> logTags,
  ) {
    LogMessage message = LogMessage(
      timestamp: DateTime.now().millisecondsSinceEpoch,
      appName: appName,
      message: log,
      logLevel: logLevel,
      logTags: logTags,
      allLogTags: allLogTags,
      allLogLevels: allLogLevels,
    );

    _sendClientSubject.add('${json.encode(message.toJson())}$_separator');
  }

  void _printLog(String log) {
    if (kDebugMode) {
      print(log);
    }
  }
}
