import 'package:flutter/material.dart';
import 'package:intellicode/controller/app_controller.dart';
import 'package:intellicode/view/commits_page.dart';
import 'package:intellicode/view/login_page.dart';
import 'package:intellicode/view/notificacao_page.dart';
import 'package:intellicode/view/notificacoes_page.dart';

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
          '/commits': (context) => const CommitsPage(
                title: 'Commits',
              ),
          '/notificacoes': (context) => const NotificacoesPage(
                title: 'Notificações',
              ),
          '/notificacao': (context) => const NotificacaoPage(
                title: 'Notificação',
              )
        },
      ),
    );
  }
}
