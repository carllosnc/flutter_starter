import 'package:flutter/material.dart';
import '/app.dart';
import '/imports/app.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await SharedPrefs().loadPreferences();

  runApp(const App());
}
