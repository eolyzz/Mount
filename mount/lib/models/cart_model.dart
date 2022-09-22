import 'package:equatable/equatable.dart';
import 'package:mount/models/models.dart';

class Cart extends Equatable {
  const Cart();

  String get totalString =>
      products.fold('0', (total, current) => total + current.price);

  static List<Product> products = [
    const Product(
      name: 'Garri',
      imageUrl: 'assets/garri.png',
      price: 'N25,000 ',
    ),
    const Product(
      name: 'Plantain',
      imageUrl: 'assets/plantain.png',
      price: 'N5,000',
    ),
    const Product(
      name: 'Palm Oil',
      imageUrl: 'assets/palmOil.png',
      price: 'N3,500 ',
    ),
  ];

  @override
  List<Object?> get props => [];
}
