import 'package:flutter/material.dart';

class Product {
  final String name;
  final String image;
  final double price;
  final int quantity;

  Product({
    required this.name,
    required this.image,
    required this.price,
    required this.quantity,
  });
}

class belanja extends StatelessWidget {
  final List<Product> products = [
    Product(
        name: "Product 1", image: "images/jaket.jpg", price: 10.0, quantity: 5),
    Product(
        name: "Product 2", image: "images/jaket.jpg", price: 20.0, quantity: 3),
    Product(
        name: "Product 3", image: "images/jaket.jpg", price: 15.0, quantity: 7),
    Product(
        name: "Product 4", image: "images/jaket.jpg", price: 25.0, quantity: 2),
    Product(
        name: "Product 5", image: "images/jaket.jpg", price: 30.0, quantity: 4),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: products.length,
        itemBuilder: (BuildContext context, int index) {
          return _buildProductItem(context, products[index]);
        },
      ),
    );
  }

  Widget _buildProductItem(BuildContext context, Product product) {
    return Card(
      margin: EdgeInsets.all(8.0),
      child: ListTile(
        leading: Container(
          width: 30,
          height: 30,
          decoration: BoxDecoration(
            border: Border.all(color: Colors.grey),
          ),
          child: Image.asset(
            product.image,
            fit: BoxFit.cover,
          ),
        ),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(product.name),
            Row(
              children: [
                IconButton(
                  icon: Icon(Icons.remove),
                  onPressed: () {
                    // Logika pengurangan produk
                  },
                ),
                Text(
                  '${product.quantity}',
                  style: TextStyle(fontSize: 16.0),
                ),
                IconButton(
                  icon: Icon(Icons.add),
                  onPressed: () {
                    // Logika penambahan produk
                  },
                ),
              ],
            ),
          ],
        ),
        subtitle: Text('\$${product.price.toStringAsFixed(2)}'),
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: belanja(),
  ));
}
