import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:vw/vw.dart';
import '/imports.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      extendBody: true,
      body: VWColumn(
        padding: const EdgeInsets.fromLTRB(30, 0, 30, 30),
        verticalAlignment: MainAxisAlignment.end,
        horizontalAlignment: CrossAxisAlignment.center,
        children: [
          const Text(
            'Welcome to Flutter starter',
            style: TextStyle(fontSize: 25),
          ),
          const SizedBox(height: 20),
          VWButton(
            label: 'Let\'s go',
            onTap: () {
              sharedPreferences.prefs.setBool('welcome', false);
              context.go('/home');
            },
          )
        ],
      ),
    );
  }
}
