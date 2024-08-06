import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens/ListViewBuilder.dart';
import 'package:flutter_application_1/screens/Week1.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Listviewbuilder(),
    );
  }
}