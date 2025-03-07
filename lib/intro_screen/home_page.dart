import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 136, 189, 233),
        title: Text(
          'ToyShop',
          style: TextStyle(color: Colors.white, fontSize: 20),
        ),
      ),
    );
  }
}
