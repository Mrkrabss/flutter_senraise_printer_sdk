
import 'dart:ffi';
import 'dart:typed_data';
import 'dart:ui';

import 'package:flutter/cupertino.dart';

import 'senraise_printer_platform_interface.dart';

class SenraisePrinter {
  Future<String?> getServiceVersion() {
    return SenraisePrinterPlatform.instance.getServiceVersion();
  }
  Future<Void?> printEpson(Uint8List bytes) {
    return SenraisePrinterPlatform.instance.printEpson(bytes);
  }
  Future<Void?> printText(String text) {
    return SenraisePrinterPlatform.instance.printText(text);
  }
  Future<Void?> printPic(Uint8List pic) {
    return SenraisePrinterPlatform.instance.printPic(pic);
  }

  Future<Void?> printBarCode(String data, int symbology, int height, int width) {
    return SenraisePrinterPlatform.instance.printBarCode(data,symbology,height,width);
  }
  Future<Void?> printQRCode(String data, int modulesize, int errorlevel) {
    return SenraisePrinterPlatform.instance.printQRCode(data, modulesize, errorlevel);
  }
  Future<Void?> setAlignment(int alignment) {
    return SenraisePrinterPlatform.instance.setAlignment(alignment);
  }
  Future<Void?> setTextSize(double textSize) {
    return SenraisePrinterPlatform.instance.setTextSize(textSize);
  }
  Future<Void?> nextLine(int line) {
    return SenraisePrinterPlatform.instance.nextLine(line);
  }

  Future<Void?> setTextBold(bool bold) {
    return SenraisePrinterPlatform.instance.setTextBold(bold);
  }
  Future<Void?> setDark(int value) {
    return SenraisePrinterPlatform.instance.setDark(value);
  }
  Future<Void?> setLineHeight(double lineHeight) {
    return SenraisePrinterPlatform.instance.setLineHeight(lineHeight);
  }
  Future<Void?> setTextDoubleWidth(bool enable) {
    return SenraisePrinterPlatform.instance.setTextDoubleWidth(enable);
  }
  Future<Void?> setTextDoubleHeight(bool enable) {
    return SenraisePrinterPlatform.instance.setTextDoubleHeight(enable);
  }
  Future<Void?> setCode(String code) {
    return SenraisePrinterPlatform.instance.setCode(code);
  }
}
