import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mount/models/models.dart';

class cartProduct extends StatelessWidget {
  final CartController controller = Get.find();
  cartProduct({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => SizedBox(
        height: 600,
        child: ListView.builder(
            itemCount: controller.products.length,
            itemBuilder: (BuildContext context, int index) {
              return CartProductCard(
                controller: controller,
                product: controller.products.keys.toList()[index],
                quantity: controller.products.values.toList()[index],
                index: index,
              );
            }),
      ),
    );
  }
}

class CartProductCard extends StatelessWidget {
  final CartController controller;
  final Product product;
  final int quantity;
  final int index;

  const CartProductCard({
    Key? key,
    required this.controller,
    required this.product,
    required this.quantity,
    required this.index,
  }) : super(key: key);

  get cartController => Get.find();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(),
      child: Row(
        children: [
          Row(
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
                  Row(
                    children: [
                      IconButton(
                          onPressed: () {
                            cartController.addProduct(Product.products[index]);
                          },
                          icon: const Icon(Icons.add_circle)),
                      Text(
                        '$quantity',
                      ),
                      IconButton(
                          onPressed: () {
                            cartController
                                .removeProduct(Product.products[index]);
                          },
                          icon: const Icon(Icons.remove_circle)),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
