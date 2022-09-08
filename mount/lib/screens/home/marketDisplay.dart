import 'package:flutter/material.dart';
import 'package:mount/background/background.dart';
import 'package:mount/models/models.dart';
import 'package:mount/widgets/widgets.dart';

class marketDisplay extends StatefulWidget {
  const marketDisplay({Key? key}) : super(key: key);

  @override
  State<marketDisplay> createState() => _marketDisplayState();
}

class _marketDisplayState extends State<marketDisplay> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Background(),
          ProductCarousel(products: Product.products),
        ],
      ),
    );
  }
}
