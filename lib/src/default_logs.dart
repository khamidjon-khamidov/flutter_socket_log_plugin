part of flutter_socket_log_plugin;

abstract class DefaultLogs {
  static protos.LogLevel error = ProtoMaker.createLogLevel(
    'Error',
    Colors.red.value,
    Icons.error.codePoint,
  );

  static protos.LogLevel debug = ProtoMaker.createLogLevel(
    'Debug',
    Colors.black.value,
    Icons.bug_report.codePoint,
  );

  static protos.LogLevel warning = ProtoMaker.createLogLevel(
    'Warning',
    Colors.yellow.value,
    Icons.warning.codePoint,
  );

  static protos.LogLevel info = ProtoMaker.createLogLevel(
    'Info',
    Colors.blue.value,
    Icons.info_outline.codePoint,
  );

  static protos.LogLevel success = ProtoMaker.createLogLevel(
    'Success',
    Colors.green.value,
    Icons.done.codePoint,
  );

  static protos.LogTag network = ProtoMaker.createLogTag(
    'Network',
    Colors.red.shade50.value,
    Icons.network_wifi.codePoint,
  );

  static protos.LogTag bluetooth = ProtoMaker.createLogTag(
    'Bluetooth',
    Colors.blue.value,
    Icons.bluetooth.codePoint,
  );

  static List<protos.LogLevel> defaultLogLevels = [
    error,
    debug,
    warning,
    info,
    success,
  ];

  static List<protos.LogTag> defaultLogTags = [
    network,
    bluetooth,
  ];
}
