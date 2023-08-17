import 'package:fitness_app/constants/app_constant.dart';
import 'package:fitness_app/detail%20pages/home%20detail/widgets/mid_row.dart';
import 'package:flutter/material.dart';

class MenuPage extends StatelessWidget {
  const MenuPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("MENÜ",style: Sabitler.yaziStyle4,),
      backgroundColor: Colors.black,
      centerTitle: true,
      toolbarHeight: 35,),
      body: Column(children: [
        MidRow()
      ]),
    );
  }
}