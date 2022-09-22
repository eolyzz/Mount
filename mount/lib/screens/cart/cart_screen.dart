import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:mount/models/models.dart';
import 'package:mount/widgets/widgets.dart';

class cartDisplay extends StatefulWidget {
  const cartDisplay({Key? key}) : super(key: key);

  @override
  State<cartDisplay> createState() => _cartDisplayState();
}

class _cartDisplayState extends State<cartDisplay> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title: 'Cart'),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10.0),
        child: Column(
          children: [
            Row(
              children: [
                Text(
                  'Free Delivery Within Warri',
                  style: Theme.of(context).textTheme.headline6,
                ),
                // ElevatedButton(
                //     onPressed: () {
                //       Navigator.pushNamed(context, '/');
                //     },
                //     style: ElevatedButton.styleFrom(
                //       primary: Colors.black,
                //       shape: RoundedRectangleBorder(),
                //       elevation: 0,
                //     ),
                //     child: Text(
                //       'Add More Items',
                //       style: Theme.of(context).textTheme.headline6!.copyWith(
                //             color: Colors.white,
                //           ),
                //     )),
              ],
            ),
            SizedBox(height: 10),
            SizedBox(
                height: 400,
                child: ListView.builder(
                  itemCount: Cart.products.length,
                  itemBuilder: ((context, index) {
                    return CartProductCard(
                      product: Cart.products[index],
                    );
                  }),
                )),
          ],
        ),
      ),
      bottomNavigationBar: CartNavBar(),
    );
  }
}
