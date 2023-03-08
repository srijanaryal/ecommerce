import 'package:ecommerce/models/models.dart';
import 'package:flutter/material.dart';

import '../models/category_model.dart';

class HeroCarousel extends StatelessWidget {
  final Category? category;
  final Product? product;
  const HeroCarousel({super.key, this.category, this.product});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        if (this.product == null) {
          Navigator.pushNamed(context, '/catalog', arguments: category);
        }
      },
      child: Container(
        margin: EdgeInsets.symmetric(vertical: 15.0, horizontal: 15),
        child: ClipRRect(
            borderRadius: BorderRadius.all(Radius.circular(5.0)),
            child: Stack(
              children: <Widget>[
                Image.network(
                  product == null ? category!.imageUrl : product!.imageUrl,
                  fit: BoxFit.cover,
                ),
                Positioned(
                  bottom: 0.0,
                  left: 0.0,
                  right: 0.0,
                  child: Container(
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        colors: [
                          Color.fromARGB(198, 244, 232, 232),
                          Color.fromARGB(0, 240, 238, 238)
                        ],
                        begin: Alignment.bottomCenter,
                        end: Alignment.topCenter,
                      ),
                    ),
                    padding:
                        EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
                    child: Text(
                      product == null ? category!.name : '',
                      style: TextStyle(
                        color: Colors.red,
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ],
            )),
      ),
    );
  }
}
