import 'package:flutter/material.dart';
import 'food.dart';

class Shop extends ChangeNotifier {
  final List<Food> _foodMenu = [
    Food(
      name: 'Salmon Sushi',
      price: '21.00',
      imagePath: 'assets/images/salmon_sushi.png',
      rating: '4.9',
    ),
    Food(
      name: 'Tuna',
      price: '23.40',
      imagePath: 'assets/images/tuna.png',
      rating: '4.5',
    ),
    // Food(
    //   name: 'Salmon Sushi',
    //   price: '21.00',
    //   imagePath: 'assets/images/sushi',
    //   rating: '4.9',
    // ),
    // Food(
    //   name: 'Salmon Sushi',
    //   price: '21.00',
    //   imagePath: 'assets/images/sushi',
    //   rating: '4.9',
    // )
  ];
  final List<Food> _cart = [];

  // getter method
  List<Food> get foodMenu => _foodMenu;
  List<Food> get cart => _cart;

  // add to cart
  void addToCart(Food foodItem, int quantity) {
    for (var i = 0; i < quantity; i++) {
      _cart.add(foodItem);
    }
    notifyListeners();
  }

  // remove from cart
  void removeFromCart(Food foodItem) {
    _cart.remove(foodItem);
    notifyListeners();
  }
}
