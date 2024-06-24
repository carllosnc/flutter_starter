import 'package:flutter/material.dart';

extension AppColorsContext on BuildContext {
  Color get primaryColor => Colors.red;
}

extension AppAssetsContext on BuildContext {
  String get welcomentBackgroundImage => "assets/images/welcome.png";
}

extension AppActionsContext on BuildContext {
  void showSnackbar({
    required String message,
    SnackBarAction? action,
    Color? backgroundColor,
  }) {
    ScaffoldMessenger.of(this).clearSnackBars();
    ScaffoldMessenger.of(this).showSnackBar(
      SnackBar(
        backgroundColor: backgroundColor,
        action: action,
        content: Text(message),
      ),
    );
  }
}
