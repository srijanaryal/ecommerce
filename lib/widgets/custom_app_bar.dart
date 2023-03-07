import 'package:flutter/material.dart';

class custom_app_bar extends StatelessWidget with PreferredSizeWidget {
  final String title;
  const custom_app_bar({
    Key? key,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      actions: [
        IconButton(
            color: Colors.pink,
            onPressed: () {
              Navigator.pushNamed(context, '/wishlist');
            },
            icon: Icon(Icons.favorite))
      ],
      backgroundColor: Colors.transparent,
      elevation: 0,
      title: Center(
        child: Padding(
          padding: const EdgeInsets.all(25.0),
          child: Text(
            title,
            style: TextStyle(
                color: Colors.pink, fontSize: 26, fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(50);
}
