import 'package:fitness_app/constants/app_constant.dart';
import 'package:fitness_app/detail%20pages/home%20detail/widgets/sepet_screen.dart';
import 'package:flutter/material.dart';

class SepetPage extends StatelessWidget {
  const SepetPage({super.key});
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text(
          "SEPET",
          style: Sabitler.yaziStyle4,
        ),
        backgroundColor: Colors.black,
        centerTitle: true,
        toolbarHeight: 35,
      ),
      body: SepetScreen(),
    );
  }
}
