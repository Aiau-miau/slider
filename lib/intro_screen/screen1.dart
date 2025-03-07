import 'package:flutter/material.dart';

class Screen1 extends StatelessWidget {
  const Screen1({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color.fromARGB(252, 230, 165, 212),
      child: Center(
        child: Stack(
          alignment: Alignment.center,
          children: [
            Image.asset('lib/image/aiau.png', width: 160, height: 160),
            Positioned(
              top: -9,
              child: Text(
                'Hello Kitty',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
