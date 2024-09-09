import 'package:flutter/material.dart';

extension ButtonComponent on String {
  Widget button(void Function()? onPressed) {
    return FilledButton(
      onPressed: onPressed,
      child: Text(this),
    );
  }
}
