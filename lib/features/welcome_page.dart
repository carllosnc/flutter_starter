import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '/imports.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SizedBox(
        width: double.infinity,
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 20,
            vertical: 70,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.center,
            spacing: 20,
            children: [
              "Flutter Starter".welcomeTitle,
              200.width(
                "Start".button(() {
                  WelcomePreference.firstTime();
                  context.go('/home');
                }),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
