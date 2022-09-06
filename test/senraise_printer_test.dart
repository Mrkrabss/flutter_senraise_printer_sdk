import 'package:flutter_test/flutter_test.dart';
import 'package:senraise_printer/senraise_printer.dart';
import 'package:senraise_printer/senraise_printer_platform_interface.dart';
import 'package:senraise_printer/senraise_printer_method_channel.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

class MockSenraisePrinterPlatform
    with MockPlatformInterfaceMixin
    implements SenraisePrinterPlatform {

  @override
  Future<String?> getPlatformVersion() => Future.value('42');
}

void main() {
  final SenraisePrinterPlatform initialPlatform = SenraisePrinterPlatform.instance;

  test('$MethodChannelSenraisePrinter is the default instance', () {
    expect(initialPlatform, isInstanceOf<MethodChannelSenraisePrinter>());
  });

  test('getPlatformVersion', () async {
    SenraisePrinter senraisePrinterPlugin = SenraisePrinter();
    MockSenraisePrinterPlatform fakePlatform = MockSenraisePrinterPlatform();
    SenraisePrinterPlatform.instance = fakePlatform;

    expect(await senraisePrinterPlugin.getPlatformVersion(), '42');
  });
}
