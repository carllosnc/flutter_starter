import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:vw/vw.dart';
import '/imports/app.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

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
        child: Padding(
          padding: const EdgeInsets.fromLTRB(30, 0, 30, 30),
          child: SizedBox(
            width: double.infinity,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
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
          ),
        ),
      ),
    );
  }
}
