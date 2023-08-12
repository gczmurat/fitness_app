import 'package:fitness_app/constants/app_constant.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CategoryRow extends StatefulWidget {
  @override
  _CategoryRowState createState() => _CategoryRowState();
}

class _CategoryRowState extends State<CategoryRow> {
  int selectedCategory = 0;

  final List<String> categories = [
    'En Çok Satanlar',
    'Proteinler',
    'Kombinasyonlar',
    'Yeni Ürünler',
    'Öne Çıkanlar',
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black,
      height: 40,
      child: ListView.builder(
        itemCount: categories.length,
        scrollDirection: Axis.horizontal,
        itemExtent: 150,
        itemBuilder: (context, index) {
          final category = categories[index];
          final isSelected = selectedCategory == index;

          return GestureDetector(
            onTap: () {
              setState(() {
                selectedCategory = index;
              });
            },
            child: AnimatedContainer(
              duration: Duration(milliseconds: 200),
              curve: Curves.easeInOut,
              margin: EdgeInsets.symmetric(horizontal: 4),
              padding: EdgeInsets.all(8),
              decoration: BoxDecoration(
                color: isSelected ? Colors.white : Colors.black,
                borderRadius: BorderRadius.circular(0),
              ),
              child: Center(
                child: Text(
                  category,
                  style: TextStyle(
                    fontFamily: GoogleFonts.kanit().fontFamily,
                    color: isSelected ? Colors.black : Colors.white,
                    fontSize: 16,
                    fontWeight:  FontWeight.w600,
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      appBar: AppBar(
        title: Text('Kategori Seçimi'),
      ),
      body: CategoryRow(),
    ),
  ));
}
