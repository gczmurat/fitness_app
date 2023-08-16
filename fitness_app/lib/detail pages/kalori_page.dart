import 'package:fitness_app/constants/app_constant.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(KaloriHesaplamaApp());
}

class KaloriHesaplamaApp extends StatefulWidget {
  @override
  _KaloriHesaplamaAppState createState() => _KaloriHesaplamaAppState();
}

class _KaloriHesaplamaAppState extends State<KaloriHesaplamaApp> {
  final formKey = GlobalKey<FormState>();
  String cinsiyet = "Erkek";
  double yas = 25;
  double agirlik = 70;
  double boy = 175;
  double bmr = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, // Debug yazısını kaldırma
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.black,
          leading: IconButton(
            icon: Icon(Icons.arrow_back_ios),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
          title: Text(
            'Kalori Hesaplama',
            style: TextStyle(color: Colors.white),
          ),
        ),
        body: ListView(
          padding: EdgeInsets.all(16.0),
          children: [
            Form(
              key: formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  DropdownButtonFormField<String>(
                    value: cinsiyet,
                    onChanged: (value) {
                      setState(() {
                        cinsiyet = value!;
                      });
                    },
                    items: ['Erkek', 'Kadın']
                        .map((String value) => DropdownMenuItem<String>(
                              value: value,
                              child: Text(value),
                            ))
                        .toList(),
                    dropdownColor: Colors.white,
                    decoration: InputDecoration(
                      labelText: 'Cinsiyet',
                      labelStyle: TextStyle(
                        color: cinsiyet == "Erkek" ? Colors.blue : Colors.pink,
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5.0),
                        borderSide: BorderSide(
                            color:
                                cinsiyet == "Erkek" ? Colors.blue : Colors.pink,
                            width: 2.0),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5.0),
                        borderSide:
                            BorderSide(color: Colors.grey[400]!, width: 1.0),
                      ),
                      filled: true,
                      fillColor: Colors.grey[200],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextFormField(
                      keyboardType: TextInputType.number,
                      initialValue: yas.toString(),
                      decoration: InputDecoration(
                        labelText: 'Yaş',
                        labelStyle: Sabitler.yaziStyle2,
                        filled: true, 
                        fillColor: Colors.grey[200], 
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5.0),
                          borderSide:
                              BorderSide(color: Colors.black, width: 2.0),
                        ),
                      ),
                      onChanged: (value) {
                        setState(() {
                          yas = double.tryParse(value) ?? 0;
                        });
                      },
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextFormField(
                      keyboardType: TextInputType.number,
                      initialValue: agirlik.toString(),
                      decoration: InputDecoration(
                        labelText: 'Ağırlık (kg)',
                        labelStyle: Sabitler.yaziStyle2,
                        filled: true, 
                        fillColor: Colors.grey[200], 
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5.0),
                          borderSide:
                              BorderSide(color: Colors.black, width: 2.0),
                        ),
                      ),
                      onChanged: (value) {
                        setState(() {
                          agirlik = double.tryParse(value) ?? 0;
                        });
                      },
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextFormField(
                      keyboardType: TextInputType.number,
                      initialValue: boy.toString(),
                      decoration: InputDecoration(
                        labelText: 'Boy (cm)',
                        labelStyle: Sabitler.yaziStyle2,
                        filled: true, 
                        fillColor: Colors.grey[200], 
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5.0),
                          borderSide:
                              BorderSide(color: Colors.black, width: 2.0),
                        ),
                      ),
                      onChanged: (value) {
                        setState(() {
                          boy = double.tryParse(value) ?? 0;
                        });
                      },
                    ),
                  ),
                  SizedBox(height: 16),
                  ElevatedButton.icon(
                    onPressed: _hesapla,
                    icon: Icon(Icons.arrow_back_ios_new),
                    label: Text(
                      'Hesapla',
                      style: Sabitler.yaziStyle,
                    ),
                    style: ElevatedButton.styleFrom(
                      primary: Colors.black,
                    ),
                  ),
                  SizedBox(height: 16),
                  Center(
                      child: Text(
                    'Günlük Alınması Gereken Minimum Kalori',
                    style: Sabitler.yaziStyle2,
                  )),
                  SizedBox(height: 16),
                  Center(
                      child: Text(
                    '$bmr',
                    style: Sabitler.yaziStyle2,
                  )),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  void _hesapla() {
    if (formKey.currentState!.validate()) {
      double tempBMR;

      if (cinsiyet == "Erkek") {
        tempBMR = 10 * agirlik + 6.25 * boy - 5 * yas + 5;
      } else {
        tempBMR = 10 * agirlik + 6.25 * boy - 5 * yas - 161;
      }

      setState(() {
        bmr = tempBMR;
      });
    }
  }
}
