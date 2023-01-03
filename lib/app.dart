import 'package:flutter/material.dart';
import '/routes/router.dart';
import '/settings/themes/basic.theme.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      theme: basicTheme,
      debugShowCheckedModeBanner: false,
      routerConfig: router,
    );
  }
}
