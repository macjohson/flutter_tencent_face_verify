
import 'dart:async';

import 'package:flutter/services.dart';

class FlutterTencentFaceVerify {
  static const MethodChannel _channel =
      const MethodChannel('flutter_tencent_face_verify');

  static Future<String> get platformVersion async {
    final String version = await _channel.invokeMethod('getPlatformVersion');
    return version;
  }
}
