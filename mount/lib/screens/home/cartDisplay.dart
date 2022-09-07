import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:mount/background/background.dart';
import 'package:mount/widgets/custom_appbar.dart';

class cartDisplay extends StatefulWidget {
  const cartDisplay({Key? key}) : super(key: key);

  @override
  State<cartDisplay> createState() => _cartDisplayState();
}

class _cartDisplayState extends State<cartDisplay> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title: 'Cart'),
      body: Stack(
        children: [
          Background(),
          Column(
            children: [
              Text('CART SUMMARY'),
              Container(
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Subtotal'),
                      Text('N1,850'),
                    ]),
                color: Colors.grey.shade100,
              ),
              Text('CART'),
              Container(
                child: Column(
                  children: [
                    Container(
                      color: Colors.grey.shade100,
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Container(
                                child: Image(
                                    image: AssetImage('assets/garri.png')),
                                width: 200,
                              ),
                              Column(
                                children: [
                                  Text(
                                    "Garri",
                                    style: TextStyle(
                                      fontSize: 27.0,
                                      fontFamily: 'Arvo',
                                      color: Colors.black,
                                    ),
                                  ),
                                  Text('N14,250'),
                                ],
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  Icon(Icons.remove_shopping_cart),
                                  Text('REMOVE'),
                                ],
                              ),
                              Row(
                                children: [
                                  Container(
                                    child: Text('-'),
                                  ),
                                  Text('1'),
                                  Container(
                                    child: Text('+'),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          IconButton(
                              onPressed: () {
                                Navigator.of(context).pushNamed('/call');
                              },
                              icon: Icon(Icons.phone)),
                          Container(
                            child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  TextButton(
                                      style: TextButton.styleFrom(
                                        primary: Colors.black,
                                      ),
                                      onPressed: () {},
                                      child: Text('Checkout(N14,250)')),
                                ]),
                            color: Colors.yellow.shade800,
                            width: 350,
                          ),
                        ]),
                  ],
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
