<p align="center">
  <img src="debugger.png" />
</p>

<p align="center">
    <a href="https://github.com/SomeoneAndNoone/flutter_socket_log_plugin/pulls">
        <img src="https://img.shields.io/badge/PRs-Welcome-brightgreen.svg" alt="PRs Welcome" />
    </a>
    <a href="https://pub.dev/packages/flutter_socket_log_plugin">
        <img src="https://img.shields.io/pub/v/card_swiper.svg" alt="pub package" />
    </a>
</p>

# fluttter_socket_log_plugin

Logging flutter apps to remote using socket. In order to connect to remote app, you need to be in the same local network. The tester will be able to see all the logs inside the client app.

You can find the client app source code [here](https://github.com/SomeoneAndNoone/flutter_socket_log_client).

## Client application to watch logs

![Horizontal](https://github.com/SomeoneAndNoone/my_pictures/blob/main/flutter_socket_log_plugin/5.gif)

### Installation

Add

```bash
flutter_socket_log_plugin : # latest version
```

or run
```bash
flutter pub add flutter_socket_log_plugin
```

### How to Use

##### Install Client Application
Install client app using the [flutter source code](https://github.com/SomeoneAndNoone/flutter_socket_log_client) for windows, linux, mac, android, ios or use app for [windows](https://github.com/SomeoneAndNoone/my_pictures/blob/main/flutter_socket_log_plugin/runners/flutter_socket_log_client.exe).

##### Basic Usage

###### Initialize the plugin in main function

```bash
void main() {
  	// add conditions to initialize the plugin
  	FlutterSocketLogPlugin.init(appName: 'Dummy App');
  	runApp(const MyApp());
}
```

###### Log to remote client app

```bash
FlutterSocketLogPlugin.log(
   'Write your logs', 
   DefaultLogs.debug, // customize logs if you want
   [DefaultLogs.network], // add your log tags, customize tags
);
```

##### Customize Log Levels and Log Tags

###### Initialize your log tag and log level

```bash
List<LogLevel> logLevels = [
  FlutterSocketLogPlugin.createLogLevel(
    'Critical',
    Colors.cyan.value,
    Icons.warning.codePoint,
  ),
  FlutterSocketLogPlugin.createLogLevel(
    'Alert',
    Colors.red.value,
    Icons.error.codePoint,
  )
];

List<LogTag> logTags = [
  FlutterSocketLogPlugin.createTag(
    'Request',
    Colors.blue.value,
    Icons.network_wifi.codePoint,
  ),
  FlutterSocketLogPlugin.createTag(
    'Response',
    Colors.green.value,
    Icons.network_wifi.codePoint,
  ),
];
```

###### Add customizations to init function

```bash
FlutterSocketLogPlugin.init(
  appName: 'Customized App',
  logLevels: logLevels,
  logTags: logTags,
);
```

###### Start Logging

```bash
FlutterSocketLogPlugin.log(
  'Write your logs here',
  logLevels[0],
  [
    logTags[0],
    logTags[1],
  ]
);
```

###### Once you define your custom methods it could be as simple as this:

```bash
Logger.debugNetwork('Write your log here');
```