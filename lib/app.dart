import 'package:flutter/material.dart';
import 'imports.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      theme: lightTheme(),
      darkTheme: darkTheme(),
      debugShowCheckedModeBanner: false,
      routerConfig: router,
    );
  }
}
