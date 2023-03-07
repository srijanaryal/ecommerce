import 'package:equatable/equatable.dart';

class Product extends Equatable {
  final String name;
  final String category;
  final String imageUrl;
  final double price;
  final bool isRecommended;
  final bool isPopular;

  Product(this.name, this.category, this.imageUrl, this.price,
      this.isRecommended, this.isPopular);
  @override
  // TODO: implement props
  List<Object?> get props =>
      [name, category, imageUrl, price, isRecommended, isPopular];

  static List<Product> products = [
    Product(
        'iPhone 12 ',
        'Mobiles',
        'https://images.unsplash.com/photo-1591337676887-a217a6970a8a?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=580&q=80',
        12000,
        true,
        true),
    Product(
        'Samsung Galaxy S22',
        'Mobiles',
        'https://images.unsplash.com/photo-1644501635454-bb6be8e42e6a?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=432&q=80',
        22000,
        true,
        false),
    Product(
        '67W fast charger',
        'Accessories',
        'https://images.unsplash.com/photo-1517320069935-381614f8c1e5?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=867&q=80',
        800,
        false,
        true),
    Product(
        'Earpods',
        'Accessories',
        'https://images.unsplash.com/photo-1511300961358-669ca3ad05af?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80',
        800,
        false,
        true),
    Product(
        'Dell Inspiron Model 7',
        'Laptops',
        'https://images.unsplash.com/photo-1611078489935-0cb964de46d6?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1074&q=80',
        68000,
        true,
        false),
  ];
}
