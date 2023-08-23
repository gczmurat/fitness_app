import 'package:firebase_auth/firebase_auth.dart';
import 'package:fitness_app/constants/app_constant.dart';
import 'package:fitness_app/hessap%20detail/bilgilerim.dart';
import 'package:fitness_app/hessap%20detail/login_or_register_page.dart';
import 'package:fitness_app/pages/login.dart';
import 'package:flutter/material.dart';

class HesapPageEnter extends StatelessWidget {
  const HesapPageEnter({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text(
          "HESABIM",
          style: Sabitler.yaziStyle4,
        ),
        backgroundColor: Colors.black,
        centerTitle: true,
        toolbarHeight: 35,
      ),
      body: SingleChildScrollView(
        child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.all(5.0),
            child: Container(
              height: 40,
              width: 370,
              decoration: BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.circular(4),
              ),
              child: Padding(
                padding: const EdgeInsets.all(1),
                child: InkWell(
                  onTap: () {},
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(4),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Padding(
                          padding: EdgeInsets.all(5.0),
                          child: Icon(
                            Icons.shopping_cart_checkout,
                            color: Colors.green,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(0),
                          child: Text(
                            "SİPARİŞLERİM",
                            style: Sabitler.yaziStyle2,
                          ),
                        ),
                        Icon(Icons.arrow_forward_ios),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(5.0),
            child: Container(
              height: 40,
              width: 370,
              decoration: BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.circular(4),
              ),
              child: Padding(
                padding: const EdgeInsets.all(1),
                child: InkWell(
                  onTap: () {},
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(4),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Padding(
                          padding: EdgeInsets.all(5.0),
                          child: Icon(
                            Icons.favorite_border,
                            color: Colors.red,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(0),
                          child: Text(
                            "FAVORİLERİM",
                            style: Sabitler.yaziStyle2,
                          ),
                        ),
                        Icon(Icons.arrow_forward_ios),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(5.0),
            child: Container(
              height: 40,
              width: 370,
              decoration: BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.circular(4),
              ),
              child: Padding(
                padding: const EdgeInsets.all(1),
                child: InkWell(
                  onTap: () {},
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(4),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Padding(
                          padding: EdgeInsets.all(5.0),
                          child: Icon(
                            Icons.headphones_outlined,
                            color: Colors.black,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(0),
                          child: Text(
                            "MÜŞTERİ HİZMETLERİ",
                            style: Sabitler.yaziStyle2,
                          ),
                        ),
                        Icon(Icons.arrow_forward_ios),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(5.0),
            child: Container(
              height: 40,
              width: 370,
              decoration: BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.circular(4),
              ),
              child: Padding(
                padding: const EdgeInsets.all(1),
                child: InkWell(
                  onTap: () {},
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(4),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Padding(
                          padding: EdgeInsets.all(5.0),
                          child: Icon(
                            Icons.phone_callback_outlined,
                            color: Colors.green,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(0),
                          child: Text(
                            "WHATSAPP DESTEK HATTI",
                            style: Sabitler.yaziStyle2,
                          ),
                        ),
                        Icon(Icons.arrow_forward_ios),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
          Text(
            "PROFİLİM",
            style: Sabitler.yaziStyle3,
          ),
           Padding(
            padding: const EdgeInsets.all(5.0),
            child: Container(
              height: 40,
              width: 370,
              decoration: BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.circular(4),
              ),
              child: Padding(
                padding: const EdgeInsets.all(1),
                child: InkWell(
                  onTap: () {Navigator.of(context).push(MaterialPageRoute(builder: (context) => BilgilerimScreen() ));},
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(4),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Padding(
                          padding: EdgeInsets.all(5.0),
                          child: Icon(
                            Icons.perm_contact_calendar_outlined,
                            color: Colors.blue,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(0),
                          child: Text(
                            "BİLGİLERİM",
                            style: Sabitler.yaziStyle2,
                          ),
                        ),
                        Icon(Icons.arrow_forward_ios),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
           Padding(
            padding: const EdgeInsets.all(5.0),
            child: Container(
              height: 40,
              width: 370,
              decoration: BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.circular(4),
              ),
              child: Padding(
                padding: const EdgeInsets.all(1),
                child: InkWell(
                  onTap: () {},
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(4),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Padding(
                          padding: EdgeInsets.all(5.0),
                          child: Icon(
                            Icons.location_on_outlined,
                            color: Colors.red,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(0),
                          child: Text(
                            "ADRESLERİM",
                            style: Sabitler.yaziStyle2,
                          ),
                        ),
                        Icon(Icons.arrow_forward_ios),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
           Padding(
            padding: const EdgeInsets.all(5.0),
            child: Container(
              height: 40,
              width: 370,
              decoration: BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.circular(4),
              ),
              child: Padding(
                padding: const EdgeInsets.all(1),
                child: InkWell(
                  onTap: () {},
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(4),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Padding(
                          padding: EdgeInsets.all(5.0),
                          child: Icon(
                            Icons.lock_outline,
                            color: Colors.black,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(0),
                          child: Text(
                            "ŞİFRE DEĞİŞTİR",
                            style: Sabitler.yaziStyle2,
                          ),
                        ),
                        Icon(Icons.arrow_forward_ios),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
           Padding(
            padding: const EdgeInsets.all(5.0),
            child: Container(
              height: 40,
              width: 370,
              decoration: BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.circular(4),
              ),
              child: Padding(
                padding: const EdgeInsets.all(1),
                child: InkWell(
                  onTap: () {},
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(4),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Padding(
                          padding: EdgeInsets.all(5.0),
                          child: Icon(
                            Icons.credit_card_outlined,
                            color: Colors.blue,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(0),
                          child: Text(
                            "KARTLARIM",
                            style: Sabitler.yaziStyle2,
                          ),
                        ),
                        Icon(Icons.arrow_forward_ios),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
          Text(
            "DİĞER",
            style: Sabitler.yaziStyle3,
          ),
          Padding(
            padding: const EdgeInsets.all(5.0),
            child: Container(
              height: 40,
              width: 370,
              decoration: BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.circular(4),
              ),
              child: Padding(
                padding: const EdgeInsets.all(1),
                child: InkWell(
                  onTap: () {},
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(4),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Padding(
                          padding: EdgeInsets.all(5.0),
                          child: Icon(
                            Icons.short_text_outlined,
                            color: Colors.blue,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(0),
                          child: Text(
                            "HAKKIMIZDA",
                            style: Sabitler.yaziStyle2,
                          ),
                        ),
                        Icon(Icons.arrow_forward_ios),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
           Padding(
            padding: const EdgeInsets.all(5.0),
            child: Container(
              height: 40,
              width: 370,
              decoration: BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.circular(4),
              ),
              child: Padding(
                padding: const EdgeInsets.all(1),
                child: InkWell(
                  onTap: () {},
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(4),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Padding(
                          padding: EdgeInsets.all(5.0),
                          child: Icon(
                            Icons.money_outlined,
                            color: Colors.green,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(0),
                          child: Text(
                            "HAVALE HESAP BİLGİLERİ",
                            style: Sabitler.yaziStyle2,
                          ),
                        ),
                        Icon(Icons.arrow_forward_ios),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
           Padding(
            padding: const EdgeInsets.all(5.0),
            child: Container(
              height: 40,
              width: 370,
              decoration: BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.circular(4),
              ),
              child: Padding(
                padding: const EdgeInsets.all(1),
                child: InkWell(
                  onTap: () {},
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(4),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Padding(
                          padding: EdgeInsets.all(5.0),
                          child: Icon(
                            Icons.phone_outlined,
                            color: Colors.black,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(0),
                          child: Text(
                            "İLETİŞİM BİLGİLERi",
                            style: Sabitler.yaziStyle2,
                          ),
                        ),
                        Icon(Icons.arrow_forward_ios),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
          
          Padding(
            padding: const EdgeInsets.all(5.0),
            child: Container(
              height: 40,
              width: 370,
              decoration: BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.circular(4),
              ),
              child: Padding(
                padding: const EdgeInsets.all(1),
                child: InkWell(
                  onTap: () {
                    FirebaseAuth.instance.signOut().then((value) {
                      Navigator.push(context,
        MaterialPageRoute(builder: (context) => LoginOrRegisterPage())).onError((error, stackTrace) {
          print("Error");
        });
                    });
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(4),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Padding(
                          padding: EdgeInsets.all(5.0),
                          child: Icon(
                            Icons.exit_to_app_outlined,
                            color: Colors.red,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(0),
                          child: Text(
                            "ÇIKIŞ YAP",
                            style: Sabitler.yaziStyle2,
                          ),
                        ),
                        Icon(Icons.arrow_forward_ios),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
          
        ]),
      ),
    );;
  }
}