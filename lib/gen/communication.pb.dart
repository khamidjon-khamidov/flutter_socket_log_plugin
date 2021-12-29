///
//  Generated code. Do not modify.
//  source: communication.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

import 'dart:core' as $core;

import 'package:fixnum/fixnum.dart' as $fixnum;
import 'package:protobuf/protobuf.dart' as $pb;

class LogMessage extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'LogMessage', createEmptyInstance: create)
    ..a<$fixnum.Int64>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'timestamp', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'appName', protoName: 'appName')
    ..aOS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'message')
    ..pc<LogLevel>(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'allLogLevels', $pb.PbFieldType.PM, protoName: 'allLogLevels', subBuilder: LogLevel.create)
    ..pc<LogTag>(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'allLogTags', $pb.PbFieldType.PM, protoName: 'allLogTags', subBuilder: LogTag.create)
    ..pc<LogTag>(6, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'logTags', $pb.PbFieldType.PM, protoName: 'logTags', subBuilder: LogTag.create)
    ..aOM<LogLevel>(7, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'logLevel', protoName: 'logLevel', subBuilder: LogLevel.create)
    ..hasRequiredFields = false
  ;

  LogMessage._() : super();
  factory LogMessage({
    $fixnum.Int64? timestamp,
    $core.String? appName,
    $core.String? message,
    $core.Iterable<LogLevel>? allLogLevels,
    $core.Iterable<LogTag>? allLogTags,
    $core.Iterable<LogTag>? logTags,
    LogLevel? logLevel,
  }) {
    final _result = create();
    if (timestamp != null) {
      _result.timestamp = timestamp;
    }
    if (appName != null) {
      _result.appName = appName;
    }
    if (message != null) {
      _result.message = message;
    }
    if (allLogLevels != null) {
      _result.allLogLevels.addAll(allLogLevels);
    }
    if (allLogTags != null) {
      _result.allLogTags.addAll(allLogTags);
    }
    if (logTags != null) {
      _result.logTags.addAll(logTags);
    }
    if (logLevel != null) {
      _result.logLevel = logLevel;
    }
    return _result;
  }
  factory LogMessage.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory LogMessage.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  LogMessage clone() => LogMessage()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  LogMessage copyWith(void Function(LogMessage) updates) => super.copyWith((message) => updates(message as LogMessage)) as LogMessage; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static LogMessage create() => LogMessage._();
  LogMessage createEmptyInstance() => create();
  static $pb.PbList<LogMessage> createRepeated() => $pb.PbList<LogMessage>();
  @$core.pragma('dart2js:noInline')
  static LogMessage getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<LogMessage>(create);
  static LogMessage? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get timestamp => $_getI64(0);
  @$pb.TagNumber(1)
  set timestamp($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasTimestamp() => $_has(0);
  @$pb.TagNumber(1)
  void clearTimestamp() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get appName => $_getSZ(1);
  @$pb.TagNumber(2)
  set appName($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasAppName() => $_has(1);
  @$pb.TagNumber(2)
  void clearAppName() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get message => $_getSZ(2);
  @$pb.TagNumber(3)
  set message($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasMessage() => $_has(2);
  @$pb.TagNumber(3)
  void clearMessage() => clearField(3);

  @$pb.TagNumber(4)
  $core.List<LogLevel> get allLogLevels => $_getList(3);

  @$pb.TagNumber(5)
  $core.List<LogTag> get allLogTags => $_getList(4);

  @$pb.TagNumber(6)
  $core.List<LogTag> get logTags => $_getList(5);

  @$pb.TagNumber(7)
  LogLevel get logLevel => $_getN(6);
  @$pb.TagNumber(7)
  set logLevel(LogLevel v) { setField(7, v); }
  @$pb.TagNumber(7)
  $core.bool hasLogLevel() => $_has(6);
  @$pb.TagNumber(7)
  void clearLogLevel() => clearField(7);
  @$pb.TagNumber(7)
  LogLevel ensureLogLevel() => $_ensure(6);
}

class LogLevel extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'LogLevel', createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'name')
    ..a<$core.int>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'color', $pb.PbFieldType.OU3)
    ..a<$core.int>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'iconData', $pb.PbFieldType.OU3, protoName: 'iconData')
    ..hasRequiredFields = false
  ;

  LogLevel._() : super();
  factory LogLevel({
    $core.String? name,
    $core.int? color,
    $core.int? iconData,
  }) {
    final _result = create();
    if (name != null) {
      _result.name = name;
    }
    if (color != null) {
      _result.color = color;
    }
    if (iconData != null) {
      _result.iconData = iconData;
    }
    return _result;
  }
  factory LogLevel.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory LogLevel.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  LogLevel clone() => LogLevel()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  LogLevel copyWith(void Function(LogLevel) updates) => super.copyWith((message) => updates(message as LogLevel)) as LogLevel; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static LogLevel create() => LogLevel._();
  LogLevel createEmptyInstance() => create();
  static $pb.PbList<LogLevel> createRepeated() => $pb.PbList<LogLevel>();
  @$core.pragma('dart2js:noInline')
  static LogLevel getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<LogLevel>(create);
  static LogLevel? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get name => $_getSZ(0);
  @$pb.TagNumber(1)
  set name($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasName() => $_has(0);
  @$pb.TagNumber(1)
  void clearName() => clearField(1);

  @$pb.TagNumber(2)
  $core.int get color => $_getIZ(1);
  @$pb.TagNumber(2)
  set color($core.int v) { $_setUnsignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasColor() => $_has(1);
  @$pb.TagNumber(2)
  void clearColor() => clearField(2);

  @$pb.TagNumber(3)
  $core.int get iconData => $_getIZ(2);
  @$pb.TagNumber(3)
  set iconData($core.int v) { $_setUnsignedInt32(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasIconData() => $_has(2);
  @$pb.TagNumber(3)
  void clearIconData() => clearField(3);
}

class LogTag extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'LogTag', createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'name')
    ..a<$core.int>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'color', $pb.PbFieldType.OU3)
    ..a<$core.int>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'iconData', $pb.PbFieldType.OU3, protoName: 'iconData')
    ..hasRequiredFields = false
  ;

  LogTag._() : super();
  factory LogTag({
    $core.String? name,
    $core.int? color,
    $core.int? iconData,
  }) {
    final _result = create();
    if (name != null) {
      _result.name = name;
    }
    if (color != null) {
      _result.color = color;
    }
    if (iconData != null) {
      _result.iconData = iconData;
    }
    return _result;
  }
  factory LogTag.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory LogTag.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  LogTag clone() => LogTag()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  LogTag copyWith(void Function(LogTag) updates) => super.copyWith((message) => updates(message as LogTag)) as LogTag; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static LogTag create() => LogTag._();
  LogTag createEmptyInstance() => create();
  static $pb.PbList<LogTag> createRepeated() => $pb.PbList<LogTag>();
  @$core.pragma('dart2js:noInline')
  static LogTag getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<LogTag>(create);
  static LogTag? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get name => $_getSZ(0);
  @$pb.TagNumber(1)
  set name($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasName() => $_has(0);
  @$pb.TagNumber(1)
  void clearName() => clearField(1);

  @$pb.TagNumber(2)
  $core.int get color => $_getIZ(1);
  @$pb.TagNumber(2)
  set color($core.int v) { $_setUnsignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasColor() => $_has(1);
  @$pb.TagNumber(2)
  void clearColor() => clearField(2);

  @$pb.TagNumber(3)
  $core.int get iconData => $_getIZ(2);
  @$pb.TagNumber(3)
  set iconData($core.int v) { $_setUnsignedInt32(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasIconData() => $_has(2);
  @$pb.TagNumber(3)
  void clearIconData() => clearField(3);
}

