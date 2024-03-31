import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter Starter'),
      ),
      body: const Center(
        child: Text('🍎', style: TextStyle(fontSize: 50)),
      ),
    );
  }
}
