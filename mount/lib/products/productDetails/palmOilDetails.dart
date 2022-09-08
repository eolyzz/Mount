import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:mount/background/background.dart';

// ignore: camel_case_types
class palmOilDetails extends StatefulWidget {
  const palmOilDetails({Key? key}) : super(key: key);

  @override
  State<palmOilDetails> createState() => _palmOilDetailsState();
}

class _palmOilDetailsState extends State<palmOilDetails> {
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
          Container(
            width: 200,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Container(
                  height: 152,
                  width: 300,
                  child: Image(
                    image: AssetImage('assets/palmOil.png'),
                    // resize the image
                  ),
                ),
                Text(
                  "Palm Oil",
                  style: TextStyle(
                    fontSize: 27.0,
                    fontFamily: 'Arvo',
                  ),
                ),

                // Product Description
                Text(
                  "N3,500",
                  style: TextStyle(
                    fontSize: 33.0,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'OpenSans',
                  ),
                ),

                Text('Original Palm Oil'),
                Text('3kg'),
              ],
            ),
          )
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
                  //Navigator.of(context).pushNamed('/call');
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
