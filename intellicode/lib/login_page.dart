import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String email = '';
  String password = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: SizedBox(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            child: Padding(
              padding: EdgeInsets.all(8.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 200,
                    height: 200,
                    child: Image.asset('assets/images/logo1.jpg'),
                  ),
                  Card(
                    child: Padding(
                      padding: const EdgeInsets.only(
                          left: 12, right: 12, top: 20, bottom: 12),
                      child: Column(
                        children: [
                          TextField(
                            onChanged: (text) => {email = text},
                            keyboardType: TextInputType.emailAddress,
                            decoration: InputDecoration(
                              label: Text('E-mail'),
                              border: OutlineInputBorder(),
                            ),
                          ),
                          SizedBox(height: 10),
                          TextField(
                            onChanged: (text) => {password = text},
                            obscureText: true,
                            decoration: InputDecoration(
                              label: Text('Password'),
                              border: OutlineInputBorder(),
                            ),
                          ),
                          SizedBox(height: 15),
                          ElevatedButton(
                              onPressed: () {
                                Navigator.of(context).pushNamed('/home');
                              },
                              child: Text('Entrar'))
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ));
  }
}
