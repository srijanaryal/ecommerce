import 'package:ecommerce/models/models.dart';
import 'package:ecommerce/widgets/custom_app_bar.dart';
import 'package:ecommerce/widgets/custom_nav_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../../widgets/cart_product_card.dart';

class CartScreen extends StatelessWidget {
  static const String routeName = '/CartScreen';
  static Route route() {
    return MaterialPageRoute(
      settings: RouteSettings(name: routeName),
      builder: (context) => CartScreen(),
    );
  }

  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: custom_app_bar(
        title: 'Cart',
      ),
      bottomNavigationBar: CustomNavBar(),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 18.0, horizontal: 25),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Free Delivery from 20k',
                  style: TextStyle(
                      color: Colors.pink,
                      fontWeight: FontWeight.bold,
                      fontStyle: FontStyle.italic),
                ),
                MaterialButton(
                    color: Colors.pink,
                    onPressed: () {},
                    child: Text(
                      'Add More Items',
                      style: TextStyle(color: Colors.white),
                    ))
              ],
            ),
          ),
          CartProductCard(product: Product.products[0]),
        ],
      ),
    );
  }
}
