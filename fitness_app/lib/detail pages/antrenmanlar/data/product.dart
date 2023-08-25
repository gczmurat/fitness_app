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
      image:
          "https://supplementler.mncdn.com/Assets/Supplementler/Thumbs/kingsize_nutrition_zma_complex_100_tablet_70267.jpeg",
      description:
          "Kingsize Beast Mode, sporcuların antrenman sınırlarını bir üst seviyeye taşımalarına yardımcı olmak için geliştirilmiş bir NOX ürünüdür. Antrenman öncesi alınan bir pre-workout ürünü olan Kingsize Beast Mode, kompleks içeriği sayesinde yoğun antrenman yapan sporculara ihtiyaçları olan NOX etkisini sağlamayı hedefler.; fermente BCAA, Betain ve Kreatin Monohidrat bakımından da zengin bir üründür.Kingsize Beast Mode, sporcuların antrenman sınırlarını bir üst seviyeye taşımalarına yardımcı olmak için geliştirilmiş bir NOX ürünüdür. Antrenman öncesi alınan bir pre-workout ürünü olan Kingsize Beast Mode, kompleks içeriği sayesinde yoğun antrenman yapan sporculara ihtiyaçları olan NOX etkisini sağlamayı hedefler.; fermente BCAA, Betain ve Kreatin Monohidrat bakımından da zengin bir üründür.",
      aroma: ["Kakao", "Muz", "Çilek", "Badem"],
      price: 200,
      id: 1,
      weight: 300),
  Product(
      brand: "Big Joy",
      crop: "Protein",
      image:
          "https://supplementler.mncdn.com/Assets/Supplementler/Thumbs/big_joy_big_whey_classic_whey_protein_2376_gr_29218.jpeg",
      description:
          "Kingsize Beast Mode, sporcuların antrenman sınırlarını bir üst seviyeye taşımalarına yardımcı olmak için geliştirilmiş bir NOX ürünüdür. Antrenman öncesi alınan bir pre-workout ürünü olan Kingsize Beast Mode, kompleks içeriği sayesinde yoğun antrenman yapan sporculara ihtiyaçları olan NOX etkisini sağlamayı hedefler.; fermente BCAA, Betain ve Kreatin Monohidrat bakımından da zengin bir üründür.Kingsize Beast Mode, sporcuların antrenman sınırlarını bir üst seviyeye taşımalarına yardımcı olmak için geliştirilmiş bir NOX ürünüdür. Antrenman öncesi alınan bir pre-workout ürünü olan Kingsize Beast Mode, kompleks içeriği sayesinde yoğun antrenman yapan sporculara ihtiyaçları olan NOX etkisini sağlamayı hedefler.; fermente BCAA, Betain ve Kreatin Monohidrat bakımından da zengin bir üründür.",
      aroma: ["Kakao", "Muz", "Çilek", "Badem"],
      price: 2750,
      id: 2,
      weight: 2000),
  Product(
      brand: "Suplementler",
      crop: "Kilo",
      image:
          "https://supplementler.mncdn.com/Assets/Supplementler/Thumbs/supplementlercom_gainer_3000_gr_creatine_500_gr_kombinasyonu_38817.jpeg",
      description:
          "Kingsize Beast Mode, sporcuların antrenman sınırlarını bir üst seviyeye taşımalarına yardımcı olmak için geliştirilmiş bir NOX ürünüdür. Antrenman öncesi alınan bir pre-workout ürünü olan Kingsize Beast Mode, kompleks içeriği sayesinde yoğun antrenman yapan sporculara ihtiyaçları olan NOX etkisini sağlamayı hedefler.; fermente BCAA, Betain ve Kreatin Monohidrat bakımından da zengin bir üründür.Kingsize Beast Mode, sporcuların antrenman sınırlarını bir üst seviyeye taşımalarına yardımcı olmak için geliştirilmiş bir NOX ürünüdür. Antrenman öncesi alınan bir pre-workout ürünü olan Kingsize Beast Mode, kompleks içeriği sayesinde yoğun antrenman yapan sporculara ihtiyaçları olan NOX etkisini sağlamayı hedefler.; fermente BCAA, Betain ve Kreatin Monohidrat bakımından da zengin bir üründür.",
      aroma: ["Kakao", "Muz", "Çilek", "Badem"],
      price: 2300,
      id: 3,
      weight: 900),
  Product(
      brand: "Big Joy",
      crop: "Gainer",
      image:
          "https://supplementler.mncdn.com/Assets/Supplementler/Thumbs/big_joy_big_mass_gh_factors_3000_gr_22490.jpeg",
      description:
          "Kingsize Beast Mode, sporcuların antrenman sınırlarını bir üst seviyeye taşımalarına yardımcı olmak için geliştirilmiş bir NOX ürünüdür. Antrenman öncesi alınan bir pre-workout ürünü olan Kingsize Beast Mode, kompleks içeriği sayesinde yoğun antrenman yapan sporculara ihtiyaçları olan NOX etkisini sağlamayı hedefler.; fermente BCAA, Betain ve Kreatin Monohidrat bakımından da zengin bir üründür.Kingsize Beast Mode, sporcuların antrenman sınırlarını bir üst seviyeye taşımalarına yardımcı olmak için geliştirilmiş bir NOX ürünüdür. Antrenman öncesi alınan bir pre-workout ürünü olan Kingsize Beast Mode, kompleks içeriği sayesinde yoğun antrenman yapan sporculara ihtiyaçları olan NOX etkisini sağlamayı hedefler.; fermente BCAA, Betain ve Kreatin Monohidrat bakımından da zengin bir üründür.",
      aroma: ["Kakao", "Muz", "Çilek", "Badem"],
      price: 2500,
      id: 4,
      weight: 3000),
  Product(
      brand: "HardLine",
      crop: "Creatine",
      image:
          "https://supplementler.mncdn.com/Assets/Supplementler/Thumbs/hardline_kreatin_100_mikronize_300_gr_14580.jpeg",
      description:
          "Kingsize Beast Mode, sporcuların antrenman sınırlarını bir üst seviyeye taşımalarına yardımcı olmak için geliştirilmiş bir NOX ürünüdür. Antrenman öncesi alınan bir pre-workout ürünü olan Kingsize Beast Mode, kompleks içeriği sayesinde yoğun antrenman yapan sporculara ihtiyaçları olan NOX etkisini sağlamayı hedefler.; fermente BCAA, Betain ve Kreatin Monohidrat bakımından da zengin bir üründür.Kingsize Beast Mode, sporcuların antrenman sınırlarını bir üst seviyeye taşımalarına yardımcı olmak için geliştirilmiş bir NOX ürünüdür. Antrenman öncesi alınan bir pre-workout ürünü olan Kingsize Beast Mode, kompleks içeriği sayesinde yoğun antrenman yapan sporculara ihtiyaçları olan NOX etkisini sağlamayı hedefler.; fermente BCAA, Betain ve Kreatin Monohidrat bakımından da zengin bir üründür.",
      aroma: ["Aromasız"],
      price: 500,
      id: 5,
      weight: 300),
  Product(
      brand: "HardLine",
      crop: "Multi Vitamin",
      image:
          "https://supplementler.mncdn.com/Assets/Supplementler/Thumbs/hardline_vitamin_mineral_120_tablet_39318.jpeg",
      description: "Lorem İpsum",
      aroma: ["Aromasız"],
      price: 200,
      id: 6,
      weight: 120),
  Product(
      brand: "Big Joy",
      crop: "Glutamine",
      image:
          "https://supplementler.mncdn.com/Assets/Supplementler/Thumbs/big_joy_gluta_big_100_glutamine_powder_420_gr_13479.jpeg",
      description: "Lorem İpsum",
      aroma: ["Aromasız"],
      price: 450,
      id: 7,
      weight: 420),
  Product(
      brand: "King Size",
      crop: "Pre-Workout",
      image:
          "https://supplementler.mncdn.com/Assets/Supplementler/Thumbs/kingsize_nutrition_beast_mode_1000_gr_70291.jpeg",
      description: "Lorem İpsum",
      aroma: ["Aromasız"],
      price: 600,
      id: 8,
      weight: 1000),
];


