import 'package:flutter/material.dart';

appTheme({required bool isLight}) => ThemeData(
      useMaterial3: true,
      brightness: isLight ? Brightness.light : Brightness.dark,
      colorSchemeSeed: Colors.blue,
      fontFamily: 'SFProDisplay',
    );
