import 'package:flutter/material.dart';

class Product {
  final String name;
  final String image;
  final double price;

  Product({required this.name, required this.image, required this.price});
}

class favorit extends StatelessWidget {
  final List<Product> products = [
    Product(name: "Jaket A", image: "images/jaket.jpg", price: 100.0),
    Product(name: "Jaket B", image: "images/kaos.jpg", price: 120.0),
    Product(name: "Jaket C", image: "images/kaos.jpg", price: 90.0),
    Product(name: "Jaket D", image: "images/kaos.jpg", price: 80.0),
    Product(name: "Jaket E", image: "images/kaos.jpg", price: 110.0),
    Product(name: "Jaket F", image: "images/kaos.jpg", price: 95.0),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView.builder(
        itemCount: products.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisSpacing: 10.0,
          crossAxisSpacing: 10.0,
        ),
        itemBuilder: (BuildContext context, int index) {
          return _buildProductItem(context, products[index]);
        },
      ),
    );
  }

  Widget _buildProductItem(BuildContext context, Product product) {
    return Card(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
            child: Image.asset(
              product.image,
              fit: BoxFit.cover, // Sesuaikan gambar dengan ukuran kontainer
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  product.name,
                  style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 4.0),
                Text(
                  '\$${product.price.toStringAsFixed(2)}',
                  style: TextStyle(fontSize: 14.0, color: Colors.grey),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: favorit(),
  ));
}
