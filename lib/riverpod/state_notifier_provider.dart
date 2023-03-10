import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_practice/model/shopping_item_model.dart';

final shoppingListProvider =
    StateNotifierProvider<ShoppingListNotifier, List<ShoppingItemModel>>(
  (ref) => ShoppingListNotifier(),
);

class ShoppingListNotifier extends StateNotifier<List<ShoppingItemModel>> {
  ShoppingListNotifier()
      : super([
          ShoppingItemModel(
            name: "김치",
            quantity: 3,
            hasBought: false,
            isSpicy: true,
          ),
          ShoppingItemModel(
            name: "삼겹살",
            quantity: 5,
            hasBought: true,
            isSpicy: false,
          ),
          ShoppingItemModel(
            name: "카스테라",
            quantity: 3,
            hasBought: false,
            isSpicy: false,
          ),
        ]);

  void toggleHasBought(String name) {
    state = state
        .map(
          (e) => e.name == name
              ? ShoppingItemModel(
                  name: e.name,
                  quantity: e.quantity,
                  hasBought: !e.hasBought,
                  isSpicy: e.isSpicy)
              : e,
        )
        .toList();
  }
}
