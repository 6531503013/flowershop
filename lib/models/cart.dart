import 'package:flutter/material.dart';

import 'flower.dart';

class Cart extends ChangeNotifier {
  //list of flower for sale
  List<Flower> flowerFlower = [
    Flower(
      name: 'Roses',
      price: '25',
      description: 'means love, beauty, and affection.',
      imagePath: 'lib/image/1.jpg',
    ),
    Flower(
      name: 'Sunflower',
      price: '15',
      description: 'means brightness and cheerfulness.',
      imagePath: 'lib/image/2.jpg',
    ),
    Flower(
      name: 'Forget me not',
      price: '15',
      description: 'means true love, and memories.',
      imagePath: 'lib/image/3.jpg',
    ),
    Flower(
      name: 'Lily',
      price: '20',
      description: 'means purity, innocence and renewal.',
      imagePath: 'lib/image/4.jpg',
    ),
    Flower(
      name: 'Peony',
      price: '23',
      description: 'means honor,romance and beauty.',
      imagePath: 'lib/image/5.jpg',
    ),
    Flower(
      name: 'Tulip',
      price: '16',
      description: 'means perfect love,elegance and grace.',
      imagePath: 'lib/image/6.jpg',
    ),
    Flower(
      name: 'Dahlia',
      price: '18',
      description: 'means inner strength, and dignity.',
      imagePath: 'lib/image/7.jpg',
    ),
    Flower(
      name: 'Daisy',
      price: '10',
      description: 'means Innocence, purity and simplicity.',
      imagePath: 'lib/image/8.jpg',
    ),
    Flower(
      name: 'Hydrangea',
      price: '20',
      description: 'means understanding and Emotion.',
      imagePath: 'lib/image/9.jpg',
    ),
  ];

  //list of item in cus cart
  List<Flower> userCart = [];

  //get list of item for sale
  List<Flower> getFlowerList() {
    return flowerFlower;
  }

  //get cart
  List<Flower> getUserCart() {
    return userCart;
  }

  //add item to cart
  void addItemToCart(Flower flower) {
    userCart.add(flower);
    notifyListeners();
  }

  //remov item from cart
  void removeItemFromCart(Flower flower) {
    userCart.remove(flower);
    notifyListeners();
  }
}
