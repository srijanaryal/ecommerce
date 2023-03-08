import 'package:carousel_slider/carousel_slider.dart';
import 'package:ecommerce/models/category_model.dart';
import 'package:ecommerce/models/models.dart';
import 'package:ecommerce/screens/product/product_screen.dart';
import 'package:ecommerce/widgets/custom_app_bar.dart';
import 'package:ecommerce/widgets/custom_nav_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:ecommerce/widgets/hero_carousel_card.dart';

import '../widgets/product_card.dart';
import '../widgets/product_carousel.dart';
import '../widgets/section_title.dart';

class HomePage extends StatelessWidget {
  static const String routeName = '/';
  static Route route() {
    return MaterialPageRoute(
      settings: RouteSettings(name: routeName),
      builder: (context) => HomePage(),
    );
  }

  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: custom_app_bar(
        title: 'Jhakas Shopping',
      ),
      bottomNavigationBar: CustomNavBar(),
      body: Column(
        children: [
          Container(
            child: CarouselSlider(
              options: CarouselOptions(
                aspectRatio: 1.5,
                viewportFraction: 1,
                enlargeCenterPage: true,
              ),
              items: Category.categories
                  .map((Category) => HeroCarousel(
                        category: Category,
                        product: null,
                      ))
                  .toList(),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 8.0),
            child: SectionTitle(title: 'Recommended'),
          ),

          //For the Product Card

          ProductCarosuel(
            products: Product.products
                .where((Product) => Product.isRecommended)
                .toList(),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 8.0),
            child: SectionTitle(title: 'MOST POPULAR'),
          ),
          ProductCarosuel(
            products:
                Product.products.where((Product) => Product.isPopular).toList(),
          )
        ],
      ),
    );
  }
}
