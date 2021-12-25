part of flutter_socket_log_plugin;

abstract class FluttterSocketLogPlugin {
  Stream<Socket?> get clientStream;

  void init({
    List<protos.LogType>? logTypes,
    List<protos.LogTag>? logTags,
  });
}
