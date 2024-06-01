import 'package:flutter/material.dart';

class NotificacaoPage extends StatefulWidget {
  const NotificacaoPage({super.key, required this.title});

  final String title;

  @override
  State<NotificacaoPage> createState() => _NotificacaoPageState();
}

class _NotificacaoPageState extends State<NotificacaoPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //drawer: CustomDrawer(),
      appBar: AppBar(
        title: Text(widget.title),
        //actions: const [CustomNotify()],
        shadowColor: Colors.red,
        backgroundColor: Colors.purple,
      ),
    );
  }
}
