import 'package:flutter/material.dart';
import 'package:intellicode/data/commit_data.dart';
import 'package:intellicode/model/commit.dart';
import 'package:timelines/timelines.dart';

Icon getCommitIcon(String? status) {
  Icon icon;
  switch (status) {
    case 'Clean':
      icon = const Icon(Icons.check_circle_outline,
          size: 150.0, color: Colors.green);
      break;

    case 'Buggy':
      icon = const Icon(Icons.error_outline, size: 150.0, color: Colors.red);
      break;

    case 'Not defined':
      icon = const Icon(Icons.timelapse, size: 150.0, color: Colors.blue);
      break;

    default:
      icon = const Icon(Icons.timelapse, size: 150.0, color: Colors.blue);
  }
  return icon;
}

Commit getCommitById(String id) {
  late Commit commitOut;
  for (final commit in commitListBase) {
    if (commit.id() == id) {
      commitOut = commit;
      break;
    }
  }
  return commitOut;
}

getDataTimeline(String? status) {
  switch (status) {
    case 'Pushed':
      return OutlinedDotIndicator(
          color: Color(0xff6ad192),
          backgroundColor: Colors.green[600],
          child: Icon(
            Icons.check,
            color: Colors.white,
            size: 28.0,
          ));

    case 'Predicted':
      return OutlinedDotIndicator(
          color: Color(0xff6ad192),
          backgroundColor: Colors.green[600],
          child: Icon(
            Icons.check,
            color: Colors.white,
            size: 28.0,
          ));

    case 'Status Defined':
      return OutlinedDotIndicator(
          color: Color(0xff6ad192),
          backgroundColor: Colors.green[600],
          child: Icon(
            Icons.check,
            color: Colors.white,
            size: 28.0,
          ));

    case 'Under Analysis':
      return OutlinedDotIndicator(
          color: Colors.yellow,
          //borderWidth: 2.0,
          backgroundColor: Colors.yellow[900],
          child: Icon(
            Icons.sync,
            color: Colors.white,
            size: 28.0,
          ));

    case 'Clean':
      return OutlinedDotIndicator(
          color: Colors.green,
          backgroundColor: Colors.green[900],
          child: Icon(
            Icons.check_circle_outline,
            color: Colors.white,
            size: 28.0,
          ));

    case 'Buggy':
      return OutlinedDotIndicator(
          color: Colors.red,
          backgroundColor: Colors.red[900],
          child: Icon(
            Icons.error_outline,
            color: Colors.white,
            size: 28.0,
          ));

    case 'Not defined':
      return OutlinedDotIndicator(
          color: Colors.blue,
          backgroundColor: Colors.blue[900],
          child: Icon(
            Icons.timelapse,
            color: Colors.white,
            size: 28.0,
          ));

    default:
      return OutlinedDotIndicator(
          color: Colors.blue,
          backgroundColor: Colors.blue[900],
          child: Icon(
            Icons.timelapse,
            color: Colors.white,
            size: 28.0,
          ));
  }
}

getConectorTimeline(String? status) {
  switch (status) {
    case 'Pushed':
      return SolidLineConnector(color: Colors.green[600]);
    case 'Predicted':
      return SolidLineConnector(color: Colors.green[600]);
    case 'Status Defined':
      return SolidLineConnector(color: Colors.green[600]);
    case 'Under Analysis':
      return SolidLineConnector(color: Colors.yellow[900]);
    case 'Clean':
      return SolidLineConnector(color: Colors.green[900]);
    case 'Buggy':
      return SolidLineConnector(color: Colors.red[900]);
    case 'Not defined':
      return SolidLineConnector(color: Colors.blue[900]);
    default:
      return SolidLineConnector(color: Colors.blue[900]);
  }
}
