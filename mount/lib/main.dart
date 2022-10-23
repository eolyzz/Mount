import 'package:flutter/material.dart';
import 'package:mount/models/models.dart';
import 'package:mount/models/product_model.dart';
import 'package:mount/screens/screens.dart';

void main() => runApp(MaterialApp(
      // onGenerateRoute: (settings) {
      //   if (settings.name == '/product') {
      //     return PageRouteBuilder(
      //         settings: settings,
      //         pageBuilder: ((_, __, ___) =>
      //             ProductScreen(product: settings.arguments as Product)));
      //   }
      //   return null;
      // },
      title: 'Mountain',
      initialRoute: '/',
      routes: {
        '/': (context) => const mainDisplay(),
        '/cartDisplay': (context) => cartDisplay(),
        '/accountPage': (context) => const accountPage(),
        // '/product': (context) => const ProductScreen(product: Product.products.name ),
      },
    ));
