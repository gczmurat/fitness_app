import 'package:flutter/material.dart';

class SquareTile extends StatelessWidget {
  final String imagePath;
  const SquareTile({super.key, required this.imagePath});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(
            border: Border.all(color: Colors.black),
            borderRadius: BorderRadius.circular(6),
            color: Colors.grey[200]),
        child: Image.asset(
          imagePath,
          height: 50,
        ),
      ),
    );
  }
}
