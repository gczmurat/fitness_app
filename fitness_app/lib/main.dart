import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:fitness_app/constants/app_constant.dart';
import 'package:fitness_app/global/common/navbar_provider.dart';
import 'package:fitness_app/global/common/navbar_screen.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  //await Firebase.initializeApp();
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
  final Future<FirebaseApp> _initialization = Firebase.initializeApp();
   MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'SUPPLEFİT',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Sabitler.anaRenk,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: FutureBuilder(future: _initialization,builder: (context, snapshot) {
        if(snapshot.hasError){
          return Center(child: Text("404"),);
        } else if(snapshot.hasData){
          return NavbarScreen();
        } else{
          return Center(child: CircularProgressIndicator(),);
        }
      } ,),
      //NavbarScreen(),
    );
  }
}


