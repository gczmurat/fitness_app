import 'package:fitness_app/constants/app_constant.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: const Center(
          child: Image(
            image: AssetImage("images/logo.jpg"),
            width: 300,
          ),
        ),
      ),
      body: Column(children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Text(
              "Ücretsiz Kargo",
              style: Sabitler.yaziStyle,
            ),
            Text("Kapıda Ödeme", style: Sabitler.yaziStyle),
            Text("Güvenli Alışveriş", style: Sabitler.yaziStyle)
          ],
        )
      ]),
    );
  }
}
