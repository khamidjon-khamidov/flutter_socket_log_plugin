part of flutter_socket_log_plugin;

abstract class FluttterSocketLogPlugin {
  Stream<Socket?> get clientStream;

  void init({
    required String appName,
    List<protos.LogLevel>? logLevels,
    List<protos.LogTag>? logTags,
  });

  void log(
    String log,
    protos.LogLevel logLevel,
    List<protos.LogTag> logTags,
  );
}
