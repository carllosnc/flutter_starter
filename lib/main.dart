import 'dart:developer';

import 'package:flutter/material.dart';
import '/app.dart';
import '/imports.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await sharedPreferences.loadPreferences();

  log("lightTheme ${sharedPreferences.prefs.getBool('lightTheme')}");

  runApp(const App());
}
