import 'package:flutter/material.dart';

class SplashContainer extends StatelessWidget {
  const SplashContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 84,
      height: 84,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: Colors.white.withOpacity(0.16),
      ),
      child: const Center(
        child: Text(
          '🩺',
          style: TextStyle(fontSize: 50, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
