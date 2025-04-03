import 'package:flutter/material.dart';

class _CounterState extends ChangeNotifier {
  num value = 0;

  increment() {
    value++;
    notifyListeners();
  }

  decrement() {
    value--;
    notifyListeners();
  }
}

var themeState = _CounterState();
