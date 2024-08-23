library screen_capture_event;

import "dart:async";

import "package:flutter/services.dart";
import "package:universal_io/io.dart";

class ScreenCaptureEvent {
  final List<void Function(bool recorded)> _screenRecordListener = [];
  final List<void Function(String filePath)> _screenshotListener = [];

  static const MethodChannel _channel = MethodChannel("screencapture_method");

  ScreenCaptureEvent([bool requestPermission = true]) {
    if (requestPermission && Platform.isAndroid) storagePermission();
    _channel.setMethodCallHandler((call) async {
      switch (call.method) {
        case "screenshot":
          for (final callback in _screenshotListener) {
            if (call.arguments is String) {
              callback.call(call.arguments as String);
            }
          }
          break;
        case "screenRecord":
          for (final callback in _screenRecordListener) {
            if (call.arguments is bool) {
              callback.call(call.arguments as bool);
            }
          }
          break;
        default:
      }
    });
  }

  ///Request storage permission for Android usage
  Future<void> storagePermission() {
    return _channel.invokeMethod("request_permission");
  }

  ///It will prevent user to screenshot/screenRecord on Android by set window Flag to WindowManager.LayoutParams.FLAG_SECURE
  Future<void> preventAndroidScreenShot(bool value) {
    return _channel.invokeMethod("prevent_screenshot", value);
  }

  ///Listen when user screenRecord the screen
  ///You can add listener multiple time, and every listener will be executed
  void addScreenRecordListener(void Function(bool recorded) callback) {
    _screenRecordListener.add(callback);
  }

  ///Listen when user screenshot the screen
  ///You can add listener multiple time, and every listener will be executed
  ///Note : filePath only work for android
  void addScreenShotListener(void Function(String filePath) callback) {
    _screenshotListener.add(callback);
  }

  ///Start watching capture behavior
  void watch() {
    _channel.invokeMethod("watch");
  }

  ///Dispose all listener on native side
  void dispose() {
    _channel.invokeMethod("dispose");
  }

  ///You can get record status to check if screenRecord still active
  Future<bool> isRecording() {
    return _channel.invokeMethod("isRecording").then((value) {
      if (value is bool) return value;
      return false;
    });
  }
}
