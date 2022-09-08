import 'package:equatable/equatable.dart';

class Product extends Equatable {
  final String name;
  final String imageUrl;
  final String price;

  const Product({
    required this.name,
    required this.imageUrl,
    required this.price,
  });

  @override
  List<Object?> get props => [
        name,
        imageUrl,
        price,
      ];

  static List<Product> products = [
    Product(
      name: 'Garri',
      imageUrl: 'assets/garri.png',
      price: 'N25,000',
    ),
    Product(
      name: 'Plantain',
      imageUrl: 'assets/plantain.png',
      price: 'N5,000',
    ),
    Product(
      name: 'Palm Oil',
      imageUrl: 'assets/palmOil.png',
      price: 'N3,500',
    ),
  ];
}
