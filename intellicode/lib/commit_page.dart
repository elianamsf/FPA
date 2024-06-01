import 'package:flutter/material.dart';
import 'package:intellicode/components.dart';

class CommitPage extends StatefulWidget {
  const CommitPage({super.key, required this.title});
  final String title;

  @override
  State<CommitPage> createState() => _CommitPageState();
}

class _CommitPageState extends State<CommitPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //drawer: CustomDrawer(),
      appBar: AppBar(
        title: Text('Commit'),
        //actions: const [CustomNotify()],
        shadowColor: Colors.red,
        backgroundColor: Colors.purple,
      ),
    );
  }
}
