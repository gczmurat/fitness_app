import 'package:fitness_app/detail%20pages/antrenmanlar/data/product.dart';
import 'package:fitness_app/detail%20pages/home%20detail/item_card.dart';
import 'package:fitness_app/detail%20pages/home%20detail/widgets/mid_row.dart';
import 'package:fitness_app/detail%20pages/home%20detail/widgets/tab_container.dart';
import 'package:flutter/material.dart';
import 'package:fitness_app/constants/app_constant.dart';
import 'package:fitness_app/detail%20pages/antrenmanlar/antrenman_listesi.dart';
import 'package:fitness_app/detail%20pages/kalori_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with TickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 5, vsync: this);
    _tabController.index = 0;
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: const Center(
          child: Image(
            image: AssetImage("images/logo.jpg"),
            width: 300,
          ),
        ),
      ),
      body: Column(
        children: [
          TabContainer(),
          SizedBox(height: 13),
          MidRow(),
          SizedBox(height: 8),
          Container(
            child: Align(
              alignment: Alignment.centerLeft,
              child: TabBar(
                isScrollable: true,
                indicatorColor: Colors.black,
                indicatorSize: TabBarIndicatorSize.tab,
                indicatorWeight: 4,
                indicatorPadding: EdgeInsets.all(4),
                controller: _tabController,
                labelColor: Colors.black,
                unselectedLabelColor: Colors.grey,
                tabs: [
                  Tab(
                    text: "En Çok Satanlar",
                  ),
                  Tab(
                    text: "Proteinler",
                  ),
                  Tab(
                    text: "Kombinasyonlar",
                  ),
                  Tab(
                    text: "Yeni Ürünler",
                  ),
                  Tab(
                    text: "Öne Çıkanlar",
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: TabBarView(
              controller: _tabController,
              children: [
                _enCokSatanlar(),
                _proteinler(),
                _kombinasyonlar(),
                _yeniUrunler(),
                _oneCikanlar()
              ],
            ),
          )
        ],
      ),
    );
  }
}

_enCokSatanlar() {
  return GridView.builder(
    itemCount: 8,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
      ),
      itemBuilder: (context, index) => ItemCard(
            product: products[0],
            onPressed: () {},
          ));
}

_proteinler() {
  return GridView.builder(
    itemCount: 8,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2, childAspectRatio: 1),
      itemBuilder: (context, index) => ItemCard(
            product: products[1],
            onPressed: () {},
          ));
}

_kombinasyonlar() {
  return GridView.builder(
    itemCount: 8,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2, childAspectRatio: 1),
      itemBuilder: (context, index) => ItemCard(
            product: products[2],
            onPressed: () {},
          ));
}

_yeniUrunler() {
  return GridView.builder(
    itemCount: 8,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2, childAspectRatio: 1),
      itemBuilder: (context, index) => ItemCard(
            product: products[3],
            onPressed: () {},
          ));
}

_oneCikanlar() {
  return GridView.builder(
      itemCount: 8,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2, childAspectRatio: 1),
      itemBuilder: (context, index) => ItemCard(
            product: products[4],
            onPressed: () {},
          ));
}
