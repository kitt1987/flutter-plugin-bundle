
import 'dart:async';

import 'package:flutter/services.dart';

class Bundle {
  static const MethodChannel _channel =
      const MethodChannel('bundle');

  static Future<String> get executablePath async {
    return await _channel.invokeMethod('executablePath');
  }
}
