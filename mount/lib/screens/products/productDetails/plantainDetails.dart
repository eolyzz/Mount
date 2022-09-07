import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:mount/background/background.dart';

// ignore: camel_case_types
class plantainDetails extends StatefulWidget {
  const plantainDetails({Key? key}) : super(key: key);

  @override
  State<plantainDetails> createState() => _plantainDetailsState();
}

class _plantainDetailsState extends State<plantainDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.yellow.shade800,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('Details'),
            Icon(Icons.cancel),
          ],
        ),
      ),
      body: Stack(
        children: [
          Background(),
          Column(
            children: [
              Container(
                // width: 142,
                child: Image(
                  image: AssetImage('assets/plantain.png'),
                  // resize the image
                ),
              ),
              Text(
                "Plantain",
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
            ],
          ),
        ],
      ),
      // bottom navigation bar
      bottomNavigationBar: BottomAppBar(
        color: Colors.white,
        child: Container(
          height: 70,
          child:
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            IconButton(
                onPressed: () {
                  //  Navigator.of(context).pushNamed('/call');
                },
                icon: Icon(Icons.phone)),
            Container(
              child:
                  Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                Icon(Icons.add_shopping_cart),
                TextButton(
                    style: TextButton.styleFrom(
                      primary: Colors.black,
                    ),
                    onPressed: () {},
                    child: Text('Add to Cart')),
              ]),
              color: Colors.yellow.shade800,
              width: 350,
            ),
          ]),
        ),
      ),
    );
  }
}
