import 'package:fitness_app/constants/app_constant.dart';
import 'package:flutter/material.dart';

class LoginText extends StatelessWidget {
  final controller;
  final String hintText;
  final bool obscureText;
  const LoginText(
      {required this.controller,
      required this.hintText,
      required this.obscureText,
      super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 35, right: 35),
      child: TextField(
        controller: controller,
        obscureText: obscureText,
        decoration: InputDecoration(
          enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(
            color: Colors.white,
          )),
          focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(
            color: Colors.black,
          )),
          fillColor: Colors.grey.shade200,
          filled: true,
          hintText: hintText,
          hintStyle: Sabitler.yaziStyle2
        ),
      ),
    );
  }
}
