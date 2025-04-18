import 'package:flutter/material.dart';
import 'package:reactive_preferences/rp_mixin.dart';
import '/imports.dart';

class SettingsPage extends StatefulWidget {
  const SettingsPage({super.key});

  @override
  State<SettingsPage> createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> with RPMixin {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: "Settings".pageTitle,
      ),
      body: ListView(
        children: [
          ListTile(
            title: ThemePreference.value ? "Light theme".label : "Dark theme".label,
            trailing: Switch(
              value: ThemePreference.value,
              thumbIcon: WidgetStateProperty.all(
                Icon(
                  ThemePreference.value //
                      ? Icons.light_mode
                      : Icons.dark_mode,
                  color: ThemePreference.value //
                      ? Theme.of(context).colorScheme.primary
                      : Theme.of(context).colorScheme.onPrimary,
                ),
              ),
              onChanged: (value) {
                ThemePreference.toggleTheme(value);
              },
            ),
          ),
        ],
      ),
    );
  }
}
