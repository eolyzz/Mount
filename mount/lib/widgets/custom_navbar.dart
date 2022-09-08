import 'package:flutter/material.dart';

class CustomNavBar extends StatelessWidget {
  const CustomNavBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      color: Colors.yellow.shade800,
      child: Container(
        height: 55,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            IconButton(
              icon: Icon(
                Icons.home,
                color: Colors.white,
              ),
              onPressed: () {
                Navigator.pushNamed(context, '/');
              },
            ),
            IconButton(
              icon: Icon(
                Icons.shopping_cart,
                color: Colors.white,
              ),
              onPressed: () {
                Navigator.pushNamed(context, '/cartDisplay');
              },
            ),
            IconButton(
              icon: Icon(
                Icons.person,
                color: Colors.white,
              ),
              onPressed: () {
                Navigator.pushNamed(context, '/accountPage');
              },
            ),
          ],
        ),
      ),
    );
  }
}
