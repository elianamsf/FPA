import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:intellicode/components.dart';

class CommitsPage extends StatefulWidget {
  const CommitsPage({super.key, required this.title});
  final String title;
  @override
  State<CommitsPage> createState() => _CommitsPageState();
}

class _CommitsPageState extends State<CommitsPage> {
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
      body: ListView.builder(
          itemCount: 20,
          itemBuilder: (context, index) {
            return Card(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: ListTile(
                  title:
                      Text('Commit $index', style: TextStyle(fontSize: 22.0)),
                  subtitle: Text('Clique para mais detalhes',
                      style: TextStyle(fontSize: 22.0)),
                  leading: Icon(Icons.notifications),
                  onTap: () => Navigator.of(context).pushNamed('/commit'),
                ),
              ),
            );
          }),
    );
  }
}
