import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mount/models/models.dart';
import 'package:mount/screens/cart/cart_total.dart';

class CartNavBar extends StatelessWidget {
  final CartController controller = Get.find();
  CartNavBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      color: Colors.white,
      child: Container(
        height: 70,
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          IconButton(
              onPressed: () {
                // Navigator.of(context).pushNamed('/call');
              },
              icon: Icon(Icons.phone)),
          Container(
            child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              TextButton(
                style: TextButton.styleFrom(
                  primary: Colors.black,
                ),
                onPressed: () {},
                child: Container(
                  padding: const EdgeInsets.symmetric(horizontal: 110),
                  child: Row(
                    children: [
                      Text(
                        "Total",
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        "${controller.total}",
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ]),
          ),
        ]),
        color: Colors.yellow.shade800,
        width: 350,
      ),
    );
  }
}
