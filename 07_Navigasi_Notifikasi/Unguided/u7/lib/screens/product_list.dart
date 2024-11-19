import 'package:flutter/material.dart';
import '../models/product.dart';
import 'product_detail.dart';

class ProductListScreen extends StatelessWidget {
  final List<Product> products = [
    Product(
      id: '1',
      name: 'Produk A',
      description: 'Deskripsi produk A',
      price: 100.0,
      imageUrl: 'https://via.placeholder.com/150',
    ),
    Product(
      id: '2',
      name: 'Produk B',
      description: 'Deskripsi produk B',
      price: 200.0,
      imageUrl: 'https://via.placeholder.com/150',
    ),
  ];

  ProductListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Daftar Produk'),
      ),
      body: ListView.builder(
        itemCount: products.length,
        itemBuilder: (context, index) {
          final product = products[index];
          return ListTile(
            leading: Image.network(product.imageUrl),
            title: Text(product.name),
            subtitle: Text('\$${product.price}'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ProductDetailScreen(product: product),
                ),
              );
            },
          );
        },
      ),
    );
  }
}
