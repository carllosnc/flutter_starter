import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '/app.dart';
import '/settings/themes/basic.theme.dart';

void main(List<String> args) {
  WidgetsFlutterBinding.ensureInitialized();

  SystemChrome.setSystemUIOverlayStyle(
    const SystemUiOverlayStyle(
      systemNavigationBarColor: Colors.white,
      statusBarColor: primaryColorShades,
    ),
  );

  runApp(const App());
}
