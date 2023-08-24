import 'package:flutter/material.dart';
import 'cart_counter.dart';

class CounterWithFavBtn extends StatelessWidget {
  const CounterWithFavBtn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        CartCounter(),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            padding: EdgeInsets.all(4),
            height: 32,
            width: 32,
            decoration:
                BoxDecoration(color: Colors.transparent),
            child: Icon(
              Icons.favorite_outline,
              color: Colors.red,
            ),
          ),
        ),
      ],
    );
  }
}