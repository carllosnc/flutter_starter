import 'package:flutter/material.dart';
import '/imports.dart';

class _ThemeState extends ChangeNotifier {
  bool lightTheme = true;

  setLightTheme(bool value) {
    lightTheme = value;

    sharedPreferences.prefs.setBool('lightTheme', value);
    notifyListeners();
  }
}

var themeState = _ThemeState();
