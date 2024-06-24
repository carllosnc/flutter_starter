import 'package:flutter/material.dart';
import '/app.dart';
import '/imports.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  //load shared preferences
  await sharedPreferences.loadPreferences();

  runApp(const App());
}
