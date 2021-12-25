#import "FluttterSocketLogPlugin.h"
#if __has_include(<fluttter_socket_log_plugin/fluttter_socket_log_plugin-Swift.h>)
#import <fluttter_socket_log_plugin/fluttter_socket_log_plugin-Swift.h>
#else
// Support project import fallback if the generated compatibility header
// is not copied when this plugin is created as a library.
// https://forums.swift.org/t/swift-static-libraries-dont-copy-generated-objective-c-header/19816
#import "fluttter_socket_log_plugin-Swift.h"
#endif

@implementation FluttterSocketLogPlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftFluttterSocketLogPlugin registerWithRegistrar:registrar];
}
@end
