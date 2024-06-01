import 'package:flutter/material.dart';
import 'package:intellicode/app_controller.dart';
import 'package:intellicode/commit_page.dart';
import 'package:intellicode/commits_page.dart';
import 'package:intellicode/dashboard_page.dart';
import 'package:intellicode/home_page.dart';
import 'package:intellicode/login_page.dart';
import 'package:intellicode/notificacao_page.dart';
import 'package:intellicode/notificacoes_page.dart';

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
        initialRoute: '/',
        routes: {
          '/': (context) => LoginPage(),
          '/home': (context) => MyHomePage(
                title: 'IntelliCode',
              ),
          '/commits': (context) => CommitsPage(),
          '/notificacoes': (context) => NotificacoesPage(),
          '/commit': (context) => CommitPage(),
          '/notificacao': (context) => NotificacaoPage()
        },
      ),
    );
  }
}
