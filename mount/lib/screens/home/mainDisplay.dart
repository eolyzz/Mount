import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:mount/screens/screens.dart';
import 'package:mount/widgets/custom_appbar.dart';
import 'package:mount/widgets/custom_navbar.dart';

class mainDisplay extends StatefulWidget {
  const mainDisplay({Key? key}) : super(key: key);

  @override
  State<mainDisplay> createState() => mainDisplayState();
}

class mainDisplayState extends State<mainDisplay> {
  List pages = [
    marketDisplay(),
    accountPage(),
    helpPage(),
  ];
  int currentIndex = 0;
  void onTap(int index) {
    setState(() {
      currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: ,
      appBar: CustomAppBar(title: 'Mountain'),
      body: pages[currentIndex],
      bottomNavigationBar: CustomNavBar(
        onTap: onTap,
        index: currentIndex,
      ),
    );
  }
}
