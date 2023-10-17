import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class _ThemeGlobal {
  ValueNotifier<bool> lightTheme = ValueNotifier<bool>(true);

  setLightTheme(bool value) async {
    lightTheme.value = value;

    //set to shared preferences
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setBool('lightTheme', value);
  }
}

var themeGlobal = _ThemeGlobal();
