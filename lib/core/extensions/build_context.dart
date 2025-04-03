import 'package:flutter/material.dart';

extension AppColorsContext on BuildContext {
  Color get primaryColor => Colors.red;
}

extension AppAssetsContext on BuildContext {
  String get welcomeBackgroundImage => "assets/images/welcome.png";
}
