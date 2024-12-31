import 'dart:ffi';
import 'dart:typed_data';

import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'package:senraise_printer/senraise_printer_method_channel.dart';
import 'package:senraise_printer/senraise_printer_platform_interface.dart';

class MockSenraisePrinterPlatform with MockPlatformInterfaceMixin implements SenraisePrinterPlatform {
  Future<String?> getPlatformVersion() => Future.value('42');

  @override
  Future<String?> getServiceVersion() {
    throw UnimplementedError();
  }

  @override
  Future<Void?> nextLine(int line) {
    throw UnimplementedError();
  }

  @override
  Future<Void?> printBarCode(String data, int symbology, int height, int width) {
    throw UnimplementedError();
  }

  @override
  Future<Void?> printEpson(Uint8List bytes) {
    throw UnimplementedError();
  }

  @override
  Future<Void?> printPic(Uint8List pic) {

    throw UnimplementedError();
  }

  @override
  Future<Void?> printQRCode(String data, int modulesize, int errorlevel) {
    throw UnimplementedError();
  }

  @override
  Future<Void?> printText(String text) {
    throw UnimplementedError();
  }

  @override
  Future<Void?> setAlignment(int alignment) {
    throw UnimplementedError();
  }

  @override
  Future<Void?> setCode(String code) {
    throw UnimplementedError();
  }

  @override
  Future<Void?> setDark(int value) {
    throw UnimplementedError();
  }

  @override
  Future<Void?> setLineHeight(double lineHeight) {
    throw UnimplementedError();
  }

  @override
  Future<Void?> setTextBold(bool bold) {
    throw UnimplementedError();
  }

  @override
  Future<Void?> setTextDoubleHeight(bool enable) {
    throw UnimplementedError();
  }

  @override
  Future<Void?> setTextDoubleWidth(bool enable) {
    throw UnimplementedError();
  }

  @override
  Future<Void?> setTextSize(double textSize) {
    throw UnimplementedError();
  }
}

void main() {
  final SenraisePrinterPlatform initialPlatform = SenraisePrinterPlatform.instance;

  test('$MethodChannelSenraisePrinter is the default instance', () {
    expect(initialPlatform, isInstanceOf<MethodChannelSenraisePrinter>());
  });

  test('getPlatformVersion', () async {
    //SenraisePrinter senraisePrinterPlugin = SenraisePrinter();
    MockSenraisePrinterPlatform fakePlatform = MockSenraisePrinterPlatform();
    SenraisePrinterPlatform.instance = fakePlatform;

    expect(await (SenraisePrinterPlatform.instance as MockSenraisePrinterPlatform).getPlatformVersion(), '42');
  });
}
