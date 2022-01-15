import 'package:json_annotation/json_annotation.dart';

part 'log_tag.g.dart';

@JsonSerializable(explicitToJson: true)
class LogTag {
  final String name;
  final int color;
  final int iconData;

  factory LogTag.fromJson(Map<String, dynamic> json) => _$LogTagFromJson(json);

  Map<String, dynamic> toJson() => _$LogTagToJson(this);

  LogTag({
    required this.name,
    required this.color,
    required this.iconData,
  });
}
