part of flutter_socket_log_plugin;

class _FluttterSocketLogPluginImpl extends FluttterSocketLogPlugin {
  bool isInitialized = false;
  List<protos.LogTag> mLogTags = [];
  List<protos.LogType> mLogTypes = [];

  BehaviorSubject<Socket?> clientSubject = BehaviorSubject.seeded(null);

  @override
  Stream<Socket?> get clientStream => clientSubject.stream;

  Future<Socket?> get client => clientSubject.last;

  @override
  void init({
    List<protos.LogType>? logTypes,
    List<protos.LogTag>? logTags,
  }) {
    if (isInitialized) {
      throw Exception('FlutterSocketLogPlugin: plugin already initialized');
    }
    isInitialized = true;

    mLogTags = logTags ?? ProtoMaker.defaultLogTags;
    mLogTypes = logTypes ?? ProtoMaker.defaultLogTypes;
    initSocket();
  }

  void initSocket() async {
    final server = await ServerSocket.bind(InternetAddress.anyIPv4, 4567);

    server.listen((mClient) {
      handleConnection(mClient);
    });
  }

  void handleConnection(Socket mClient) {
    mClient.listen(
      (Uint8List data) async {
        final message = String.fromCharCodes(data);
        if (message == 'flutter_socket_log_plugin') {
          await closeLastClient();
          print('New client connected. Address: ${mClient.address}');
          clientSubject.add(mClient);
        } else {
          print('Unknown client: address: ${mClient.address}, message: $message');
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

  Future<void> closeLastClient() async => (await clientSubject.last)?.close();

  Future<void> closeClient(Socket mClient) async {
    Socket? lastClient = await clientSubject.last;
    if (lastClient != null && lastClient.address == mClient.address) {
      clientSubject.add(null);
    }
    mClient.close();
  }
}
