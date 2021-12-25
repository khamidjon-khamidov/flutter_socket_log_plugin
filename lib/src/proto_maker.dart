part of flutter_socket_log_plugin;

abstract class ProtoMaker {
  static protos.LogTag createLogTag(String name, int color, int iconData) {
    return protos.LogTag.create()
      ..name = name
      ..color = color
      ..iconData = iconData;
  }

  static protos.LogType createLogType(String name, int color, int iconData) {
    return protos.LogType.create()
      ..name = name
      ..color = color
      ..iconData = iconData;
  }
}
