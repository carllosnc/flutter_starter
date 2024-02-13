import 'package:flutter/material.dart';

const pageTransition = PageTransitionsTheme(
  builders: {
    TargetPlatform.android: CupertinoPageTransitionsBuilder(),
    TargetPlatform.iOS: CupertinoPageTransitionsBuilder(),
  },
);

lightTheme() {
  return ThemeData(
    useMaterial3: true,
    brightness: Brightness.light,
    colorSchemeSeed: Colors.blue,
    fontFamily: 'SFProDisplay',
    pageTransitionsTheme: pageTransition,
  );
}

darkTheme() {
  return ThemeData(
    useMaterial3: true,
    brightness: Brightness.dark,
    colorSchemeSeed: Colors.blue,
    fontFamily: 'SFProDisplay',
    pageTransitionsTheme: pageTransition,
  );
}
