part of flutter_socket_log_plugin;

abstract class FlutterSocketLogPlugin {
  static FlutterSocketLogPlugin? _mInstance;

  static FlutterSocketLogPlugin get _instance => _mInstance ??= _FlutterSocketLogPluginImpl();

  // **** Static Methods ****

  /// initializes the plugin
  /// [logLevels] -> log levels used for the duration of the app
  /// if no log level is set, the defaults are used([error, debug, warning, info, success])
  /// [logTags] -> tags to be used for a log.
  /// if no log tag is set, the defaults are used([bluetooth, network])
  static void init({
    required String appName,
    List<protos.LogLevel>? logLevels,
    List<protos.LogTag>? logTags,
  }) =>
      _instance._init(appName: appName, logTags: logTags, logLevels: logLevels);

  /// logs to remote client app
  static void log(
    String log,
    protos.LogLevel logLevel,
    List<protos.LogTag> logTags,
  ) =>
      _instance._log(log, logLevel, logTags);

  /// creates tag with given parameters
  static protos.LogTag createTag(
    String name,
    int color,
    int iconData,
  ) =>
      ProtoMaker.createLogTag(name, color, iconData);

  /// creates log level with given parameters
  static protos.LogLevel createLogLevel(
    String name,
    int color,
    int iconData,
  ) =>
      ProtoMaker.createLogLevel(name, color, iconData);

  static void restart() => _instance._restart();

  /// [clientStream] stream which sends current
  /// Socket client connected to the application
  static Stream<Socket?> get clientStream => _instance._clientStream;

  /// gets the IP address of wifi the application connected to
  static Future<String?> get wifiIp => _instance._wifiIp;

////////////////////////////////////////////////////////////////////////

  Future<String?> get _wifiIp;

  Stream<Socket?> get _clientStream;

  void _restart();

  void _init({
    required String appName,
    List<protos.LogLevel>? logLevels,
    List<protos.LogTag>? logTags,
  });

  /// logs message with specific [logLevel] and [logTags]
  /// using [logTags], client app will be able to filter logTags
  void _log(
    String log,
    protos.LogLevel logLevel,
    List<protos.LogTag> logTags,
  );
}
