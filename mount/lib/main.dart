import 'package:flutter/material.dart';
import 'package:mount/screens/screens.dart';

void main() => runApp(MaterialApp(
      title: 'Mountain',
      initialRoute: '/',
      routes: {
        '/': (context) => const mainDisplay(),
        '/garriDetails': (context) => const garriDetails(),
        '/palmOilDetails': (context) => const palmOilDetails(),
        '/plantainDetails': (context) => const plantainDetails(),
        '/cartDisplay': (context) => const cartDisplay(),
        '/accountPage': (context) => const accountPage(),
      },
    ));
