import 'package:flutter/material.dart';
import '/core/core.dart';

class Welcome extends StatelessWidget {
  final Function onPressed;

  const Welcome({super.key, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/welcome.png'),
            fit: BoxFit.cover,
          ),
        ),
        child: const Center(
          child: Text(
            'Flutter starter',
            style: TextStyle(
              fontSize: 30,
            ),
          ),
        ),
      ),
      bottomNavigationBar: Container(
        padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
        child: FilledButton(
          onPressed: () {
            SharedPrefs().prefs.setBool('welcome', false);

            onPressed();
          },
          child: const Text('Start'),
        ),
      ),
    );
  }
}
