part of flutter_socket_log_plugin;

abstract class ProtoMaker {
  static List<protos.LogLevel> defaultLogLevels = [
    createLogLevel(
      'Error',
      Colors.red.value,
      Icons.error.codePoint,
    ),
    createLogLevel(
      'Debug',
      Colors.black.value,
      Icons.bug_report.codePoint,
    ),
    createLogLevel(
      'Warning',
      Colors.yellow.value,
      Icons.warning.codePoint,
    ),
    createLogLevel(
      'Info',
      Colors.blue.value,
      Icons.info_outline.codePoint,
    ),
    createLogLevel(
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

  static protos.LogMessage createLogMessage({
    required String appName,
    required String message,
    required protos.LogLevel logLevel,
    required List<protos.LogTag> logTags,
    required List<protos.LogTag> allLogTags,
    required List<protos.LogLevel> allLogLevels,
  }) {
    return protos.LogMessage.create()
      ..timestamp = DateTime.now().millisecondsSinceEpoch
      ..appName = appName
      ..message = message
      ..allLogLevels.addAll(allLogLevels)
      ..allLogTags.addAll(allLogTags)
      ..logTags.addAll(logTags)
      ..logLevel = logLevel;
  }

  static protos.LogTag createLogTag(String name, int color, int iconData) {
    return protos.LogTag.create()
      ..name = name
      ..color = color
      ..iconData = iconData;
  }

  static protos.LogLevel createLogLevel(String name, int color, int iconData) {
    return protos.LogLevel.create()
      ..name = name
      ..color = color
      ..iconData = iconData;
  }
}
