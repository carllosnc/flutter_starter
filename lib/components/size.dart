import 'package:flutter/material.dart';

extension SizeComponent on int {
  Widget width(Widget child) {
    return SizedBox(width: double.parse(toString()), child: child);
  }

  Widget height(Widget child) {
    return SizedBox(height: double.parse(toString()), child: child);
  }
}
