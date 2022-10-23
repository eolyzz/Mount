import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mount/models/models.dart';

import 'product_card.dart';

class ProductCarousel extends StatelessWidget {
  const ProductCarousel({
    Key? key,
    required List<Product> products,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: GridView.builder(
          gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
            maxCrossAxisExtent: 400,
            childAspectRatio: 3 / 2,
            crossAxisSpacing: 20,
            mainAxisSpacing: 20,
          ),
          itemCount: Product.products.length,
          itemBuilder: (BuildContext context, int index) {
            return ProductCard(
              index: index,
            );
          }),
    );
  }
}
