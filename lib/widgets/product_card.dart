import 'package:ecommerce/models/cart_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../blocs/cart/cart_bloc.dart';
import '../models/product_model.dart';

class ProductCard extends StatelessWidget {
  final Product product;
  final bool isWishlist;
  const ProductCard({
    Key? key,
    required this.product,
    this.isWishlist = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, '/product', arguments: product);
      },
      child: Stack(
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
                  BlocBuilder<CartBloc, CartState>(builder: (context, state) {
                    if (state is CartLoading) {
                      return Center(
                        child: CircularProgressIndicator(),
                      );
                    }
                    if (state is CartLoaded) {
                      return Expanded(
                          child: IconButton(
                        icon: Icon(Icons.add),
                        onPressed: () {
                          context
                              .read<CartBloc>()
                              .add(CartProductAdded(product));
                        },
                      ));
                    } else {
                      return Text('Something went Wrong');
                    }
                  }),
                  isWishlist
                      ? Expanded(
                          child: IconButton(
                              color: Colors.red,
                              onPressed: () {},
                              icon: Icon(
                                Icons.delete,
                                size: 30,
                              )),
                        )
                      : SizedBox(),
                ]),
              ),
            ),
          )
        ],
      ),
    );
  }
}
