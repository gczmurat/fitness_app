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
    _tabController.index=0;
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
_enCokSatanlar(){
  return GridView.builder(
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                    ),
                    itemBuilder: (context, index) => ItemCard(
                          imageUrl:
                              'https://supplementler.mncdn.com/Assets/Supplementler/Thumbs/kingsize_nutrition_zma_complex_100_tablet_70267.jpeg',
                          price: 1999,
                          onPressed: () {},
                          marka: 'KingSize',
                          urun: 'ZMA',
                          agirlik: '300', 
                        ));
}

_proteinler(){
  return GridView.builder(
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                    ),
                    itemBuilder: (context, index) => ItemCard(
                          imageUrl:
                              'https://supplementler.mncdn.com/Assets/Supplementler/Thumbs/supplementlercom_whey_protein_2000_gr_76555.jpeg',
                          price: 1999,
                          onPressed: () {},
                          marka: 'BigJoy',
                          urun: 'Protein',
                          agirlik: '2000', 
                        ));
}

_kombinasyonlar(){
  return GridView.builder(
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                    ),
                    itemBuilder: (context, index) => ItemCard(
                          imageUrl:
                              'https://supplementler.mncdn.com/Assets/Supplementler/Thumbs/supplementlercom_gainer_3000_gr_bcaa_480_gr_kombinasyonu_38818.jpeg',
                          price: 1999,
                          onPressed: () {},
                          marka: 'Suplementler',
                          urun: 'Kilo',
                          agirlik: '900', 
                        ));
}

_yeniUrunler(){
  return GridView.builder(
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                    ),
                    itemBuilder: (context, index) => ItemCard(
                          imageUrl:
                              'https://supplementler.mncdn.com/Assets/Supplementler/Thumbs/hardline_progainer_3000_gr_39326.jpeg',
                          price: 1999,
                          onPressed: () {},
                          marka: 'Hard Line',
                          urun: 'Gainer',
                          agirlik: '2000', 
                        ));
}

_oneCikanlar(){
  return GridView.builder(
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                    ),
                    itemBuilder: (context, index) => ItemCard(
                          imageUrl:
                              'https://supplementler.mncdn.com/Assets/Supplementler/Thumbs/hardline_kreatin_100_mikronize_300_gr_14580.jpeg',
                          price: 1999,
                          onPressed: () {},
                          marka: 'Hard Line',
                          urun: 'Creatine',
                          agirlik: '300', 
                        ));
}



