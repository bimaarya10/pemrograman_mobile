import 'package:flutter/material.dart';
import 'layout/layout_container.dart';
import 'layout/layout_row.dart';
import 'layout/layout_column.dart';
import 'layout/layout_expansible.dart';
import 'layout/layout_flexible.dart';
import 'layout/layout_stack.dart';

class Tugas1 extends StatefulWidget {
  const Tugas1({super.key});

  @override
  State<Tugas1> createState() => _Tugas1State();
}

class _Tugas1State extends State<Tugas1> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  void _decrementCounter() {
    setState(() {
      _counter--;
    });
  }

  void _reloadCounter() {
    setState(() {
      _counter = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Counter App'),
        backgroundColor: Colors.pinkAccent,
        foregroundColor: Colors.white,
        actions: [],
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(color: Colors.pinkAccent),
              child: Text(
                "Layout App",
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
            ),
            ListTile(
              leading: const Icon(Icons.view_compact),
              title: const Text('Container Layout'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const LayoutContainer(),
                  ),
                );
              },
            ),
            ListTile(
              leading: const Icon(Icons.view_column),
              title: const Text('Column Layout'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const LayoutColumn()),
                );
              },
            ),
            ListTile(
              leading: const Icon(Icons.view_week),
              title: const Text('Row Layout'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const LayoutRow()),
                );
              },
            ),
            ListTile(
              leading: const Icon(Icons.view_array),
              title: const Text('Flexible Layout'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const LayoutFlexible(),
                  ),
                );
              },
            ),
            ListTile(
              leading: const Icon(Icons.view_sidebar),
              title: const Text('Expansible Layout'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const LayoutExpansible(),
                  ),
                );
              },
            ),
            ListTile(
              leading: const Icon(Icons.view_day),
              title: const Text('Stack Layout'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const LayoutStack()),
                );
              },
            ),
          ],
        ),
      ),

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Counter', style: const TextStyle(fontSize: 20)),
            Text('$_counter', style: const TextStyle(fontSize: 36)),
          ],
        ),
      ),

      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            onPressed: _reloadCounter,
            backgroundColor: Colors.pinkAccent,
            foregroundColor: Colors.white,
            child: const Icon(Icons.replay),
          ),
          const SizedBox(width: 10),
          FloatingActionButton(
            onPressed: _decrementCounter,
            backgroundColor: Colors.pinkAccent,
            foregroundColor: Colors.white,
            child: const Icon(Icons.remove),
          ),
          const SizedBox(width: 10),
          FloatingActionButton(
            onPressed: _incrementCounter,
            backgroundColor: Colors.pinkAccent,
            foregroundColor: Colors.white,
            child: const Icon(Icons.add),
          ),
        ],
      ),
    );
  }
}
