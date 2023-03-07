import 'package:ecommerce/widgets/custom_app_bar.dart';
import 'package:ecommerce/widgets/custom_nav_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class ProductScreen extends StatelessWidget {
  static const String routeName = '/';
  static Route route() {
    return MaterialPageRoute(
      settings: RouteSettings(name: routeName),
      builder: (context) => ProductScreen(),
    );
  }

  const ProductScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: custom_app_bar(
        title: 'ProductScreen',
      ),
      bottomNavigationBar: CustomNavBar(),
    );
  }
}
