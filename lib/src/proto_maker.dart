part of flutter_socket_log_plugin;

abstract class ProtoMaker {
  static List<protos.LogType> defaultLogTypes = [
    createLogType(
      'Error',
      Colors.red.value,
      Icons.error.codePoint,
    ),
    createLogType(
      'Debug',
      Colors.black.value,
      Icons.bug_report.codePoint,
    ),
    createLogType(
      'Warning',
      Colors.yellow.value,
      Icons.warning.codePoint,
    ),
    createLogType(
      'Info',
      Colors.blue.value,
      Icons.info_outline.codePoint,
    ),
    createLogType(
      'Success',
      Colors.green.value,
      Icons.done.codePoint,
    )
  ];

  static List<protos.LogTag> defaultLogTags = [
    createLogTag(
      'Network',
      Colors.red.shade50.value,
      Icons.network_wifi.codePoint,
    ),
    createLogTag(
      'Bluetooth',
      Colors.blue.value,
      Icons.bluetooth.codePoint,
    ),
  ];

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
