import 'package:flutter/material.dart';
import 'package:intellicode/model/commit.dart';
import 'package:intellicode/view/commit_page.dart';
import 'package:intellicode/data/commit_data.dart';

class CommitsPage extends StatefulWidget {
  const CommitsPage({super.key, required this.title});
  final String title;
  @override
  State<CommitsPage> createState() => _CommitsPageState();
}

class _CommitsPageState extends State<CommitsPage> {
  List<Commit> commitList = commitListBase;

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
                  title: Text('Commit ${commitList[index].title()!}',
                      style: TextStyle(fontSize: 22.0)),
                  subtitle: const Text('Clique para mais detalhes',
                      style: TextStyle(fontSize: 20.0)),
                  leading: const Icon(
                    Icons.commit,
                    size: 36.0,
                  ),
                  onTap: () => Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => CommitPage(
                        commit: commitList[index],
                      ),
                    ),
                  ),
                ),
              ),
            );
          }),
    );
  }
}
