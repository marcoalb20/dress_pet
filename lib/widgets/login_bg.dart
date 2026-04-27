import 'package:flutter/material.dart';

class LoginBg extends StatelessWidget {
  const LoginBg({super.key});

  @override
  Widget build(BuildContext context) {
    return Positioned.fill(
      child: Image.asset(
        'assets/img/interfaces/bg-image.png',
        fit: BoxFit.cover,
      ),
    );
  }
}
