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
      body: Column(
        children: [
          Container(
            color: Colors.blueGrey.shade700,
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
          ),
          SizedBox(height: 13),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              InkWell(
                onTap: () {
                  // İlk yuvarlağa tıklandığında yapılacak işlem
                  print("Ücretsiz Kargo yuvarlağına tıklandı.");
                },
                child: CircleAvatar(
                  radius: 40,
                  backgroundColor: Colors.blue,
                ),
              ),
              InkWell(
                onTap: () {
                  // İkinci yuvarlağa tıklandığında yapılacak işlem
                  print("Kapıda Ödeme yuvarlağına tıklandı.");
                },
                child: CircleAvatar(
                  radius: 40,
                  backgroundColor: Colors.green,
                ),
              ),
              InkWell(
                onTap: () {
                  // Üçüncü yuvarlağa tıklandığında yapılacak işlem
                  print("Güvenli Alışveriş yuvarlağına tıklandı.");
                },
                child: CircleAvatar(
                  radius: 40,
                  backgroundColor: Colors.red,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
