import 'package:flutter/material.dart';
import 'package:mount/screens/screens.dart';
import 'package:mount/widgets/widgets.dart';

class mainDisplay extends StatefulWidget {
  const mainDisplay({Key? key}) : super(key: key);

  @override
  State<mainDisplay> createState() => mainDisplayState();
}

class mainDisplayState extends State<mainDisplay> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: ,
      appBar: CustomAppBar(title: 'Mountain'),
      body: marketDisplay(),
      bottomNavigationBar: CustomNavBar(),
    );
  }
}
