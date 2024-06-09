import 'package:flutter/material.dart';
import 'package:intellicode/data/commit_data.dart';
import 'package:intellicode/model/commit.dart';

Icon getCommitIcon(String? status) {
  Icon icon;
  switch (status) {
    case 'Clean':
      icon = const Icon(
        Icons.check_circle_outline,
        size: 150.0,
      );
      break;

    case 'Buggy':
      icon = const Icon(
        Icons.error_outline,
        size: 150.0,
      );
      break;

    case 'Not defined':
      icon = const Icon(
        Icons.timelapse,
        size: 150.0,
      );
      break;

    default:
      icon = const Icon(
        Icons.timelapse,
        size: 150.0,
      );
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
