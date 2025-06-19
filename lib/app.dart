import 'package:fabric/fabric_config.dart';
import 'package:flutter/material.dart';
import 'package:reactive_preferences/rp_mixin.dart';
import '/imports.dart';

class App extends StatefulWidget {
  const App({super.key});

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> with RPMixin {
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      theme: ThemePreference.value ? fabricConfig.getLightTheme() : fabricConfig.getDarkTheme(),
      debugShowCheckedModeBanner: false,
      routerConfig: router,
    );
  }
}
