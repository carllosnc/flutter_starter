import 'package:flutter/material.dart';

class ThemeNotifier {
  static final ThemeNotifier _themeNotifier = ThemeNotifier._internal();

  factory ThemeNotifier() {
    return _themeNotifier;
  }

  ThemeNotifier._internal();

  ValueNotifier<bool> lightTheme = ValueNotifier<bool>(true);
}
