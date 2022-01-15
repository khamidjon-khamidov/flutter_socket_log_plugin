import 'package:json_annotation/json_annotation.dart';

part 'log_level.g.dart';

@JsonSerializable(explicitToJson: true)
class LogLevel {
  final String name;
  final int color;
  final int iconData;

  factory LogLevel.fromJson(Map<String, dynamic> json) => _$LogLevelFromJson(json);

  Map<String, dynamic> toJson() => _$LogLevelToJson(this);

  LogLevel({
    required this.name,
    required this.color,
    required this.iconData,
  });
}
