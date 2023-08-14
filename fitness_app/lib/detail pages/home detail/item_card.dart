import 'package:fitness_app/constants/app_constant.dart';
import 'package:flutter/material.dart';

class ItemCard extends StatelessWidget {
  final String imageUrl;
  final double price;
  final VoidCallback onPressed;
  final String marka;
  final String urun;
  final String agirlik;

  const ItemCard({
    required this.imageUrl,
    required this.price,
    required this.onPressed,
    required this.marka,
    required this.urun,
    required this.agirlik,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Padding(
        padding: const EdgeInsets.all(1.0),
        child: Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(0), // You can adjust the radius
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0),
                spreadRadius: 3,
                blurRadius: 5,
                offset: Offset(0, 3),
              ),
            ],
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.vertical(top: Radius.circular(0)),
                child: Image.network(
                  imageUrl,
                  height: 100,
                  width: double.infinity,
                  fit: BoxFit.fitHeight, 
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(2),
                child: Center(
                  child: Text(
                    "$marka $urun  $agirlik gr",
                    style: Sabitler.yaziStyle5,
                    maxLines: 2,
                    overflow: TextOverflow.clip,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 2),
                child: Center(
                  child: Text(
                    '$price TL',
                    style: Sabitler.yaziStyle6,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
