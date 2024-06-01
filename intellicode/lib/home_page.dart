import 'package:flutter/material.dart';
import 'package:intellicode/components.dart';
import 'package:stack_chart/stack_chart.dart';

/// The main function runs the MacStackedChart widget as the root of the application.
/*
void main() {
  runApp(const MacStackedChart());
}

*/

/// The `MacStackedChart` class is the root widget of the application.
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
      home: const HomePage(title: 'Home Page'),
    );
  }
}

class HomePage extends StatefulWidget {
  /// Default Constructor for MyHomePage Class
  const HomePage({super.key, required this.title});
  final String title;

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
      drawer: CustomDrawer(),
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
              containerHeight: MediaQuery.of(context).size.height * 0.0100,
              containerWidth: MediaQuery.of(context).size.width * 0.05,
              chartText: chartText,
              backgroundColor: Colors.transparent,
              chartBackgroundColor: Colors.white,
              style: const TextStyle(
                color: Colors.black,
                fontSize: 12,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
