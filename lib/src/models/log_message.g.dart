// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'log_message.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

LogMessage _$LogMessageFromJson(Map<String, dynamic> json) => LogMessage(
      timestamp: json['timestamp'] as int,
      appName: json['appName'] as String,
      message: json['message'] as String,
      allLogTags: (json['allLogTags'] as List<dynamic>)
          .map((e) => LogTag.fromJson(e as Map<String, dynamic>))
          .toList(),
      allLogLevels: (json['allLogLevels'] as List<dynamic>)
          .map((e) => LogLevel.fromJson(e as Map<String, dynamic>))
          .toList(),
      logTags: (json['logTags'] as List<dynamic>)
          .map((e) => LogTag.fromJson(e as Map<String, dynamic>))
          .toList(),
      logLevel: LogLevel.fromJson(json['logLevel'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$LogMessageToJson(LogMessage instance) =>
    <String, dynamic>{
      'timestamp': instance.timestamp,
      'appName': instance.appName,
      'message': instance.message,
      'allLogLevels': instance.allLogLevels.map((e) => e.toJson()).toList(),
      'allLogTags': instance.allLogTags.map((e) => e.toJson()).toList(),
      'logTags': instance.logTags.map((e) => e.toJson()).toList(),
      'logLevel': instance.logLevel.toJson(),
    };
