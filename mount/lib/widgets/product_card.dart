import 'package:flutter/material.dart';
import 'package:mount/models/models.dart';
import 'package:get/get.dart';

class ProductCard extends StatelessWidget {
  final cartController = Get.put(CartController());
  final int index;

  ProductCard({
    Key? key,
    required this.index,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Stack(
        children: <Widget>[
          ClipRRect(
            borderRadius: BorderRadius.circular(50),
            child: Row(
              children: [
                Container(
                  width: 220,
                  child: Image(
                    image: AssetImage(Product.products[index].imageUrl),
                    // resize the image
                  ),
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      Product.products[index].name,
                      style: const TextStyle(
                        fontSize: 27.0,
                        fontFamily: 'Arvo',
                        color: Colors.black,
                      ),
                    ),
                    Text(
                      Product.products[index].price,
                      style: TextStyle(
                        fontSize: 33.0,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'OpenSans',
                        color: Colors.black,
                      ),
                    ),
                    Stack(
                      alignment: Alignment.center,
                      children: <Widget>[
                        ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Container(
                            width: 145.0,
                            height: 28.0,
                            color: Colors.yellow[800],
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            //Icon(Icons.add),
                            ElevatedButton(
                              onPressed: () {
                                cartController
                                    .addProduct(Product.products[index]);
                              },
                              child: Text(
                                "Add to Cart",
                                style: TextStyle(
                                  fontSize: 20.0,
                                  fontWeight: FontWeight.bold,
                                  fontFamily: 'OpenSans',
                                  color: Colors.black,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.shade500,
            offset: Offset(4.0, 4.0),
            blurRadius: 15.0,
            spreadRadius: 1.0,
          ),
          BoxShadow(
            color: Colors.white,
            offset: Offset(-4.0, -4.0),
            blurRadius: 15.0,
            spreadRadius: 1.0,
          ),
        ],
      ),
    );
  }
}
