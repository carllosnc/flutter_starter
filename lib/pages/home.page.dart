import 'package:flutter/material.dart';
import 'package:flutter_starter/domain/entities/address/address.dart';

import '../domain/entities/user/user.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    User user = User(
      name: 'foo',
      email: 'foo@gmail.com',
      address: Address(
        street: '1381 Imituw Extension',
        number: '902',
        code: '2323-2323',
        city: 'Fonbikun',
      ),
    );

    print(user.toJson());

    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter Starter'),
      ),
      body: const Center(
        child: Text(
          '🍎',
          style: TextStyle(fontSize: 50),
        ),
      ),
    );
  }
}
