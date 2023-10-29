import 'package:bitsdojo_window_platform_interface_v3/bitsdojo_window_platform_interface_v3.dart';
import 'package:flutter/rendering.dart';
import 'dart:ui';
import 'package:flutter/widgets.dart';

class AppWindowNotImplemented extends NotImplementedWindow {
  AppWindowNotImplemented._();

  static final AppWindowNotImplemented _instance = AppWindowNotImplemented._();

  factory AppWindowNotImplemented() {
    return _instance;
  }
}

class BitsdojoWindowPlatformNotImplemented extends BitsdojoWindowPlatform {
  @override
  void doWhenWindowReady(VoidCallback callback) {
    // do nothing on other platforms
  }

  @override
  DesktopWindow get appWindow {
    return AppWindowNotImplemented();
  }
}
