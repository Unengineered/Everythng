import 'dart:async';

import 'package:dartz/dartz.dart';
import 'package:everythng/domain/list/entities/item_lists.dart';
import 'package:everythng/domain/list/entities/list_failure.dart';
import 'package:everythng/domain/list/i_list_repository.dart';
import 'package:injectable/injectable.dart';
import 'package:network_kit/network_kit.dart';

@Injectable(as: IListRepository)

class ListRepository implements IListRepository {
  final NetworkKit networkKit;

  ListRepository(this.networkKit);

  @override
  Either<ListFailure, Unit> getLists() {
    try {
      networkKit.send(
          system: 'list',
          function: 'get_all_lists',
          headers: {},
          body: {},
          ack: (ack) {});
      return right(unit);
    } on NetworkKitException catch (_) {
      return left(const ListFailure());
    }
  }

  @override
  Either<ListFailure, Unit> addList(
      {required String name, required String emoji}) {
    try {
      networkKit.send(
          system: 'list',
          function: 'add_list',
          headers: {},
          body: {"list_name": name, "emoji": emoji},
          ack: (ack) {});
      return right(unit);
    } on NetworkKitException catch (_) {
      return left(const ListFailure());
    }
  }

  @override
  Either<ListFailure, Unit> removeList(String name) {
    try {
      networkKit.send(
          system: 'list',
          function: 'remove_list',
          headers: {},
          body: {"list_name": name},
          ack: (ack) {});
      return right(unit);
    } on NetworkKitException catch (_) {
      return left(const ListFailure());
    }
  }

  @override
  Either<ListFailure, Unit> addItem(
      {required String name, required String productId}) {
    try {
      networkKit.send(
          system: 'list',
          function: 'add_item',
          headers: {},
          body: {"list_name": name, "product_id": productId},
          ack: (ack) {});
      return right(unit);
    } on NetworkKitException catch (_) {
      return left(const ListFailure());
    }
  }

  @override
  Either<ListFailure, Unit> removeItem(
      {required String name, required String productId}) {
    try {
      networkKit.send(
          system: 'list',
          function: 'remove_item',
          headers: {},
          body: {"list_name": name, "product_id": productId},
          ack: (ack) {});
      return right(unit);
    } on NetworkKitException catch (_) {
      return left(const ListFailure());
    }
  }

  @override
  Stream<ItemLists> listStream() {
    StreamController<ItemLists> streamController =
        StreamController<ItemLists>();
     streamController.add(ItemLists.fromJson(listJson));
    // networkKit.subscribe('list').listen((message) {
    //   switch (message.function) {
    //     case 'all_lists':
    //       streamController.add(ItemLists.fromJson(message.body));
    //       break;
    //     default:
    //       print('unknown');
    //   }
    // });
    return streamController.stream;
  }
}
const listJson = {
  "cart": [
    "dbdecdj",
  ],
  "wish_list": [],
  "lists": {
    "list1": {"emoji": "🤣", "list": ['dddddd']},
    "list2": {"emoji": "🐣", "list": ['dddddd']}
  }
};
