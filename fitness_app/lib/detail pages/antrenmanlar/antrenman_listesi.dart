import 'package:fitness_app/constants/app_constant.dart';
import 'package:fitness_app/detail%20pages/antrenmanlar/antrenman_detay.dart';
import 'package:fitness_app/detail%20pages/antrenmanlar/data/hareketler.dart';
import 'package:fitness_app/detail%20pages/antrenmanlar/data/strings.dart';
import 'package:flutter/material.dart';

class AntrenmanListesi extends StatelessWidget {
  late List<Antrenman> tumAntrenmanlar;

  AntrenmanListesi() {
    tumAntrenmanlar = veriKaynaginiHazirla();
  }

  final List<String> kartResimleri = [
    'images/göğüs.jpg',
    'images/omuz.jpg',
    'images/sırt.jpg',
    'images/kol.jpg',
    'images/bacak.jpg',
  ];
  final List<String> Antrneman_Bolgeleri = [
    "Göğüs Hareketleri",
    "Omuz Hareketleri",
    "Sırt Hareketleri",
    "Kol Hareketleri",
    "Bacak Hareketleri",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: Text("Antrenmanlar", style: Sabitler.yaziStyle4),
        toolbarHeight: 45,
        centerTitle: true,
        backgroundColor: Colors.black,
      ),
      body: GridView.builder(
        padding: EdgeInsets.all(5.0),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisSpacing: 9.0,
          crossAxisSpacing: 9.0,
        ),
        itemCount: kartResimleri.length,
        itemBuilder: (BuildContext context, int index) {
          return InkWell(
            onTap: () {
              Navigator.of(context).push(
                PageRouteBuilder(
                  pageBuilder: (context, animation, secondaryAnimation) {
                    return AntrenmanDetay(
                        secilenAntrenman: tumAntrenmanlar[index]);
                  },
                ),
              );
            },
            child: Stack(
              children: [
                Card(
                  elevation: 5,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(4.0),
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(4.0),
                    child: Image.asset(
                      kartResimleri[index],
                      width: 170,
                      height: 170,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Positioned(
                  bottom: 0,
                  left: 0,
                  right: 0,
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.black.withOpacity(0.6),
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(10.0),
                        bottomRight: Radius.circular(10.0),
                      ),
                    ),
                    padding: EdgeInsets.symmetric(vertical: 3.0),
                    child: Text(
                      Antrneman_Bolgeleri[index],
                      style: Sabitler.yaziStyle2.copyWith(color: Colors.white),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}

List<Antrenman> veriKaynaginiHazirla() {
  List<Antrenman> gecici = [];
  for (int i = 0; i < Strings.Bolge_Adlari.length; i++) {
    var bolgeAdi = Strings.Bolge_Adlari[i];
    var hareketAdi = Strings.Hareket_Adlari[i][0];
    var hareketResim = Strings.Bolge_Adlari[i].toLowerCase() + "${i + 1}.jpg";
    Antrenman eklenecekAntrenman =
        Antrenman(bolgeAdi, hareketAdi as String, hareketResim);
    gecici.add(eklenecekAntrenman);
  }
  return gecici;
}
