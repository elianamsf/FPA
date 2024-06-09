import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:intellicode/controller/app_controller.dart';
import 'package:intellicode/view/components.dart';
import 'package:intellicode/data/commit_dashboard_data.dart';
import 'package:intellicode/view/login_page.dart';
import 'package:intellicode/view/profile_page.dart';
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
  List<ChartData> chartData = chartDataBase;
  List<ChartLabel> chartLabel = chartLabelBase;

  ChartText chartText = ChartText("1 Commit", Colors.amber);

  late User _currentUser;

  @override
  void initState() {
    _currentUser = widget.user;
    super.initState();
  }

  bool _isSigningOut = false;

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
            Text(
              '${_currentUser.displayName}',
              style: Theme.of(context).textTheme.bodyLarge,
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
              leading: Icon(
                Icons.home,
                size: 30.0,
              ),
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
                leading: Icon(
                  Icons.person,
                  size: 30.0,
                ),
                title: Text('Perfil'),
                subtitle: Text('Ver informações Pessoais'),
                onTap: () async {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                        builder: (context) => ProfilePage(user: widget.user)),
                  );
                }),
            ListTile(
              leading: Icon(
                Icons.commit,
                size: 30.0,
              ),
              title: Text('Commits'),
              subtitle: Text('Status dos Commits'),
              onTap: () => Navigator.of(context).pushNamed('/commits'),
            ),
            ListTile(
              leading: Icon(
                Icons.notifications,
                size: 30.0,
              ),
              title: Text('Notificaçoes'),
              subtitle: Text('Histórico de Notificações'),
              onTap: () => Navigator.of(context).pushNamed('/notificacoes'),
            ),
            ListTile(
                leading: Icon(
                  Icons.mode_night,
                  size: 30.0,
                ),
                title: Text('Modo escuro'),
                subtitle: Text('Alternar em modo escuro ou claro'),
                onTap: () => AppController.instance.changeTheme()),
            ListTile(
              leading: Icon(
                Icons.logout,
                size: 30.0,
              ),
              title: Text('Sair'),
              subtitle: Text('Finalizar Sessão'),
              onTap: () async {
                setState(() {
                  _isSigningOut = true;
                });
                await FirebaseAuth.instance.signOut();
                setState(() {
                  _isSigningOut = false;
                });
                Navigator.of(context).pushReplacement(
                  MaterialPageRoute(
                    builder: (context) => LoginPage(),
                  ),
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
