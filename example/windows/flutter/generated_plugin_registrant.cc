//
//  Generated file. Do not edit.
//

// clang-format off

#include "generated_plugin_registrant.h"

#include <fluttter_socket_log_plugin/fluttter_socket_log_plugin.h>
#include <network_info_plus_windows/network_info_plus_windows_plugin.h>

void RegisterPlugins(flutter::PluginRegistry* registry) {
  FluttterSocketLogPluginRegisterWithRegistrar(
      registry->GetRegistrarForPlugin("FluttterSocketLogPlugin"));
  NetworkInfoPlusWindowsPluginRegisterWithRegistrar(
      registry->GetRegistrarForPlugin("NetworkInfoPlusWindowsPlugin"));
}
