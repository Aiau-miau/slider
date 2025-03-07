import 'package:flutter/material.dart';

class Screen3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color.fromARGB(255, 186, 231, 134),
      child: Center(
        child: Text(
          'First register for buy a toy',
          style: TextStyle(color: Colors.white, fontSize: 24),
        ),
      ),
    );
  }
}
