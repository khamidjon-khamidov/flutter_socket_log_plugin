part of flutter_socket_log_plugin;

abstract class DefaultLogs {
  static LogLevel error = LogLevel(
    name: 'Error',
    color: Colors.red.value,
    iconData: Icons.error.codePoint,
  );

  static LogLevel debug = LogLevel(
    name: 'Debug',
    color: Colors.white.value,
    iconData: Icons.bug_report.codePoint,
  );

  static LogLevel warning = LogLevel(
    name: 'Warning',
    color: Colors.yellow.value,
    iconData: Icons.warning.codePoint,
  );

  static LogLevel info = LogLevel(
    name: 'Info',
    color: Colors.blue.value,
    iconData: Icons.info_outline.codePoint,
  );

  static LogLevel success = LogLevel(
    name: 'Success',
    color: Colors.green.value,
    iconData: Icons.done.codePoint,
  );

  static LogTag network = LogTag(
    name: 'Network',
    color: Colors.red.shade50.value,
    iconData: Icons.network_wifi.codePoint,
  );

  static LogTag bluetooth = LogTag(
    name: 'Bluetooth',
    color: Colors.blue.value,
    iconData: Icons.bluetooth.codePoint,
  );

  static List<LogLevel> defaultLogLevels = [
    error,
    debug,
    warning,
    info,
    success,
  ];

  static List<LogTag> defaultLogTags = [
    network,
    bluetooth,
  ];
}
