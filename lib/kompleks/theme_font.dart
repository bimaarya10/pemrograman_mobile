import 'package:flutter/material.dart';

void main() {
  runApp(ThemeFont());
}


class ThemeFont extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Font Theme Demo',
      theme : ThemeData(
        fontFamily: 'Quicksand'
      ),
      home: Scaffold(
        appBar: AppBar(title: Text('Font Theme Demo')),
        body: Center(
          child: Text('Ini adalah font Quicksand'),
        ),  
      ),
    );
  }
}
