import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:intellicode/components.dart';
import 'package:stack_chart/stack_chart.dart';

class HomePage extends StatefulWidget {
  late String name;
  late String job_title;
  late String profile;

  HomePage({super.key});

  @override
  State<HomePage> createState() {
    return HomePageState();
  }
}

class HomePageState extends State<HomePage> {
  List<ChartData> chartData = [
    ChartData("2023-02-12 10:00:00", "2023-02-12 11:00:00", [
      "male",
      "female",
      "male",
      "female",
      "transgender",
      "transgender",
    ]),
    ChartData("2023-02-12 11:00:00", "2023-02-12 12:00:00", [
      "male",
      "female",
      "female",
      "transgender",
      "male",
      "transgender",
    ]),
    ChartData("2023-02-12 12:00:00", "2023-02-12 13:00:00", [
      "male",
      "female",
      "transgender",
      "female",
      "male",
      "transgender",
    ]),
    ChartData("2023-02-12 13:00:00", "2023-02-12 14:00:00", [
      "male",
      "transgender",
      "female",
      "male",
      "female",
      "transgender",
    ]),
    ChartData("2023-02-12 14:00:00", "2023-02-12 15:00:00", [
      "male",
      "female",
      "female",
      "transgender",
      "male",
      "transgender",
    ]),
    ChartData("2023-02-12 15:00:00", "2023-02-12 16:00:00", [
      "male",
      "female",
      "transgender",
      "transgender",
      "male",
      "female",
    ]),
  ];

  List<ChartLabel> chartLabel = [
    ChartLabel("Male", Colors.red),
    ChartLabel("Female", Colors.green),
    ChartLabel("Transgender", Colors.yellow),
  ];

  ChartText chartText = ChartText("10 Minutes", Colors.amber);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: CustomDrawer(),
      appBar: AppBar(
        title: Text('IntelliCode'),
        actions: const [CustomNotify()],
        shadowColor: Colors.red,
        backgroundColor: Colors.purple,
      ),
      body: Stack(
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height,
            /*
            child: Image.asset('assets/images/git_branch.png',
                  fit: BoxFit.fitHeight)
            */
          ),
          Container(
            color: Colors.black.withOpacity(0.3),
          ),
          Row(
            children: [
              MacStackChart(
                chartTitle: "Bookings Stack Chart",
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
              )
            ],
          ),
        ],
      ),
    );
  }
}
