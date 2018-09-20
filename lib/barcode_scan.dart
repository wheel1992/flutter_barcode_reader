import 'dart:async';

import 'package:flutter/services.dart';

class BarcodeScanner {
  static const CameraAccessDenied = 'PERMISSION_NOT_GRANTED';
  static const MethodChannel _channel =
      const MethodChannel('com.apptreesoftware.barcode_scan');
  static Future<String> scan(int cameraId) async {
    var _args = { 'cameraId': cameraId };
    await _channel.invokeMethod('scan', _args);
  }
}
