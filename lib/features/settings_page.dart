import 'package:flutter/material.dart';
import '/imports.dart';

class SettingsPage extends StatefulWidget {
  const SettingsPage({super.key});

  @override
  State<SettingsPage> createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> with SharedState {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: "Settings".pageTitle,
      ),
      body: ListView(
        children: [
          ListTile(
            title: themeState.lightTheme ? "Light theme".label : "Dark theme".label,
            trailing: Switch(
              value: themeState.lightTheme,
              thumbIcon: WidgetStateProperty.all(
                Icon(
                  themeState.lightTheme //
                      ? Icons.light_mode
                      : Icons.dark_mode,
                  color: themeState.lightTheme //
                      ? Theme.of(context).colorScheme.primary
                      : Theme.of(context).colorScheme.onPrimary,
                ),
              ),
              onChanged: (value) {
                themeState.setLightTheme(value);
              },
            ),
          ),
        ],
      ),
    );
  }
}
