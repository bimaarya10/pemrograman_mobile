import 'package:flutter/material.dart';

class LayoutContainer extends StatelessWidget {
  const LayoutContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Layout Container'),
        backgroundColor: Colors.pinkAccent,
        foregroundColor: Colors.white,
      ),
      body: Center(
        child: Container(
          padding: const EdgeInsets.symmetric(vertical: 1.0),
          margin: const EdgeInsets.symmetric(horizontal: 30.0),
          alignment: Alignment.center,
          width: 200,
          height: 200,
          decoration: BoxDecoration(
            border: Border.all(color: Colors.brown),
            borderRadius: BorderRadius.circular(0.0),
            color: Colors.blue.shade200,
          ),
          child: Text(
            "Hello World",
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 14),
          ),
        ),
      ),
    );
  }
}
