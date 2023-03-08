import 'package:carousel_slider/carousel_slider.dart';
import 'package:ecommerce/models/models.dart';
import 'package:ecommerce/widgets/custom_app_bar.dart';
import 'package:ecommerce/widgets/custom_nav_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:ecommerce/widgets/widgets.dart';

class ProductScreen extends StatelessWidget {
  static const String routeName = '/product';
  static Route route({required Product product}) {
    return MaterialPageRoute(
      settings: RouteSettings(name: routeName),
      builder: (context) => ProductScreen(product: product),
    );
  }

  final Product product;

  const ProductScreen({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: custom_app_bar(
        title: product.name,
      ),
      bottomNavigationBar: BottomAppBar(
        color: Colors.white,
        child: Container(
          height: 70,
          child: Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                IconButton(
                  iconSize: 30,
                  icon: Icon(Icons.share),
                  color: Colors.pink,
                  onPressed: () {
                    Navigator.pushNamed(context, '/');
                  },
                ),
                IconButton(
                  iconSize: 30,
                  icon: Icon(Icons.favorite),
                  color: Colors.pink,
                  onPressed: () {
                    Navigator.pushNamed(context, '/');
                  },
                ),
                MaterialButton(
                  color: Colors.pink,
                  child: Text(
                    'ADD TO CART',
                    style: TextStyle(color: Colors.white),
                  ),
                  onPressed: () {
                    Navigator.pushNamed(context, '/');
                  },
                ),
              ],
            ),
          ),
        ),
      ),
      body: ListView(
        children: [
          CarouselSlider(
            options: CarouselOptions(
              aspectRatio: 1.5,
              viewportFraction: 1,
              enlargeCenterPage: true,
            ),
            items: [
              HeroCarousel(
                product: product,
              ),
            ],
          ),
          Padding(
            padding: EdgeInsets.all(10),
            child: Stack(
              children: [
                Container(
                  width: MediaQuery.of(context).size.width - 10,
                  height: 65,
                  color: Colors.pink.withAlpha(50),
                ),
                Container(
                  child: Expanded(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 8.0, horizontal: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            product.name,
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                          Text('Rs ${product.price}',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold))
                        ],
                      ),
                    ),
                  ),
                  margin: EdgeInsets.all(5),
                  width: MediaQuery.of(context).size.width,
                  height: 55,
                  color: Colors.pink.withAlpha(200),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(18.0),
            child: ExpansionTile(
                title: Text(
                  'Product Specifications',
                  style: TextStyle(
                      color: Colors.pink, fontWeight: FontWeight.bold),
                ),
                children: [
                  ListTile(
                    title: Text(
                      "The iPhone 12 is a smartphone developed by Apple Inc. and was released in 2020. It features a 6.1-inch Super Retina XDR OLED display with a resolution of 2532 x 1170 pixels. The phone is powered by Apple's A14 Bionic chip and runs on the iOS 14 operating system.The device comes with a dual-camera system, including a 12-megapixel ultra-wide lens and a 12-megapixel wide lens. It also features night mode, deep fusion, and Smart HDR 3 for enhanced photography.The iPhone 12 supports 5G technology for faster internet connectivity and has a new ceramic shield front cover that makes it more durable. The phone is available in five colors: black, white, green, blue, and rether notable features of the iPhone 12 include Face ID for secure authentication, MagSafe for wireless charging and accessories, and a LiDAR scanner for improved augmented reality experiences. It is also rated IP68 for water and dust resistance",
                      style: TextStyle(color: Colors.pink),
                    ),
                  ),
                ]),
          ),
          Padding(
            padding: const EdgeInsets.all(18.0),
            child: ExpansionTile(
                title: Text(
                  'Delivery Details ',
                  style: TextStyle(
                      color: Colors.pink, fontWeight: FontWeight.bold),
                ),
                children: [
                  ListTile(
                    title: Text(
                      ". Takes 2-3 business days  \n. Free Delivery inside RingRoad \n. Returned if seal is broken",
                      style: TextStyle(color: Colors.pink),
                    ),
                  ),
                ]),
          )
        ],
      ),
    );
  }
}
