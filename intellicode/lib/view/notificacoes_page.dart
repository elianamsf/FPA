import 'package:flutter/material.dart';
import 'package:intellicode/controller/commit_controller.dart';
import 'package:intellicode/data/commit_data.dart';
import 'package:intellicode/data/notificacao_data.dart';
import 'package:intellicode/model/commit.dart';
import 'package:intellicode/model/notification.dart';

import 'commit_page.dart';

class NotificacoesPage extends StatefulWidget {
  const NotificacoesPage({super.key, required this.title});

  final String title;

  @override
  State<NotificacoesPage> createState() => _NotificacoesPageState();
}

class _NotificacoesPageState extends State<NotificacoesPage> {
  List<Commit> commitList = commitListBase;
  late List<NotificationCommit> notificationList = notificationListBase;

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
                title: Text(notificationList[index].title()!,
                    style: TextStyle(fontSize: 22.0)),
                subtitle: Text(notificationList[index].subtitle()!,
                    style: TextStyle(fontSize: 22.0)),
                leading: const Icon(
                  Icons.notifications,
                  size: 30.0,
                ),
                onTap: () => Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => CommitPage(
                      commit: getCommitById(
                        notificationList[index].commit()!,
                      ),
                    ),
                  ),
                ),
              ),
            ));
          }),
    );
  }
}
