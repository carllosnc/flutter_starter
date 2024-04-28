import 'package:flutter/material.dart';
import '/imports.dart';

class SettingsPage extends StatefulWidget {
  const SettingsPage({super.key});

  @override
  State<SettingsPage> createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  late bool _lightTheme;

  @override
  void initState() {
    super.initState();
    _lightTheme = themeNotifier.lightTheme.value;
  }

  void changeThemeHandle(bool value) {
    setState(() {
      themeNotifier.setLightTheme(value);
      _lightTheme = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Settings",
          style: TextStyle(fontSize: 18),
        ),
      ),
      body: ListView(
        children: [
          ListTile(
            title: Text(_lightTheme ? "Light theme" : "Dark theme"),
            trailing: Switch(
              value: _lightTheme,
              thumbIcon: MaterialStateProperty.all(
                Icon(
                  _lightTheme //
                      ? Icons.light_mode
                      : Icons.dark_mode,
                  color: _lightTheme //
                      ? Theme.of(context).colorScheme.primary
                      : Theme.of(context).colorScheme.onPrimary,
                ),
              ),
              onChanged: changeThemeHandle,
            ),
          ),
          const Divider(height: 1)
        ],
      ),
    );
  }
}
