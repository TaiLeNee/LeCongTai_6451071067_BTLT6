import 'package:flutter/material.dart';
import '../models/product_model.dart';

class DetailScreen extends StatelessWidget {
  final Product product;

  const DetailScreen({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Chi tiết sản phẩm")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(product.name, style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
            const SizedBox(height: 10),
            Text("Giá: \$${product.price}", style: const TextStyle(fontSize: 20, color: Colors.blueGrey)),
          ],
        ),
      ),
    );
  }
}