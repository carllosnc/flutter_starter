import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '/app.dart';
import '/core/themes/basic.theme.dart';

void main(List<String> args) {
  WidgetsFlutterBinding.ensureInitialized();

  SystemChrome.setSystemUIOverlayStyle(
    const SystemUiOverlayStyle(
      systemNavigationBarColor: Colors.black,
      statusBarColor: primaryColorShades,
    ),
  );

  runApp(const App());
}
