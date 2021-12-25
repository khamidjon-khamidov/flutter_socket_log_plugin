part of flutter_socket_log_plugin;

abstract class FluttterSocketLogPlugin {
  static List<protos.LogType> defaultLogTypes = [
    ProtoMaker.createLogType(
      'Network',
      Colors.blue.value,
      Icons.network_wifi.codePoint,
    ),
  ];

  void test() {}

  void init({
    List<protos.LogType> logTypes = const [],
    List<protos.LogTag> logTags = const [],
  });
}
