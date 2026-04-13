class Product {
  final String name;
  final double price;

  Product({required this.name, required this.price});
}

List<Product> products = [
  Product(name: "iPhone 15 Pro", price: 999),
  Product(name: "MacBook Air M3", price: 1299),
  Product(name: "iPad Pro", price: 799),
  Product(name: "Apple Watch Ultra", price: 749),
];