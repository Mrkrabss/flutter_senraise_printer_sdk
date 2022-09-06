import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:senraise_printer/senraise_printer_method_channel.dart';

void main() {
  MethodChannelSenraisePrinter platform = MethodChannelSenraisePrinter();
  const MethodChannel channel = MethodChannel('senraise_printer');

  TestWidgetsFlutterBinding.ensureInitialized();

  setUp(() {
    channel.setMockMethodCallHandler((MethodCall methodCall) async {
      return '42';
    });
  });

  tearDown(() {
    channel.setMockMethodCallHandler(null);
  });

  test('getPlatformVersion', () async {
    expect(await platform.getPlatformVersion(), '42');
  });
}
