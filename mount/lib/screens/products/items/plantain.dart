import 'dart:ui';

import 'package:flutter/material.dart';

// ignore: camel_case_types
class plantain extends StatelessWidget {
  const plantain({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          TextButton(
            onPressed: () {
              Navigator.of(context).pushNamed('/plantainDetails');
            },
            child: Column(
              children: [
                Container(
                  width: 112.5,
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
                    color: Colors.black,
                  ),
                ),
                Text(
                  "N5,000",
                  style: TextStyle(
                    fontSize: 33.0,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'OpenSans',
                    color: Colors.black,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
