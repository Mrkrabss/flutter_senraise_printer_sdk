import 'dart:ffi';
import 'dart:typed_data';
import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'senraise_printer_method_channel.dart';

abstract class SenraisePrinterPlatform extends PlatformInterface {
  /// Constructs a SenraisePrinterPlatform.
  SenraisePrinterPlatform() : super(token: _token);

  static final Object _token = Object();

  static SenraisePrinterPlatform _instance = MethodChannelSenraisePrinter();

  /// The default instance of [SenraisePrinterPlatform] to use.
  ///
  /// Defaults to [MethodChannelSenraisePrinter].
  static SenraisePrinterPlatform get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [SenraisePrinterPlatform] when
  /// they register themselves.
  static set instance(SenraisePrinterPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String?> getServiceVersion() {
    throw UnimplementedError('getServiceVersion() has not been implemented.');
  }
  Future<Void?> printEpson(Uint8List bytes) {
    throw UnimplementedError('printEpson() has not been implemented.');
  }
  Future<Void?> printText(String text) {
    throw UnimplementedError('printText() has not been implemented.');
  }
  Future<Void?> printPic(Uint8List pic) {
    throw UnimplementedError('printPic() has not been implemented.');
  }
  Future<Void?> printBarCode(String data, int symbology, int height, int width){
    throw UnimplementedError('printBarCode() has not been implemented.');
  }

  Future<Void?> printQRCode(String data, int modulesize, int errorlevel) {
    throw UnimplementedError('printQRCode() has not been implemented.');
  }

  Future<Void?> setAlignment(int alignment) {
    throw UnimplementedError('setAlignment() has not been implemented.');
  }

  Future<Void?> setTextSize(double textSize) {
    throw UnimplementedError('setTextSize() has not been implemented.');
  }

  Future<Void?> nextLine(int line) {
    throw UnimplementedError('nextLine() has not been implemented.');
  }

  Future<Void?> setTextBold(bool bold) {
    throw UnimplementedError('setTextBold() has not been implemented.');
  }

  Future<Void?> setDark(int value) {
    throw UnimplementedError('setDark() has not been implemented.');
  }

  Future<Void?> setLineHeight(double lineHeight) {
    throw UnimplementedError('setLineHeight() has not been implemented.');
  }

  Future<Void?> setTextDoubleWidth(bool enable) {
    throw UnimplementedError('setTextDoubleWidth() has not been implemented.');
  }

  Future<Void?> setTextDoubleHeight(bool enable) {
    throw UnimplementedError('setTextDoubleWidth() has not been implemented.');
  }

  Future<Void?> setCode(String code) {
    throw UnimplementedError('setCode() has not been implemented.');
  }

}
