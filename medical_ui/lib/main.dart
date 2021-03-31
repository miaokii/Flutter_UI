import 'package:flutter/material.dart';
import 'package:medical_ui/constant.dart';
import 'package:medical_ui/pages/start_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Medical',
      theme: ThemeData(
          scaffoldBackgroundColor: mBackgroundColor,
          visualDensity: VisualDensity.adaptivePlatformDensity),
      home: StartScreen()
    );
  }
}
