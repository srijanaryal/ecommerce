import 'package:flutter/material.dart';

import '../models/product_model.dart';

class ProductCard extends StatelessWidget {
  final Product product;
  const ProductCard({
    Key? key,
    required this.product,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: MediaQuery.of(context).size.width / 2.5,
          height: 150,
          child: Image.network(
            product.imageUrl,
            fit: BoxFit.cover,
          ),
        ),
        Positioned(
          top: 80,
          child: Container(
            width: MediaQuery.of(context).size.width / 2.5 - 15,
            height: 80,
            decoration: BoxDecoration(color: Colors.white.withAlpha(100)),
            child: Expanded(
              child: Row(children: [
                Expanded(
                  flex: 1,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        product.name,
                        style: TextStyle(
                            color: Colors.black, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        '${product.price}',
                        style: TextStyle(
                            color: Colors.pink, fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                ),
                IconButton(
                    color: Colors.pink,
                    onPressed: () {},
                    icon: Icon(Icons.add)),
              ]),
            ),
          ),
        )
      ],
    );
  }
}
