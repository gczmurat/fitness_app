import 'package:fitness_app/detail%20pages/antrenmanlar/data/product.dart';
import 'package:fitness_app/detail%20pages/home%20detail/item_card.dart';
import 'package:fitness_app/detail%20pages/home%20detail/widgets/mid_row.dart';
import 'package:fitness_app/detail%20pages/home%20detail/widgets/tab_container.dart';
import 'package:flutter/material.dart';

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
          Container(
            child: Align(
              alignment: Alignment.centerLeft,
              child: TabBar(
                isScrollable: true,
                indicatorColor: Colors.black,
                indicatorSize: TabBarIndicatorSize.tab,
                indicatorWeight: 3,
                indicatorPadding: EdgeInsets.all(4),
                controller: _tabController,
                labelColor: Colors.black,
                unselectedLabelColor: Colors.grey,
                tabs: [
                  Tab(
                    text: "Tüm Ürünler",
                  ),
                  Tab(
                    text: "Proteinler",
                  ),
                  Tab(
                    text: "Pre-Workout",
                  ),
                  Tab(
                    text: "Vitaminler",
                  ),
                  Tab(
                    text: "Kreatin",
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: TabBarView(
              controller: _tabController,
              children: [
                _tumUrunler(),
                _proteinler(),
                _preWorkout(),
                _vitaminler(),
                _kreatin()
              ],
            ),
          )
        ],
      ),
    );
  }
}

_kreatin() {
  return GridView.builder(
    itemCount: 8,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
      ),
      itemBuilder: (context, index) => ItemCard(
            product: products[4],
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

_preWorkout() {
  return GridView.builder(
    itemCount: 8,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2, childAspectRatio: 1),
      itemBuilder: (context, index) => ItemCard(
            product: products[2],
            onPressed: () {},
          ));
}

_vitaminler() {
  return GridView.builder(
    itemCount: 8,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2, childAspectRatio: 1),
      itemBuilder: (context, index) => ItemCard(
            product: products[3],
            onPressed: () {},
          ));
}

_tumUrunler() {
  return GridView.builder(
      itemCount: products.length,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2, childAspectRatio: 1),
      itemBuilder: (context, index) => ItemCard(
            product: products[index],
            onPressed: () {},
          ));
}
