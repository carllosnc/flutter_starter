import 'package:flutter/material.dart';
import '/imports.dart';

class _ThemeNotifier {
  ValueNotifier<bool> lightTheme = ValueNotifier<bool>(true);

  setLightTheme(bool value) async {
    lightTheme.value = value;
    sharedPreferences.prefs.setBool('lightTheme', value);
  }
}

var themeNotifier = _ThemeNotifier();
