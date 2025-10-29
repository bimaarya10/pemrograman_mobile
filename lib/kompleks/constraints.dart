import 'package:flutter/material.dart';
import 'package:pemmob/kompleks/theme_font.dart';
import 'package:pemmob/kompleks/theme_local.dart';
import 'package:pemmob/kompleks/theme_material.dart';

void main() {
  runApp(ThemeFont());
}

class ConstraintsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('Constraints Page')),
        body: Center(
          child: ConstrainedBox(
            constraints: BoxConstraints(
              minWidth: 200,
              minHeight: 100,
              maxWidth: 300,
              maxHeight: 150,
            ),
            child: Container(
              color: Colors.deepOrangeAccent,
              width: 250,
              height: 120,
              child: Center(child: Text('Contoh Constraint', style : TextStyle(color: Colors.white)),),
            ),
          ),
        ),
      ),
    );
  }
}
