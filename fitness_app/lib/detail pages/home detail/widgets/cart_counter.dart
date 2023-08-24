import 'package:fitness_app/constants/app_constant.dart';
import 'package:flutter/material.dart';

class CartCounter extends StatefulWidget {
  CartCounter({Key? key}) : super(key: key);

  @override
  _CartCounterState createState() => _CartCounterState();
}

class _CartCounterState extends State<CartCounter> {
  int numOfItem = 1;
  int get itemCount => numOfItem;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: [
          outLineButton(
            icon: Icons.remove,
            press: () {
              if (numOfItem > 1) {
                setState(
                  () {
                    numOfItem--;
                  },
                );
              }
            },
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 5),
            child: Text(
              numOfItem.toString().padLeft(0, "0"),
              style: Sabitler.yaziStyle2,
            ),
          ),
          outLineButton(
            press: () {
              setState(
                () {
                  numOfItem++;
                },
              );
            },
            icon: Icons.add,
          )
        ],
      ),
    );
  }

  SizedBox outLineButton({required Function press, IconData? icon}) {
    return SizedBox(
      width: 40,
      height: 40,
      child: OutlinedButton(
        onPressed: () {
          press();
        },
        child: Icon(icon,color: Colors.black,),
      ),
    );
  }
}
