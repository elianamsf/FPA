import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:intellicode/app_controller.dart';
import 'package:intellicode/components.dart';
import 'package:intellicode/login_page.dart';
import 'package:intellicode/profile_page.dart';
import 'package:stack_chart/stack_chart.dart';

class MacStackedChart extends StatelessWidget {
  const MacStackedChart({super.key});

  /// This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Macincode Stack Chart',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
    );
  }
}

class HomePage extends StatefulWidget {
  /// Default Constructor for MyHomePage Class
  const HomePage({super.key, required this.title, required this.user});
  final String title;
  final User user;

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<ChartData> chartData = [
    ChartData("2023-02-12 10:00:00", "2023-02-12 11:00:00", [
      "Buggy",
      "Clean",
      "Buggy",
      "Clean",
      "Not defined",
      "Not defined",
    ]),
    ChartData("2023-02-13 11:00:00", "2023-02-13 12:00:00", [
      "Buggy",
      "Clean",
      "Clean",
      "Not defined",
      "Buggy",
      "Not defined",
    ]),
    ChartData("2023-02-14 12:00:00", "2023-02-14 13:00:00", [
      "Buggy",
      "Clean",
      "Not defined",
      "Clean",
      "Buggy",
      "Not defined",
    ]),
    ChartData("2023-02-15 13:00:00", "2023-02-15 14:00:00", [
      "Buggy",
      "Not defined",
      "Clean",
      "Buggy",
      "Clean",
      "Not defined",
    ]),
    ChartData("2023-02-16 14:00:00", "2023-02-16 15:00:00", [
      "Buggy",
      "Clean",
      "Clean",
      "Not defined",
      "Buggy",
      "Not defined",
    ]),
    ChartData("2023-02-17 15:00:00", "2023-02-17 16:00:00", [
      "Buggy",
      "Clean",
      "Not defined",
      "Not defined",
      "Buggy",
      "Clean",
    ]),
    ChartData("2023-02-18 10:00:00", "2023-02-18 11:00:00", [
      "Buggy",
      "Clean",
      "Buggy",
      "Clean",
      "Not defined",
      "Not defined",
    ]),
    ChartData("2023-02-19 11:00:00", "2023-02-19 12:00:00", [
      "Buggy",
      "Clean",
      "Clean",
      "Not defined",
      "Buggy",
      "Not defined",
    ]),
    ChartData("2023-02-20 12:00:00", "2023-02-20 13:00:00", [
      "Buggy",
      "Clean",
      "Not defined",
      "Clean",
      "Buggy",
      "Not defined",
    ]),
    ChartData("2023-02-21 13:00:00", "2023-02-21 14:00:00", [
      "Buggy",
      "Not defined",
      "Clean",
      "Buggy",
      "Clean",
      "Not defined",
    ]),
    ChartData("2023-02-22 14:00:00", "2023-02-22 15:00:00", [
      "Buggy",
      "Clean",
      "Clean",
      "Not defined",
      "Buggy",
      "Not defined",
    ]),
    ChartData("2023-02-23 15:00:00", "2023-02-23 16:00:00", [
      "Buggy",
      "Clean",
      "Not defined",
      "Not defined",
      "Buggy",
      "Clean",
    ]),
  ];
  List<ChartLabel> chartLabel = [
    ChartLabel("Buggy", Colors.red),
    ChartLabel("Clean", Colors.green),
    ChartLabel("Not defined", Colors.blue),
  ];

  ChartText chartText = ChartText("1 Commit", Colors.amber);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const CircleAvatar(
              radius: 50.0,
              backgroundImage: NetworkImage(
                "https://images.unsplash.com/photo-1573164574001-518958d9baa2?q=80&w=2069&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
              ),
            ),
            const SizedBox(
              height: 5.0,
            ),
            const Text(
              "Maria da Silva",
              style: TextStyle(
                fontSize: 22.0,
                fontWeight: FontWeight.w800,
              ),
            ),
            const SizedBox(
              height: 5.0,
            ),
            const Text(
              "Software Engenieer",
              style: TextStyle(
                fontSize: 16.0,
                fontWeight: FontWeight.w400,
              ),
            ),
            const SizedBox(
              height: 5.0,
            ),
            ListTile(
              leading: Icon(Icons.home),
              title: Text('Inicio'),
              subtitle: Text('Tela de início'),
              onTap: () async {
                Navigator.of(context).pushReplacement(
                  MaterialPageRoute(
                      builder: (context) =>
                          HomePage(title: 'IntelliCode', user: widget.user)),
                );
              },
            ),
            ListTile(
                leading: Icon(Icons.person),
                title: Text('Perfil'),
                subtitle: Text('Informações Pessoais'),
                onTap: () async {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                        builder: (context) => ProfilePage(user: widget.user)),
                  );
                }),
            ListTile(
              leading: Icon(Icons.commit),
              title: Text('Commits'),
              subtitle: Text('Status dos Commits'),
              onTap: () => Navigator.of(context).pushNamed('/commits'),
            ),
            ListTile(
              leading: Icon(Icons.notifications),
              title: Text('Notificaçoes'),
              subtitle: Text('Histórico de Notificações'),
              onTap: () => Navigator.of(context).pushNamed('/notificacoes'),
            ),
            ListTile(
                leading: Icon(Icons.mode_night),
                title: Text('Modo escuro'),
                subtitle: Text('Alternar em modo escuro ou claro'),
                onTap: () => AppController.instance.changeTheme()),
            ListTile(
              leading: Icon(Icons.logout),
              title: Text('Sair'),
              subtitle: Text('Finalizar Sessão'),
              onTap: () async {
                FirebaseAuth.instance.signOut();
                Navigator.of(context).pushReplacement(
                  MaterialPageRoute(builder: (context) => LoginPage()),
                );
              },
            )
          ],
        ),
      ),
      appBar: AppBar(
          title: Text(widget.title),
          centerTitle: true,
          actions: const [CustomNotify()],
          shadowColor: Colors.red,
          backgroundColor: Colors.purple),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            MacStackChart(
              chartTitle: "Status dos Commits",
              dateFormat: "EEE, MMM d, yy    ",
              chartData: chartData,
              chartLabel: chartLabel,
              containerHeight: MediaQuery.of(context).size.height * 0.035,
              containerWidth: MediaQuery.of(context).size.width * 0.05,
              chartText: chartText,
              backgroundColor: Colors.transparent,
              chartBackgroundColor: Colors.white,
              style: const TextStyle(
                color: Colors.black,
                fontSize: 20.0,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
