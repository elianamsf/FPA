import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: SizedBox(
        width: double.infinity,
        height: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              decoration: InputDecoration(
                label: Text('E-mail'),
                border: OutlineInputBorder(),
              ),
            ),
            TextField(
              obscureText: true,
              decoration: InputDecoration(
                label: Text('Senha'),
                border: OutlineInputBorder(),
              ),
            )
          ],
        ),
      ),
    );
  }
}
