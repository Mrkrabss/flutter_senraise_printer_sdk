import 'dart:ffi';

import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'senraise_printer_platform_interface.dart';

/// An implementation of [SenraisePrinterPlatform] that uses method channels.
class MethodChannelSenraisePrinter extends SenraisePrinterPlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('senraise_printer');

  @override
  Future<String?> getServiceVersion() async {
    final version = await methodChannel.invokeMethod<String>('getServiceVersion');
    return version;
  }

  @override
  Future<Void?> printEpson(Uint8List bytes) async {
    await methodChannel.invokeMethod<String>('printEpson', {"data": bytes});
    return null;
  }

  @override
  Future<Void?> printText(String text) async {
    await methodChannel.invokeMethod<String>('printText', {"text": text});
    return null;
  }

  @override
  Future<Void?> printPic(Uint8List pic) async {
    await methodChannel.invokeMethod<String>('printPic', {"pic": pic});
    return null;
  }

  @override
  Future<Void?> printBarCode(String data, int symbology, int height, int width) async {
    await methodChannel.invokeMethod<String>('printPic', {"data": data, "symbology": symbology, "height": height, "width": width});
    return null;
  }

  @override
  Future<Void?> printQRCode(String data, int modulesize, int errorlevel) async {
    await methodChannel.invokeMethod<String>('printQRCode', {"data": data, "modulesize": modulesize, "errorlevel": errorlevel});
    return null;
  }

  @override
  Future<Void?> setAlignment(int alignment) async {
    await methodChannel.invokeMethod<String>('setAlignment', {"alignment": alignment});
    return null;
  }

  @override
  Future<Void?> setTextSize(double textSize) async {
    await methodChannel.invokeMethod<String>('setTextSize', {"textSize": textSize});
    return null;
  }

  @override
  Future<Void?> nextLine(int line) async {
    await methodChannel.invokeMethod<String>('nextLine', {"line": line});
    return null;
  }

  @override
  Future<Void?> setTextBold(bool bold) async {
    await methodChannel.invokeMethod<String>('setTextBold', {"bold": bold});
    return null;
  }

  @override
  Future<Void?> setDark(int value) async {
    await methodChannel.invokeMethod<String>('setDark', {"value": value});
    return null;
  }

  @override
  Future<Void?> setLineHeight(double lineHeight) async {
    await methodChannel.invokeMethod<String>('setLineHeight', {"lineHeight": lineHeight});
    return null;
  }

  @override
  Future<Void?> setTextDoubleWidth(bool enable) async {
    await methodChannel.invokeMethod<String>('setTextDoubleWidth', {"enable": enable});
    return null;
  }

  @override
  Future<Void?> setTextDoubleHeight(bool enable) async {
    await methodChannel.invokeMethod<String>('setTextDoubleHeight', {"enable": enable});
    return null;
  }

  @override
  Future<Void?> setCode(String code) async {
    await methodChannel.invokeMethod<String>('setCode', {"code": code});
    return null;
  }
}
