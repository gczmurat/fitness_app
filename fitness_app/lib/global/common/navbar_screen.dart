import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:fitness_app/global/common/navbar_provider.dart';

class NavbarScreen extends StatelessWidget {
  const NavbarScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final mp = Provider.of<NavbarProvider>(
      context,
    );
    return Scaffold(
      body: IndexedStack(
        index: mp.selectedIndex,
        children: mp.items.map((e) => e.widget!).toList(),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.black,
        currentIndex: mp.selectedIndex,
        onTap: (i) {
          mp.selectedIndex = i;
        },
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.blueGrey.shade700,
        items: mp.items
            .map(
              (e) => BottomNavigationBarItem(
                icon: Icon(e.iconData),
                label: e.label,
              ),
            )
            .toList(),
      ),
    );
  }
}
