import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:senraise_printer/senraise_printer_method_channel.dart';

void main() {
  MethodChannelSenraisePrinter platform = MethodChannelSenraisePrinter();
  const MethodChannel channel = MethodChannel('senraise_printer');

  TestWidgetsFlutterBinding.ensureInitialized();

  setUp(() {});

  testWidgets('getPlatformVersion', (WidgetTester tester) async {
    tester.binding.defaultBinaryMessenger.setMockMethodCallHandler(channel, (MethodCall methodCall) async => '42');

    expect(await platform.getServiceVersion(), '42');
  });
}
