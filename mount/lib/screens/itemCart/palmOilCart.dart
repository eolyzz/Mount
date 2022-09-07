import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:mount/screens/products/items/palmOil.dart';

// ignore: camel_case_types
class palmOilCart extends StatelessWidget {
  const palmOilCart({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          palmOil(),
          // Add to cart
          Stack(
            alignment: Alignment.center,
            children: <Widget>[
              ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Container(
                  width: 145.0,
                  height: 28.0,
                  color: Colors.yellow[800],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  //Icon(Icons.add),
                  Text(
                    "Add to Cart",
                    style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'OpenSans',
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
