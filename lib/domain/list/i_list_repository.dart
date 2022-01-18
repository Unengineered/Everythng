import 'package:dartz/dartz.dart';
import 'package:everythng/domain/list/entities/user_list.dart';
import 'package:everythng/domain/list/entities/list_failure.dart';
import 'package:everythng/domain/list/entities/item_lists.dart';

abstract class IListRepository{
Future<Either<ListFailure,ItemLists>> getLists();
// Future<Either<ListFailure,UserList>> getItems(String name);
Future<Either<ListFailure,ItemLists>> addList(String name);
Future<Either<ListFailure,ItemLists>> removeList(String name);
Future<Either<ListFailure,UserList>> addItem({required String name,required String productId});
Future<Either<ListFailure,UserList>> removeItem({required String name,required String productId});
}