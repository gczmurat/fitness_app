import 'package:firebase_core/firebase_core.dart';
import 'package:fitness_app/constants/app_constant.dart';
import 'package:fitness_app/detail%20pages/antrenmanlar/data/cart.dart';
import 'package:fitness_app/global/common/navbar_provider.dart';
import 'package:fitness_app/hessap%20detail/login_or_register_page.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MultiProvider(
    providers: [
      
      ChangeNotifierProvider(create: (context) => Shop(),),
      ChangeNotifierProvider<NavbarProvider>(
        create: (_) => NavbarProvider(),
      ),
    ],
    child: const MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  //final Future<FirebaseApp> _initialization = Firebase.initializeApp();
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
      home: //FutureBuilder(future: _initialization,builder: (context, snapshot) {
        //if(snapshot.hasError){
        //  return Center(child: Text("404"),);
        //} else if(snapshot.hasData){
          //return NavbarScreen();
        //} else{
          //return Center(child: CircularProgressIndicator(),);
        //}
      //} ,);,
      LoginOrRegisterPage(),
    );
  }
}