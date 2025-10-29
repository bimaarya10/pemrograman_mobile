import 'package:flutter/material.dart';

class CustomScrollApp extends StatelessWidget {
  const CustomScrollApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Custom Scroll View")),
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            pinned: true,
            expandedHeight: 400,
            
            flexibleSpace: FlexibleSpaceBar(
              title: Text(
                'Toko Buah',
                style: TextStyle(color: Colors.white, fontSize: 24),
              ),
              background: Image.network(
                'https://images.unsplash.com/photo-1506744038136-46273834b3fb?ixlib=rb-4.0.3&auto=format&fit=crop&w=800&q=60',
                fit: BoxFit.cover,
              ),
            ),
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate((context, index) {
              return ListTile(
                leading: Icon(Icons.shopping_cart, color: Colors.red),
                title: Text("Item ${index + 1}"),
                subtitle: Text("Harga: Rp ${5000 + index * 1000}"),
              );
            }, childCount: 20),
          ),
          SliverGrid(
            delegate: SliverChildBuilderDelegate((context, index) {
              return Card(child: Center(child: Text("Grid Item ${index + 1}")));
            }, childCount: 10),
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,
              mainAxisSpacing: 10,
              crossAxisSpacing: 10,
            ),
          ),
        ],
      ),
    );
  }
}
