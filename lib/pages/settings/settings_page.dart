import 'package:flutter/material.dart';
import '/notifiers/notifiers.dart';

class SettingsPage extends StatefulWidget {
  const SettingsPage({super.key});

  @override
  State<SettingsPage> createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  bool _lightTheme = true;

  final ThemeNotifier _themeNotifier = ThemeNotifier();

  @override
  void initState() {
    super.initState();
    _lightTheme = _themeNotifier.lightTheme.value;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Settings')),
      body: ListView(
        children: [
          ListTile(
            title: Text(_lightTheme ? 'Light Theme' : 'Dark Theme'),
            trailing: Switch(
              value: _lightTheme,
              thumbIcon: MaterialStateProperty.all(
                Icon(
                  _lightTheme ? Icons.light_mode : Icons.dark_mode,
                  color: _lightTheme
                      ? Theme.of(context).colorScheme.primary
                      : Theme.of(context).colorScheme.onPrimary,
                ),
              ),
              onChanged: (bool value) {
                setState(() {
                  _themeNotifier.lightTheme.value = value;
                  _lightTheme = value;
                });
              },
            ),
          ),
          const Divider(height: 1)
        ],
      ),
    );
  }
}
