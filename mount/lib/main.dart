import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:mount/CatalogItem.dart';
import 'background/background.dart';
import 'footitems/foodItemsRow.dart';
import 'footitems/foodItemsRow2.dart';
import 'package:mount/glassBox.dart';
import 'background/backgroundBlur.dart';
import 'glassBox.dart';

void main() => runApp(MaterialApp(
      home: Mountain(),
    ));

class Mountain extends StatefulWidget {
  @override
  State<Mountain> createState() => _MountainState();
}

class _MountainState extends State<Mountain> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: ,
      appBar: AppBar(
        title: Text('Mountain'),
        centerTitle: true,
        backgroundColor: Colors.yellow[800],
        elevation: 0,
      ),
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
                child: CatalogItem(),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
