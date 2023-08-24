import 'product.dart';

class CartItem {
  final Product product;
  int quantity;

  CartItem({required this.product, this.quantity = 1});
}

class Cart {
  List<CartItem> items = [];

  void addItem(Product product) {
    bool existingItem = false;
    for (var item in items) {
      if (item.product.id == product.id) {
        item.quantity++;
        existingItem = true;
        break;
      }
    }
    if (!existingItem) {
      items.add(CartItem(product: product));
    }
  }

  void removeItem(Product product) {
    items.removeWhere((item) => item.product.id == product.id);
  }

  void clearCart() {
    items.clear();
  }
}
