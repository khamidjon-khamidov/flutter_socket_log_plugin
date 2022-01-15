// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'log_level.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

LogLevel _$LogLevelFromJson(Map<String, dynamic> json) => LogLevel(
      name: json['name'] as String,
      color: json['color'] as int,
      iconData: json['iconData'] as int,
    );

Map<String, dynamic> _$LogLevelToJson(LogLevel instance) => <String, dynamic>{
      'name': instance.name,
      'color': instance.color,
      'iconData': instance.iconData,
    };
