import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '/core/core.dart';
import '/components/components.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool firstTime = SharedPrefs().prefs.getBool('welcome') ?? true;

  @override
  Widget build(BuildContext context) {
    if (firstTime) {
      return Welcome(
        onPressed: () {
          setState(() {
            firstTime = false;
          });
        },
      );
    }

    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter Starter'),
        actions: [
          IconButton(
            icon: const Icon(Icons.settings),
            onPressed: () => context.push('/settings'),
          ),
        ],
      ),
      body: const Center(
        child: Text('🍎', style: TextStyle(fontSize: 50)),
      ),
    );
  }
}
