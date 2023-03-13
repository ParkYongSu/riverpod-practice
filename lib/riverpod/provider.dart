import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_practice/model/shopping_item_model.dart';
import 'package:riverpod_practice/riverpod/state_notifier_provider.dart';

final filteredShoppingListProvider =
    StateProvider<List<ShoppingItemModel>>((ref) {
  final filterType = ref.watch(filterTypeProvider);
  final shoppingList = ref.watch(shoppingListProvider);

  if (filterType == FilterType.all) return shoppingList;

  return shoppingList
      .where((element) =>
          filterType == FilterType.spicy ? element.isSpicy : !element.isSpicy)
      .toList();
});

enum FilterType {
  all,
  spicy,
  notSpicy,
}

final filterTypeProvider = StateProvider<FilterType>((ref) => FilterType.all);
