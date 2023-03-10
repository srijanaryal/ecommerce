import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../blocs/cart/cart_bloc.dart';
import '../models/product_model.dart';

class CartProductCard extends StatelessWidget {
  final Product product;
  final int quantity;

  const CartProductCard(
      {super.key, required this.product, required this.quantity});

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
        SizedBox(
          width: 10,
        ),
        BlocBuilder<CartBloc, CartState>(builder: (context, state) {
          if (state is CartLoading) {
            return CircularProgressIndicator();
          }

          if (state is CartLoaded) {
            return Row(
              children: [
                IconButton(
                    onPressed: () {
                      context.read<CartBloc>().add(CartProductAdded(product));
                    },
                    icon: Icon(Icons.add_circle)),
                Text(
                  '1',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                ),
                IconButton(onPressed: () {}, icon: Icon(Icons.remove_circle)),
                Text(
                  '$quantity',
                  style: TextStyle(color: Colors.red),
                )
              ],
            );
          } else {
            return Text('lauda');
          }
        })
      ],
    );
  }
}
