import 'package:fitness_app/constants/app_constant.dart';
import 'package:flutter/material.dart';

class LoginButton extends StatelessWidget {
  final Function() ? onTap;
  final String text;

  const LoginButton({super.key,required this.onTap, required this.text});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        height: 50,
        width: 200,
        padding: const EdgeInsets.all(2),
        decoration: BoxDecoration(color: Colors.black,borderRadius: BorderRadius.circular(5)),
        child: Center(
          child: Text(
            text,
            style: Sabitler.yaziStyle,
          ),
        ),
      ),
    );
  }
}
