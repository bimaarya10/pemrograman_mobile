import 'package:flutter/material.dart';

void main() {
  runApp(ThemeLocal2());
}

class ThemeLocal2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Satu Theme Dua Widget',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.indigo),
        useMaterial3: true,
        inputDecorationTheme: InputDecorationTheme(
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
          ),
          filled: true,
          fillColor: Colors.indigo.shade50,
          labelStyle: TextStyle(color: Colors.indigo.shade700),
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.indigo,
            foregroundColor: Colors.white,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
          ),
        ),
      ),
      home: ContohTheme2(),
    );
  }
}

class ContohTheme2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Dua Widget, Satu Theme')),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // TextField menggunakan inputDecorationTheme dari ThemeData
            TextField(
              decoration: InputDecoration(labelText: 'Masukkan Nama'),
            ),
            SizedBox(height: 20),

            // ElevatedButton menggunakan elevatedButtonTheme dari ThemeData
            ElevatedButton(
              onPressed: () {},
              child: Text('Simpan'),
            ),
          ],
        ),
      ),
    );
  }
}
