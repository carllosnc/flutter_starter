import 'package:flutter/material.dart';
import 'imports/app.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      theme: lightTheme(),
      debugShowCheckedModeBanner: false,
      routerConfig: router,
    );
  }
}
