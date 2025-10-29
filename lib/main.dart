import 'package:flutter/material.dart';
import 'package:pemmob/custom_scroll.dart';
import 'package:pemmob/list_view.dart';
import 'package:pemmob/list_view_app.dart';
import 'package:pemmob/tugas1.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: CustomScrollApp(),
    );
  }
}
