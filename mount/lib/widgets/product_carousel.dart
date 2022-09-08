import 'package:flutter/material.dart';
import 'package:mount/models/models.dart';

import 'product_card.dart';

class ProductCarousel extends StatelessWidget {
  final List<Product> products;

  const ProductCarousel({
    Key? key,
    required this.products,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: 400,
          childAspectRatio: 3 / 2,
          crossAxisSpacing: 20,
          mainAxisSpacing: 20,
        ),
        itemCount: products.length,
        itemBuilder: (context, index) {
          return ProductCard(
            product: products[index],
          );
        });
  }
}
