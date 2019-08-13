import 'dart:ui' as ui;
import 'package:flutter/material.dart';

class Rem {
  static double _designWidth = 750.0;
  static bool _isInit = false;
  static double windowWidth = MediaQueryData.fromWindow(ui.window).size.width;

  static double getPxToRem(val) {
    return windowWidth * val / _designWidth;
  }

  static double getRemToPx(val) {
    return val * _designWidth / windowWidth;
  }

  static setDesignWidth(val) {
    if (!_isInit) {
      _designWidth = val;
      _isInit = true;
    } else {
      // print('is init!!');
    }
  }
}
