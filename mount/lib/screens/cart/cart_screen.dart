import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mount/screens/cart/cart_total.dart';
import '../../widgets/widgets.dart';
import 'cart_products.dart';

class cartScreen extends StatelessWidget {
  cartScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: const CartAppBar(title: "Cart"),
        body: Column(
          children: [
            cartProduct(),
            // CartTotal(),
          ],
        ),
        bottomNavigationBar: CartNavBar());
  }
}
