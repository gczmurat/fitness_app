import 'package:fitness_app/constants/app_constant.dart';
import 'package:fitness_app/detail%20pages/antrenmanlar/data/product.dart';
import 'package:fitness_app/detail%20pages/home%20detail/widgets/detail_screen.dart';
import 'package:flutter/material.dart';

class AraPage extends StatefulWidget {
  const AraPage({super.key});

  @override
  State<AraPage> createState() => _AraPageState();
}

class _AraPageState extends State<AraPage> {
  List<Product> display_list = List.from(products);

  void updateList(String value) {
    setState(() {
      display_list = products
          .where((element) =>
              element.brand!.toLowerCase().contains(value.toLowerCase()))
          .toList();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.black,
        title: Text(
          "ARA",
          style: Sabitler.yaziStyle4,
        ),
        toolbarHeight: 35,
        centerTitle: true,
      ),
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.all(10.0),
            child: Container(
              height: 55,
              child: TextField(
                onChanged: (value) => updateList(value),
                style: Sabitler.yaziStyle,
                cursorColor: Colors.white,
                textAlign: TextAlign.center,
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.black,
                  focusColor: Colors.white,
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5),
                      borderSide: BorderSide.none),
                  hintText: "ÜRÜN ARAYINIZ",
                  hintStyle: Sabitler.yaziStyle,
                  suffixIcon: Icon(Icons.search),
                  suffixIconColor: Colors.white,
                ),
              ),
            ),
          ),
          SizedBox(
            height: 5,
          ),
          Expanded(
            child: display_list.length == 0
                ? Center(
                    child: Text(
                      "Ürün Bulunamadı",
                      style: Sabitler.yaziStyle3,
                    ),
                  )
                : ListView.builder(
                    itemCount: display_list.length,
                    itemBuilder: (context, index) => InkWell(
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(builder: (context) =>  DetailScreen(products: products[index])));
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.black,
                            width: 1.0,
                          ),
                          borderRadius: BorderRadius.circular(4.0),
                        ),
                        margin: EdgeInsets.all(4.0),
                        child: ListTile(
                          contentPadding: EdgeInsets.all(0.0),
                          title: Text(
                            "${display_list[index].brand!} ${display_list[index].crop}",
                            style: Sabitler.yaziStyle2,
                          ),
                          subtitle: Text(
                            display_list[index].crop!,
                            style: Sabitler.yaziStyle2,
                          ),
                          trailing: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              "${display_list[index].weight} gr",
                              style: Sabitler.yaziStyle2,
                            ),
                          ),
                          leading: Padding(
                            padding: const EdgeInsets.all(2.0),
                            child: Image.network(display_list[index].image),
                          ),
                        ),
                      ),
                    ),
                  ),
          )
        ],
      ),
    );
  }
}
