import 'package:flutter/material.dart';
import '/app.dart';
import '/imports.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await sharedPreferences.loadPreferences();

  runApp(const App());
}
