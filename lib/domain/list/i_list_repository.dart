import 'package:dartz/dartz.dart';
import 'package:everythng/domain/list/entities/item_lists.dart';
import 'package:everythng/domain/list/entities/list_failure.dart';

abstract class IListRepository {
  Either<ListFailure, Unit> getLists();
  Either<ListFailure, Unit> addList(
      {required String name, required String emoji});
  Either<ListFailure, Unit>removeList(String name);
  Either<ListFailure, Unit>addItem(
      {required String name, required String productId});
  Either<ListFailure, Unit> removeItem(
      {required String name, required String productId});
  Stream<ItemLists> listStream();
}
