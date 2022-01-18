import 'package:everythng/domain/list/entities/user_list.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'item_lists.freezed.dart';

@freezed
class ItemLists with _$ItemLists {
  const factory ItemLists({
    required List<String> cart,
    required List<String> wishList,
    required List<UserList> lists,
  }) = _ItemLists;

  factory ItemLists.fromJson(Map<String, dynamic> json) {
    return ItemLists(
        cart: List<String>.from(json['cart']),
        wishList: List<String>.from(json['wish_list']),
        lists: listOfUserListfromMap(json['lists']));
  }
}
