import 'package:fitness_app/constants/app_constant.dart';
import 'package:flutter/material.dart';

class BilgilerimScreen extends StatelessWidget {
  const BilgilerimScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Bilgilerim",style: Sabitler.yaziStyle4,),
        centerTitle: true,
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        backgroundColor: Colors.black,
        toolbarHeight: 35,
      ),
    );
  }
}
