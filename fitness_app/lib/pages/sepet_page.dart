import 'package:fitness_app/constants/app_constant.dart';
import 'package:fitness_app/detail%20pages/antrenmanlar/data/cart.dart';
import 'package:fitness_app/detail%20pages/antrenmanlar/data/product.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class SepetPage extends StatefulWidget {
  const SepetPage({super.key});

  @override
  State<SepetPage> createState() => _SepetPageState();
}

class _SepetPageState extends State<SepetPage> {
  int quantityCounts = 1;

  void removeFromCart(Product product, BuildContext context) {
    final shop = context.read();
  }

  void decrementQuantity() {
    setState(() {
      if (quantityCounts > 1) {
        quantityCounts--;
      }
    });
  }

  // increment quantity
  void incrementQuantity() {
    setState(() {
      quantityCounts++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<Shop>(
      builder: (context, value, child) => Scaffold(
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
        body: Column(
          children: [
            Expanded(
              child: ListView.builder(
                  itemCount: value.cart.length,
                  itemBuilder: (context, index) {
                    final Product product = value.cart[index];
                    final String _brand = product.brand;
                    final _price = product.price;
                    final String _image = product.image;
                    return Padding(
                      padding: const EdgeInsets.symmetric(vertical: 0),
                      child: Container(
                        height: 150,
                        decoration: BoxDecoration(
                            border: Border(
                                bottom: BorderSide(
                                    color: Colors.grey.shade600, width: 0.5))),
                        child: Card(
                          elevation: 0, // Kartın gölgelendirilme düzeyi
                          child: Padding(
                            padding: const EdgeInsets.symmetric(vertical: 2),
                            child: Row(
                              children: [
                                Container(
                                  width: 150, // Resim boyutunu ayarlayabilirsiniz
                                  height: 150,
                                  child: Image.network(_image, fit: BoxFit.cover),
                                ),
                                SizedBox(width: 10),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.symmetric(vertical: 10),
                                      child: Text(
                                        "${_brand}",
                                        style: Sabitler.yaziStyle2,
                                      ),
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.symmetric(vertical: 10),
                                      child: Text(
                                        "${_price} TL",
                                        style: Sabitler.yaziStyle2,
                                      ),
                                    ),
                                  ],
                                ),
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    Container(
                                        child: IconButton(
                                      icon: Icon(Icons.add),
                                      onPressed: incrementQuantity,
                                    )),
                                    Text(
                                      quantityCounts.toString(),
                                      style: Sabitler.yaziStyle2,
                                    ),
                                    Container(
                                        child: IconButton(
                                      icon: Icon(Icons.remove),
                                      onPressed: decrementQuantity,
                                    )),
                                  ],
                                ),
                                Spacer(),
                                IconButton(
                                    onPressed:() => removeFromCart(product, context),
                                    icon: Icon(Icons.delete)),
                              ],
                            ),
                          ),
                        ),
                      ),
                    );
                  }),
            ),
                //pay button
            Padding(
              padding: const EdgeInsets.all(4.0),
              child: Container(
                width: 300,
                height: 45,
                decoration: BoxDecoration(color: Colors.black,borderRadius: BorderRadius.circular(4)),
                child: Row(mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Satın Al",style: Sabitler.yaziStyle,),
                    Icon(Icons.arrow_forward_ios,color: Colors.white,),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
