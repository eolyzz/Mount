import 'dart:ui';

import 'package:flutter/material.dart';

// ignore: camel_case_types
class foodItemsRow extends StatelessWidget {
  const foodItemsRow({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          Container(
            height: 168,
            width: 300,
            child: Image(
              image: AssetImage('assets/garri.png'),
              // resize the image
            ),
          ),
          Text(
            "Garri",
            style: TextStyle(
              fontSize: 27.0,
              fontFamily: 'Arvo',
            ),
          ),
          // Product Description
          Text(
            "N5,000",
            style: TextStyle(
              fontSize: 33.0,
              fontWeight: FontWeight.bold,
              fontFamily: 'OpenSans',
            ),
          ),
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
