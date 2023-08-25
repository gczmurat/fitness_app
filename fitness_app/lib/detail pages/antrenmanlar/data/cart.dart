import 'package:flutter/material.dart';
import 'product.dart';

class Shop extends ChangeNotifier{
  List<Product> _cart = [];

  List<Product> get cart => _cart;

  void addToCart(Product productItem, int quantity){
    for (int i = 0; i < quantity; i++){
      _cart.add(productItem);
    }
    notifyListeners();
  }
  void removeFromCart(Product product){
    _cart.remove(product);
    notifyListeners();
  }
}
