import 'package:fitness_app/pages/ara_page.dart';
import 'package:fitness_app/pages/hesap_page.dart';
import 'package:fitness_app/pages/home_page.dart';
import 'package:fitness_app/pages/men%C3%BC_page.dart';
import 'package:fitness_app/pages/sepet_page.dart';
import 'package:flutter/material.dart';

class NavbarProvider with ChangeNotifier {
  List<NavbarDTO> items = [
    NavbarDTO(label: 'Home', widget: HomePage(), iconData: Icons.home),
    NavbarDTO(label: 'Menü', widget: MenuPage(), iconData: Icons.menu),
    NavbarDTO(label: 'Ara', widget: AraPage(), iconData: Icons.search),
    NavbarDTO(label: 'Hesabım', widget: HesapPage(), iconData: Icons.account_box),
    NavbarDTO(label: 'Sepetim', widget: SepetPage(), iconData: Icons.shop),
  ];
  int _selectedIndex = 0;

  int get selectedIndex => _selectedIndex;

  set selectedIndex(int value) {
    _selectedIndex = value;
    notifyListeners();
  }
}

class NavbarDTO {
  Widget? widget;
  String? label;
  IconData? iconData;

  NavbarDTO({this.widget, this.label, this.iconData});
}