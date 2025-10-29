import 'package:flutter/material.dart';

class ListViewStat extends StatelessWidget {
  const ListViewStat({super.key});

  @override
  Widget build(BuildContext context) {
     return Scaffold(
      appBar: AppBar(title: Text("ListView dengan Children")),
      body: ListView(
        children: [
          Card(
            child: ListTile(
              leading: Icon(Icons.shopping_cart, color: Colors.red),
              title: Text("Apel"),
              subtitle: Text("Harga: Rp 5.000"),
              trailing: Text("20 pcs"),
              onTap: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(content: Text("Anda memilih Apel")),
                );
              },
            ),
          ),
          Card(
            child: ListTile(
              leading: Icon(Icons.shopping_cart, color: Colors.orange),
              title: Text("Jeruk"),
              subtitle: Text("Harga: Rp 6.000"),
              trailing: Text("15 pcs"),
              onTap: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(content: Text("Anda memilih Jeruk")),
                );
              },
            ),
          ),
          Card(
            child: ListTile(
              leading: Icon(Icons.shopping_cart, color: Colors.green),
              title: Text("Mangga"),
              subtitle: Text("Harga: Rp 10.000"),
              trailing: Text("30 pcs"),
              onTap: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(content: Text("Anda memilih Mangga")),
                );
              },
            ),
          ),
          Card(
            child: ListTile(
              leading: Icon(Icons.shopping_cart, color: Colors.yellow),
              title: Text("Pisang"),
              subtitle: Text("Harga: Rp 4.000"),
              trailing: Text("40 pcs"),
              onTap: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(content: Text("Anda memilih Pisang")),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
