import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';

class CustomNavBar extends StatelessWidget {
  final onTap;
  final index;
  const CustomNavBar({
    Key? key,
    required this.onTap,
    this.index,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CurvedNavigationBar(
      color: Colors.yellow.shade800,
      backgroundColor: Colors.white,
      animationDuration: Duration(milliseconds: 150),
      items: [
        Icon(Icons.home),
        Icon(Icons.account_circle),
        Icon(Icons.help),
      ],
      buttonBackgroundColor: Colors.white,
      animationCurve: Curves.fastLinearToSlowEaseIn,
    );
  }
}
