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
      home: const MyHomePage(title: 'Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  /// Default Constructor for MyHomePage Class
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
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
  ];

  /// The code `List<ChartLabel> chartLabel = [ChartLabel("Male", Colors.red),
  /// ChartLabel("Female", Colors.green),
  /// ChartLabel("Transgender", Colors.yellow), ];
  /// ` is creating a list of `ChartLabel` objects.
  ///
  /// Each `ChartLabel` object represents a label for the stack chart
  /// and consists of a label text and a color. In this case, the list contains
  /// three `ChartLabel` objects with labels "Male", "Female", and "Transgender",
  /// and corresponding colors red, green, and yellow respectively. These
  /// labels will be used to display the legend for the stack chart.
  /// dynamicColors: true
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
              dateFormat: "h a",
              chartData: chartData,
              chartLabel: chartLabel,
              containerHeight: MediaQuery.of(context).size.height * 0.035,
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
