// void main() {
//   const MethodChannel channel = MethodChannel('fluttter_socket_log_plugin');
//
//   TestWidgetsFlutterBinding.ensureInitialized();
//
//   setUp(() {
//     channel.setMockMethodCallHandler((MethodCall methodCall) async {
//       return '42';
//     });
//   });
//
//   tearDown(() {
//     channel.setMockMethodCallHandler(null);
//   });
//
//   test('getPlatformVersion', () async {
//     expect(await FluttterSocketLogPlugin.platformVersion, '42');
//   });
// }
