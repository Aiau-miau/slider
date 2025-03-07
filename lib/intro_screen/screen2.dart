import 'package:flutter/material.dart';

class Screen2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color.fromARGB(255, 189, 170, 239),
      child: Center(
        child: Text(
          'Do you want buy a toy?',
          style: TextStyle(color: Colors.white, fontSize: 24),
        ),
      ),
    );
  }
}
