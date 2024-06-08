import 'package:flutter/material.dart';

Icon getCommitIcon(String? status) {
  Icon icon;
  switch (status) {
    case 'Clean':
      icon = Icon(
        Icons.check_circle_outline,
        size: 150.0,
      );
      break;

    case 'Buggy':
      icon = Icon(
        Icons.error_outline,
        size: 150.0,
      );
      break;

    case 'Not defined':
      icon = Icon(
        Icons.timelapse,
        size: 150.0,
      );
      break;

    default:
      icon = Icon(
        Icons.timelapse,
        size: 150.0,
      );
  }
  return icon;
}
