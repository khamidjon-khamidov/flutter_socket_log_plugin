///
//  Generated code. Do not modify.
//  source: communication.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields,deprecated_member_use_from_same_package

import 'dart:core' as $core;
import 'dart:convert' as $convert;
import 'dart:typed_data' as $typed_data;
@$core.Deprecated('Use logMessageDescriptor instead')
const LogMessage$json = const {
  '1': 'LogMessage',
  '2': const [
    const {'1': 'timestamp', '3': 1, '4': 1, '5': 13, '10': 'timestamp'},
    const {'1': 'appName', '3': 2, '4': 1, '5': 9, '10': 'appName'},
    const {'1': 'message', '3': 3, '4': 1, '5': 9, '10': 'message'},
    const {'1': 'allLogLevels', '3': 4, '4': 3, '5': 11, '6': '.LogLevel', '10': 'allLogLevels'},
    const {'1': 'allLogTags', '3': 5, '4': 3, '5': 11, '6': '.LogTag', '10': 'allLogTags'},
    const {'1': 'logTags', '3': 6, '4': 3, '5': 11, '6': '.LogTag', '10': 'logTags'},
    const {'1': 'logLevel', '3': 7, '4': 1, '5': 11, '6': '.LogLevel', '10': 'logLevel'},
  ],
};

/// Descriptor for `LogMessage`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List logMessageDescriptor = $convert.base64Decode('CgpMb2dNZXNzYWdlEhwKCXRpbWVzdGFtcBgBIAEoDVIJdGltZXN0YW1wEhgKB2FwcE5hbWUYAiABKAlSB2FwcE5hbWUSGAoHbWVzc2FnZRgDIAEoCVIHbWVzc2FnZRItCgxhbGxMb2dMZXZlbHMYBCADKAsyCS5Mb2dMZXZlbFIMYWxsTG9nTGV2ZWxzEicKCmFsbExvZ1RhZ3MYBSADKAsyBy5Mb2dUYWdSCmFsbExvZ1RhZ3MSIQoHbG9nVGFncxgGIAMoCzIHLkxvZ1RhZ1IHbG9nVGFncxIlCghsb2dMZXZlbBgHIAEoCzIJLkxvZ0xldmVsUghsb2dMZXZlbA==');
@$core.Deprecated('Use logLevelDescriptor instead')
const LogLevel$json = const {
  '1': 'LogLevel',
  '2': const [
    const {'1': 'name', '3': 1, '4': 1, '5': 9, '10': 'name'},
    const {'1': 'color', '3': 2, '4': 1, '5': 13, '10': 'color'},
    const {'1': 'iconData', '3': 3, '4': 1, '5': 13, '10': 'iconData'},
  ],
};

/// Descriptor for `LogLevel`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List logLevelDescriptor = $convert.base64Decode('CghMb2dMZXZlbBISCgRuYW1lGAEgASgJUgRuYW1lEhQKBWNvbG9yGAIgASgNUgVjb2xvchIaCghpY29uRGF0YRgDIAEoDVIIaWNvbkRhdGE=');
@$core.Deprecated('Use logTagDescriptor instead')
const LogTag$json = const {
  '1': 'LogTag',
  '2': const [
    const {'1': 'name', '3': 1, '4': 1, '5': 9, '10': 'name'},
    const {'1': 'color', '3': 2, '4': 1, '5': 13, '10': 'color'},
    const {'1': 'iconData', '3': 3, '4': 1, '5': 13, '10': 'iconData'},
  ],
};

/// Descriptor for `LogTag`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List logTagDescriptor = $convert.base64Decode('CgZMb2dUYWcSEgoEbmFtZRgBIAEoCVIEbmFtZRIUCgVjb2xvchgCIAEoDVIFY29sb3ISGgoIaWNvbkRhdGEYAyABKA1SCGljb25EYXRh');
