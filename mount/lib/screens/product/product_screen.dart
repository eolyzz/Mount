import 'package:flutter/material.dart';
import 'package:mount/widgets/cart_navbar.dart';
import 'package:mount/widgets/widgets.dart';
import 'package:mount/models/models.dart';

class ProductScreen extends StatelessWidget {
  final Product product;

  const ProductScreen({
    Key? key,
    required this.product,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title: product.name),
      body: ListView(
        children: [
          Container(
            height: 152,
            width: 300,
            child: Image(
              image: AssetImage(product.imageUrl),
              // resize the image
            ),
          ),
          Container(
            child: Column(children: [
              Text(
                product.name,
                style: Theme.of(context)
                    .textTheme
                    .headline5!
                    .copyWith(color: Colors.grey),
              ),
              Text(
                product.price,
                style: Theme.of(context)
                    .textTheme
                    .headline5!
                    .copyWith(color: Colors.grey),
              ),
            ]),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: ExpansionTile(
              initiallyExpanded: true,
              title: Text('Product Information',
                  style: Theme.of(context).textTheme.headline3),
              children: [
                ListTile(
                  title: Text('CREATE A PRODUCT MODEL FOR DESCRIPTION',
                      style: Theme.of(context).textTheme.bodyText1),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: ExpansionTile(
              initiallyExpanded: true,
              title: Text('Delivery Information',
                  style: Theme.of(context).textTheme.headline3),
              children: [
                ListTile(
                  title: Text('CREATE A PRODUCT MODEL FOR DESCRIPTION',
                      style: Theme.of(context).textTheme.bodyText1),
                )
              ],
            ),
          )
        ],
      ),
      bottomNavigationBar: CartNavBar(),
    );
  }
}
