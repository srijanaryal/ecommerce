import 'package:ecommerce/widgets/product_card.dart';
import 'package:flutter/material.dart';

import '../models/product_model.dart';

class ProductCarosuel extends StatelessWidget {
  final List<Product> products;
  const ProductCarosuel({
    Key? key,
    required this.products,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 150,
      child: ListView.builder(
          shrinkWrap: true,
          itemCount: products.length,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.only(left: 1.0),
              child: ProductCard(product: products[index]),
            );
          }),
    );
  }
}
