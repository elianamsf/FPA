import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String email = '';
  String password = '';

  final ButtonStyle raisedButtonStyle = ElevatedButton.styleFrom(
    foregroundColor: Colors.black87,
    backgroundColor: Colors.purple[300],
    /*minimumSize: Size(88, 36),
    padding: EdgeInsets.symmetric(horizontal: 16),
    shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.all(Radius.circular(2)),
    ),*/
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.purple,
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
                    color: Colors.purple[100],
                    child: Padding(
                      padding: const EdgeInsets.only(
                          left: 12, right: 12, top: 20, bottom: 12),
                      child: Column(
                        children: [
                          TextField(
                            onChanged: (text) => {email = text},
                            keyboardType: TextInputType.emailAddress,
                            decoration: const InputDecoration(
                              label: Text('E-mail'),
                              border: OutlineInputBorder(),
                            ),
                          ),
                          SizedBox(height: 10),
                          TextField(
                            onChanged: (text) => {password = text},
                            obscureText: true,
                            decoration: const InputDecoration(
                              label: Text('Password'),
                              border: OutlineInputBorder(),
                            ),
                          ),
                          SizedBox(height: 15),
                          Container(
                            width: double.infinity,
                            child: ElevatedButton(
                              onPressed: () {
                                print('OI');
                                Navigator.of(context).pushNamed('/home');
                              },
                              style: raisedButtonStyle,
                              child: Text(
                                'Entrar',
                                textAlign: TextAlign.center,
                                selectionColor: Colors.purple[900],
                              ),
                            ),
                          )
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
