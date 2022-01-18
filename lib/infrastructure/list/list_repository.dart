import 'dart:convert';

import 'package:everythng/core/api/url.dart';
import 'package:everythng/domain/list/entities/list_failure.dart';
import 'package:everythng/domain/list/entities/user_list.dart';
import 'package:dartz/dartz.dart';
import 'package:everythng/domain/list/entities/item_lists.dart';
import 'package:everythng/domain/list/i_list_repository.dart';
import 'package:network_kit/network_kit.dart';

class ListRepository implements IListRepository {
  final NetworkKit networkKit;

  ListRepository(this.networkKit);

  @override
  Future<Either<ListFailure, ItemLists>> getLists() async {
    final response = await networkKit.get(Uri.http(
      url,
      '/lists',
    ));
    if (response.statusCode != 200) {
      return left(const ListFailure());
    }
    return right(ItemLists.fromJson(json.decode(response.body)));
  }

   @override
  Future<Either<ListFailure, ItemLists>> addList(String name) async {
    final response = await networkKit.post(Uri.http(url, '/lists'),
        body: {"list_name": name},
        headers: {"Content-Type": "application/json"});
    if (response.statusCode != 200) {
      return left(const ListFailure());
    }
    return right(ItemLists.fromJson(json.decode(response.body)));
  }

  @override
  Future<Either<ListFailure, ItemLists>> removeList(String name) async {
    final response = await networkKit.delete(Uri.http(url, '/lists'),
        body: {"list_name": name},
        headers: {"Content-Type": "application/json"});
    if (response.statusCode != 200) {
      return left(const ListFailure());
    }
    return right(ItemLists.fromJson(json.decode(response.body)));
  }

  @override
  Future<Either<ListFailure, UserList>> addItem(
      {required String name, required String productId}) async {
    final response = await networkKit.post(Uri.http(url, '/lists/addItem'),
        body: {"list_name": name, "product_id": productId},
        headers: {"Content-Type": "application/json"});
    if (response.statusCode != 200) {
      return left(const ListFailure());
    }
    return right(UserList.fromJson(json.decode(response.body)));
  }

  @override
  Future<Either<ListFailure, UserList>> removeItem(
      {required String name, required String productId}) async {
    final response = await networkKit.delete(Uri.http(url, '/lists/deleteItem'),
        body: {"list_name": name, "product_id": productId},
        headers: {"Content-Type": "application/json"});
    if (response.statusCode != 200) {
      return left(const ListFailure());
    }
    return right(UserList.fromJson(json.decode(response.body)));
  }

  // @override
  // Future<Either<ListFailure, UserList>> getItems(String name) async {
  //   final response =
  //       await networkKit.get(Uri.http(url, '/lists', {"listName": name}));
  //   if (response.statusCode != 200) {
  //     return left(const ListFailure());
  //   }
  //   final Map<String, List<String>> data = json.decode(response.body);
  //   return right(UserList(listName: name, list: data[name]!));
  // }
 
}
