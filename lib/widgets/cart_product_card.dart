import 'package:flutter/material.dart';

import '../models/product_model.dart';

class CartProductCard extends StatelessWidget {
  final Product product;

  const CartProductCard({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Image.network(
          product.imageUrl,
          height: 95,
          width: 85,
          fit: BoxFit.cover,
        ),
        SizedBox(
          width: 20,
        ),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                product.name,
                style: TextStyle(
                    color: Colors.pink,
                    fontSize: 17,
                    fontWeight: FontWeight.bold),
              ),
              Text('Rs ${product.price}'),
            ],
          ),
        ),
        Row(
          children: [
            IconButton(onPressed: () {}, icon: Icon(Icons.add_circle)),
            Text(
              '1',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
            ),
            IconButton(onPressed: () {}, icon: Icon(Icons.remove_circle))
          ],
        )
      ],
    );
  }
}
