import 'package:flutter/material.dart';
import '/imports.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: themeNotifier.lightTheme,
      builder: (BuildContext context, bool value, child) {
        return MaterialApp.router(
          theme: appTheme(isLight: value),
          debugShowCheckedModeBanner: false,
          routerConfig: router,
        );
      },
    );
  }
}
