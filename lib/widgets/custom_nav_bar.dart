import 'package:flutter/material.dart';

class CustomNavBar extends StatelessWidget {
  const CustomNavBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      color: Colors.white,
      child: Container(
        height: 70,
        child: Expanded(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              IconButton(
                iconSize: 30,
                icon: Icon(Icons.home),
                color: Colors.pink,
                onPressed: () {
                  Navigator.pushNamed(context, '/');
                },
              ),
              IconButton(
                iconSize: 30,
                icon: Icon(Icons.shopping_bag),
                color: Colors.pink,
                onPressed: () {
                  Navigator.pushNamed(context, '/CartScreen');
                },
              ),
              IconButton(
                iconSize: 30,
                icon: Icon(Icons.person),
                color: Colors.pink,
                onPressed: () {
                  Navigator.pushNamed(context, '/');
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
