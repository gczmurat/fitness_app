import 'package:fitness_app/constants/app_constant.dart';
import 'package:flutter/material.dart';

class TabContainer extends StatelessWidget {
  const TabContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
            color: Colors.black,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text(
                  "Ücretsiz Kargo /",
                  style: Sabitler.yaziStyle,
                ),
                Text("Kapıda Ödeme /", style: Sabitler.yaziStyle),
                Text("Güvenli Alışveriş", style: Sabitler.yaziStyle),
              ],
            ),
          );
  }
}