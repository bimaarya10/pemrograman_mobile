import 'package:flutter/material.dart';

class ListViewApp extends StatelessWidget {
  // const ListViewApp({super.key});

  final List<Map<String, String>> items = [
    // list data
    {"nama": "Apel", "harga": "Rp 5.000", "stok": "20"},
    {"nama": "Jeruk", "harga": "Rp 6.000", "stok": "15"},
    {"nama": "Mangga", "harga": "Rp 10.000", "stok": "30"},
    {"nama": "Pisang", "harga": "Rp 4.000", "stok": "40"},
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Toko Buah")),
      body: ListView.builder(
        itemCount: items.length,
        itemBuilder: (context, index)  {
          var item = items[index];
          return Card(
            margin: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
            child: ListTile(
              leading: const Icon(Icons.shopping_basket, color: Colors.red),
              title: Text(item["nama"]!),
              subtitle: Text("Harga: ${item["harga"]!}"),
              trailing: Text(
                "${item["stok"]!} pcs",
                style: TextStyle(fontSize: 15),
              ),
              onTap: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(content: Text("Anda memilih ${item["nama"]!}")),
                );
              },
            ),
          );
        },
      ),
    );
  }
}
