import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:fitness_app/constants/app_constant.dart';
import 'package:fitness_app/global/common/navbar_provider.dart';
import 'package:fitness_app/global/common/navbar_screen.dart';

void main() {
  runApp(MultiProvider(
    providers: [
      ChangeNotifierProvider<NavbarProvider>(
        create: (_) => NavbarProvider(),
      ),
    ],
    child: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'SUPPLEFİT',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Sabitler.anaRenk,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: NavbarScreen(),
    );
  }
}


