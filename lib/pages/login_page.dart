import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Center(
        child: Text("Login page",
        style: TextStyle(
          fontSize: 20,
          color: Colors.pink,
          fontWeight: FontWeight.bold,
        ),
        ),
      ),
    );
  }
}
