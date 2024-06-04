import 'package:flutter/material.dart';

class NotificacoesPage extends StatefulWidget {
  const NotificacoesPage({super.key, required this.title});

  final String title;

  @override
  State<NotificacoesPage> createState() => _NotificacoesPageState();
}

class _NotificacoesPageState extends State<NotificacoesPage> {
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
                  title: Text('Notificação $index',
                      style: TextStyle(fontSize: 22.0)),
                  subtitle: const Text('Clique para mais detalhes',
                      style: TextStyle(fontSize: 22.0)),
                  leading: const Icon(Icons.notifications),
                  onTap: () => Navigator.of(context).pushNamed('/notificacao'),
                ),
              ),
            );
          }),
    );
  }
}
