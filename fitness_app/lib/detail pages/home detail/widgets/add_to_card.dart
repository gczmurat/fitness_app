import 'package:fitness_app/constants/app_constant.dart';
import 'package:fitness_app/detail%20pages/antrenmanlar/data/cart.dart';
import 'package:fitness_app/detail%20pages/antrenmanlar/data/product.dart';
import 'package:flutter/material.dart';

class AddToCard extends StatelessWidget {
  final Product products;
  //final CartItem cartItems;

  const AddToCard({Key? key, required this.products}) : super(key: key);
  
  void addToCart(Product product) {
  //cart.addItem(product);
}

  @override
  Widget build(BuildContext context) {
    final ButtonStyle raisedButtonstyle = ElevatedButton.styleFrom(
      onPrimary: Colors.white,
      primary: Colors.black,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(4),
      ),
    );

    return Padding(
      padding: const EdgeInsets.all(8),
      child: Row(
        children: [
          Container(
            margin: EdgeInsets.only(right: 25),
            height: 50,
            width: 60,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(4),
              border: Border.all(color: Colors.black),
            ),
            child: IconButton(
              onPressed: () {
                addToCart(products);
              },
              icon: Icon(
                Icons.shopping_bag_outlined,
                color: Colors.black,
              ),
            ),
          ),
          Expanded(
            child: SizedBox(
              height: 50,
              child: ElevatedButton(
                style: raisedButtonstyle,
                onPressed: () {
                  addToCart(products);
                },
                child: Text(
                  "Satın Al".toUpperCase(),
                  style: Sabitler.yaziStyle,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
