import 'package:flutter/material.dart';
import 'package:intellicode/model/commit.dart';
import 'package:intellicode/view/notificacao_page.dart';

import 'commit_page.dart';

class NotificacoesPage extends StatefulWidget {
  const NotificacoesPage({super.key, required this.title});

  final String title;

  @override
  State<NotificacoesPage> createState() => _NotificacoesPageState();
}

class _NotificacoesPageState extends State<NotificacoesPage> {
  late Commit commit;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        shadowColor: Colors.red,
        backgroundColor: Colors.purple,
      ),
      body: ListView.builder(
          itemCount: 20,
          itemBuilder: (context, index) {
            return Card(
                child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: ListTile(
                title: Text('Notificação ${index + 1}',
                    style: TextStyle(fontSize: 22.0)),
                subtitle: const Text('Clique para mais detalhes',
                    style: TextStyle(fontSize: 22.0)),
                leading: const Icon(
                  Icons.notifications,
                  size: 30.0,
                ),
                onTap: () => Navigator.of(context).pushReplacement(
                  MaterialPageRoute(
                    builder: (context) => CommitPage(
                      commit: commit,
                    ),
                  ),
                ),
              ),
            ));
          }),
    );
  }
}
