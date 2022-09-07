import 'dart:ui';

import 'package:flutter/material.dart';

class garri extends StatelessWidget {
  const garri({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          TextButton(
            onPressed: () {
              Navigator.of(context).pushNamed('/garriDetails');
            },
            child: Column(
              children: [
                Container(
                  height: 152,
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
                    color: Colors.black,
                  ),
                ),
                Text(
                  "N14,250",
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
