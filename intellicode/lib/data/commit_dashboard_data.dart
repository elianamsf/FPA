import 'package:flutter/material.dart';
import 'package:stack_chart/stack_chart.dart';

List<ChartData> chartDataBase = [
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
List<ChartLabel> chartLabelBase = [
  ChartLabel("Buggy", Colors.red),
  ChartLabel("Clean", Colors.green),
  ChartLabel("Not defined", Colors.blue),
];
