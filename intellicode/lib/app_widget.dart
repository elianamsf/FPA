import 'package:flutter/material.dart';
import 'package:intellicode/app_controller.dart';
import 'package:intellicode/home_page.dart';
import 'package:intellicode/login_page.dart';

class AppWidget extends StatelessWidget {
  final String title;

  const AppWidget({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: AppController.instance,
      builder: (context, child) => MaterialApp(
        theme: ThemeData(
          primarySwatch: Colors.red,
          brightness: AppController.instance.isDartTheme
              ? Brightness.dark
              : Brightness.light,
        ),
        //home: HomePage(),
        home: LoginPage(),
      ),
    );
  }
}
