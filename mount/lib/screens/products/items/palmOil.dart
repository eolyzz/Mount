import 'dart:ui';

import 'package:flutter/material.dart';

// ignore: camel_case_types
class palmOil extends StatelessWidget {
  const palmOil({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          TextButton(
            onPressed: () {
              Navigator.of(context).pushNamed('/palmOilDetails');
            },
            child: Column(
              children: [
                Container(
                  width: 127,
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
                    color: Colors.black,
                  ),
                ),
                Text(
                  "N3,500",
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
