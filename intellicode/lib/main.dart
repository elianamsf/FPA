import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:intellicode/app_widget.dart';
import 'package:intellicode/utils/firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  runApp(AppWidget(title: 'IntelliCode'));
}
