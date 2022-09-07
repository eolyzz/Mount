import 'package:flutter/material.dart';
import 'package:mount/background/background.dart';
import 'package:mount/screens/Catalogs/CatalogItem.dart';
import 'package:mount/screens/Catalogs/CatalogItem2.dart';

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
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Container(
                child: CatalogItem(),
              ),
              Container(
                child: CatalogItem2(),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
