import 'package:fitness_app/constants/app_constant.dart';
import 'package:flutter/material.dart';

class LoginButton extends StatelessWidget {
  final Function() ? onTap;

  const LoginButton({super.key,required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 50,
        width: 100,
        padding: const EdgeInsets.all(2),
        decoration: BoxDecoration(color: Colors.black,borderRadius: BorderRadius.circular(5)),
        child: Center(
          child: Text(
            "Giriş Yap",
            style: Sabitler.yaziStyle,
          ),
        ),
      ),
    );
  }
}
