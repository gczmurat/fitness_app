import 'package:flutter/cupertino.dart';

class Product {
  final String brand, crop, image, description;
  final price, id, weight;
  final List aroma;

  Product(
      {required this.brand,
      required this.crop,
      required this.image,
      required this.description,
      required this.aroma,
      required this.price,
      required this.id,
      required this.weight});
}

List<Product> products = [
  Product(
      brand: "KingSize",
      crop: "ZMA",
      image: "https://supplementler.mncdn.com/Assets/Supplementler/Thumbs/kingsize_nutrition_zma_complex_100_tablet_70267.jpeg",
      description: "Lorem İpsum",
      aroma: ["Kakao","Muz","Çilek","Badem"],
      price: 350,
      id: 1,
      weight: 300),
  Product(
      brand: "Big Joy",
      crop: "Protein",
      image: "https://supplementler.mncdn.com/Assets/Supplementler/Thumbs/big_joy_big_whey_classic_whey_protein_2376_gr_29218.jpeg",
      description: "Lorem İpsum",
      aroma: ["Kakao","Muz","Çilek","Badem"],
      price: 2750,
      id: 2,
      weight: 2000),
  Product(
      brand: "Suplementler",
      crop: "Kilo",
      image: "https://supplementler.mncdn.com/Assets/Supplementler/Thumbs/supplementlercom_gainer_3000_gr_creatine_500_gr_kombinasyonu_38817.jpeg",
      description: "Lorem İpsum",
      aroma: ["Kakao","Muz","Çilek","Badem"],
      price: 2300,
      id: 3,
      weight: 900),
  Product(
      brand: "Big Joy",
      crop: "Gainer",
      image: "https://supplementler.mncdn.com/Assets/Supplementler/Thumbs/big_joy_big_mass_gh_factors_3000_gr_22490.jpeg",
      description: "Lorem İpsum",
      aroma: ["Kakao","Muz","Çilek","Badem"],
      price: 2500,
      id: 4,
      weight: 3000),
  Product(
      brand: "HardLine",
      crop: "Creatine",
      image: "https://supplementler.mncdn.com/Assets/Supplementler/Thumbs/hardline_kreatin_100_mikronize_300_gr_14580.jpeg",
      description: "Lorem İpsum",
      aroma: ["Aromasız"],
      price: 500,
      id: 5,
      weight: 300),
];
