import 'package:json_annotation/json_annotation.dart';

import 'log_level.dart';
import 'log_tag.dart';

part 'log_message.g.dart';

@JsonSerializable(explicitToJson: true)
class LogMessage {
  final int timestamp;
  final String appName;
  final String message;
  final List<LogLevel> allLogLevels;
  final List<LogTag> allLogTags;
  final List<LogTag> logTags;
  final LogLevel logLevel;

  factory LogMessage.fromJson(Map<String, dynamic> json) => _$LogMessageFromJson(json);

  Map<String, dynamic> toJson() => _$LogMessageToJson(this);

  LogMessage({
    required this.timestamp,
    required this.appName,
    required this.message,
    required this.allLogTags,
    required this.allLogLevels,
    required this.logTags,
    required this.logLevel,
  });
}
