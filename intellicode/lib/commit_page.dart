import 'package:flutter/material.dart';

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
      appBar: AppBar(
        title: const Text('Commit'),
        shadowColor: Colors.red,
        backgroundColor: Colors.purple,
      ),
    );
  }
}
