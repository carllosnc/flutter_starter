import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ThemeNotifier {
  static final ThemeNotifier _themeNotifier = ThemeNotifier._internal();

  factory ThemeNotifier() {
    return _themeNotifier;
  }

  ThemeNotifier._internal();

  ValueNotifier<bool> lightTheme = ValueNotifier<bool>(true);

  setLightTheme(bool value) async {
    lightTheme.value = value;

    //set to shared preferences
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setBool('lightTheme', value);
  }
}
