import 'package:fitness_app/constants/app_constant.dart';
import 'package:fitness_app/detail%20pages/antrenmanlar/data/product.dart';
import 'package:fitness_app/detail%20pages/home%20detail/widgets/add_to_card.dart';
import 'package:fitness_app/detail%20pages/home%20detail/widgets/counter_with_fav.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class DetailScreen extends StatefulWidget {
  final Product products;

  const DetailScreen({required this.products, super.key});

  @override
  State<DetailScreen> createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  double rating = 0;
  String aroma = "Kakao";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "ÜRÜN DETAY",
          style: Sabitler.yaziStyle4,
        ),
        centerTitle: true,
        backgroundColor: Colors.black,
        toolbarHeight: 35,
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: Container(
                      height: 300,
                      width: 270,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(4),
                        color: Colors.amber,
                        border: Border.all(
                          color: Colors.black,
                          width: 1.0,
                        ),
                      ),
                      child: Image.network(
                        widget.products.image,
                        width: double.infinity,
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: Container(
                      height: 300,
                      width: 270,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(4),
                        color: Colors.amber,
                        border: Border.all(
                          color: Colors.black,
                          width: 1.0,
                        ),
                      ),
                      child: Image.network(
                        widget.products.image,
                        width: double.infinity,
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: Container(
                      height: 300,
                      width: 270,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(4),
                        color: Colors.amber,
                        border: Border.all(
                          color: Colors.black,
                          width: 1.0,
                        ),
                      ),
                      child: Image.network(
                        widget.products.image,
                        width: double.infinity,
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: Container(
                      height: 300,
                      width: 270,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(4),
                        color: Colors.amber,
                        border: Border.all(
                          color: Colors.black,
                          width: 1.0,
                        ),
                      ),
                      child: Image.network(
                        widget.products.image,
                        width: double.infinity,
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 2,
            ),
            Container(
              width: double.infinity,
              height: 1,
              color: Colors.black,
            ),
            Padding(
              padding: const EdgeInsets.all(4),
              child: Text(
                "${widget.products.brand} " "${widget.products.crop} ",
                style: Sabitler.yaziStyle7,
              ),
            ),
            Text(
              "${widget.products.weight} gr ",
              style: Sabitler.yaziStyle7,
              maxLines: 2,
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: RatingBar.builder(
                    minRating: 1,
                    itemSize: 25,
                    itemBuilder: (context, index) => Icon(
                      Icons.star,
                      color: Colors.amber,
                    ),
                    onRatingUpdate: (rating) {
                      setState(() {
                        this.rating = rating;
                      });
                    },
                  ),
                ),
                Text(
                  " $rating",
                  style: Sabitler.yaziStyle2,
                ),
                Text(
                  "                SKT: 30.10.2024",
                  style: Sabitler.yaziStyle2,
                )
              ],
            ),
            Text(
              "${widget.products.price} TL",
              style: Sabitler.yaziStyle7,
            ),
            Container(
              width: double.infinity,
              height: 1,
              color: Colors.black,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: Text(
                    "Stokta var",
                    style: Sabitler.yaziStyle8,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: Text(
                    "%5 Havale indirimi ${widget.products.price - (widget.products.price * 0.05)}",
                    style: Sabitler.yaziStyle9,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: Text(
                    "Tek Çekim",
                    style: Sabitler.yaziStyle10,
                  ),
                )
              ],
            ),
            Container(
              width: double.infinity,
              height: 0.5,
              color: Colors.black,
            ),
            SizedBox(
              height: 13,
            ),
            Padding(
              padding: const EdgeInsets.only(right: 90, left: 90),
              child: DropdownButtonFormField<String>(
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.only(left: 20, right: 10),
                  labelText: 'Aroma',
                  labelStyle: TextStyle(
                    color: aroma == "Kakao"
                        ? Colors.brown
                        : aroma == "Muz"
                            ? Colors.amber
                            : aroma == "Çilek"
                                ? Colors.red
                                : Colors.brown.shade100,
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5.0),
                    borderSide: BorderSide(
                        color: aroma == "Kakao"
                            ? Colors.brown
                            : aroma == "Muz"
                                ? Colors.amber
                                : aroma == "Çilek"
                                    ? Colors.red
                                    : Colors.brown.shade100,
                        width: 2.0),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5.0),
                    borderSide: BorderSide(color: Colors.white, width: 1.0),
                  ),
                  filled: true,
                  fillColor: Colors.white,
                ),
                style: Sabitler.yaziStyle2,
                value: aroma,
                onChanged: (value) {
                  setState(() {
                    aroma = value!;
                  });
                },
                items: ["Kakao", "Muz", "Çilek", "Badem"]
                    .map((String value) => DropdownMenuItem<String>(
                          value: value,
                          child: Text(
                            value,
                            style: Sabitler.yaziStyle2,
                          ),
                        ))
                    .toList(),
              ),
            ),
            CounterWithFavBtn(),
            AddToCard(products: widget.products),
            Container(
              height: 10,
              decoration: BoxDecoration(color: Colors.grey.shade400),
            ),
            Container(
              height: 40,
              decoration: BoxDecoration(color: Colors.white),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    "ÜRÜN HAKKINDA",
                    textAlign: TextAlign.left,
                    style: Sabitler.yaziStyle6,
                  ),
                ),
              ),
            ),
            Container(
              width: double.infinity,
              height: 1,
              color: Colors.black,
            ),
            Padding(
              padding: const EdgeInsets.all(5.0),
              child: Text(widget.products.description,style: Sabitler.yaziStyle2,),
            )
          ],
        ),
      ),
    );
  }
}
