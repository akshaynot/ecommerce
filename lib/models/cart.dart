import 'package:flutter/material.dart';

import 'shoe.dart';

class Cart extends ChangeNotifier {
  // list of shoes for sale
  List<Shoe> shoeShop = [
    Shoe(
      name: 'Air Max 270 React',
      price: '150.00',
      imagePath: 'lib/images/1.png',
      description: 'Combining revolutionary cushioning with a sleek design.',
    ),
    Shoe(
      name: 'Nike Cortez',
      price: '70.00',
      imagePath: 'lib/images/2.png',
      description: 'A legend since 1970. ',
    ),
    Shoe(
      name: 'Nike Zoom',
      price: '130.00',
      imagePath: 'lib/images/3.png',
      description: 'The Zoom Air unit in the forefoot provides a snappy feel',
    ),
    Shoe(
      name: 'Nike Waffle One',
      price: '150.00',
      imagePath: 'lib/images/4.png',
      description: 'Inspired by the original Waffle shoe from 1974',
    ),
  ];

  // list of items in cart
  List<Shoe> userCart = [];

  // get list of shoes for sale
  List<Shoe> getShoeList() {
    return shoeShop;
  }

  // get cart
  List<Shoe> getUserCart() {
    return userCart;
  }

  // add items to cart
  void addItemToCart(Shoe shoe) {
    userCart.add(shoe);
    notifyListeners();
  }

  // removing items from cart
  void removeItemFromCart(Shoe shoe) {
    userCart.remove(shoe);
    notifyListeners();
  }
}
