import 'dart:io';

import 'package:flutter/material.dart';
import 'package:fluttter_socket_log_plugin/fluttter_socket_log_plugin.dart';

void main() {
  FlutterSocketLogPlugin.init(appName: 'Dummy App');
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  TextEditingController controller = TextEditingController();
  LogLevel _logLevel = DefaultLogs.debug;
  LogTag _logTag = DefaultLogs.network;
  int counter = 1;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Plugin example app'),
        ),
        body: Column(
          children: [
            const SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: TextField(
                controller: controller,
              ),
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text("LogLevel: "),
                const SizedBox(width: 15),
                DropdownButton<LogLevel>(
                  value: _logLevel,
                  icon: const Icon(Icons.arrow_drop_down_outlined),
                  elevation: 16,
                  style: const TextStyle(color: Colors.deepPurple),
                  underline: Container(
                    height: 2,
                    color: Colors.deepPurpleAccent,
                  ),
                  onChanged: (LogLevel? newValue) {
                    setState(() {
                      _logLevel = newValue!;
                    });
                  },
                  items: DefaultLogs.defaultLogLevels
                      .map(
                        (e) => DropdownMenuItem<LogLevel>(
                          child: Text(e.name),
                          value: e,
                        ),
                      )
                      .toList(),
                ),
              ],
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text("LogTag: "),
                const SizedBox(width: 15),
                DropdownButton<LogTag>(
                  value: _logTag,
                  icon: const Icon(Icons.arrow_drop_down_outlined),
                  elevation: 16,
                  style: const TextStyle(color: Colors.deepPurple),
                  underline: Container(
                    height: 2,
                    color: Colors.deepPurpleAccent,
                  ),
                  onChanged: (LogTag? newValue) {
                    setState(() {
                      _logTag = newValue!;
                    });
                  },
                  items: DefaultLogs.defaultLogTags
                      .map(
                        (e) => DropdownMenuItem<LogTag>(
                          child: Text(e.name),
                          value: e,
                        ),
                      )
                      .toList(),
                ),
              ],
            ),
            const SizedBox(height: 20),
            FutureBuilder<String?>(
              initialData: 'Unknown',
              future: FlutterSocketLogPlugin.wifiIp,
              builder: (context, data) {
                return Text('You ip address: ${data.data ?? 'Not Found'}');
              },
            ),
            const SizedBox(height: 20),
            StreamBuilder<Socket?>(
              stream: FlutterSocketLogPlugin.clientStream,
              builder: (c, s) {
                return Text('Socket connected to : ${s.data?.remoteAddress.address}');
              },
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                FlutterSocketLogPlugin.log(
                  controller.text,
                  _logLevel,
                  [_logTag],
                );
              },
              child: const Text('Remote Log'),
            ),
            const SizedBox(height: 20),
            Text('$counter'),
            const SizedBox(height: 5),
            ElevatedButton(
              onPressed: () {
                FlutterSocketLogPlugin.log(
                  counter.toString(),
                  DefaultLogs.debug,
                  [DefaultLogs.network],
                );
                counter++;
                setState(() {});
              },
              child: const Text('Send Counter'),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                for (int i = 0; i < 100; i++) {
                  FlutterSocketLogPlugin.log(
                    i.toString(),
                    DefaultLogs.debug,
                    [DefaultLogs.network],
                  );
                }
              },
              child: const Text('Send bulk messages from 1 to 100'),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                FlutterSocketLogPlugin.restart();
              },
              child: const Text('Restart'),
            ),
          ],
        ),
      ),
    );
  }
}
