import 'package:dartz/dartz.dart';
import 'package:everythng/domain/list/entities/list_failure.dart';
import 'package:everythng/domain/list/i_list_repository.dart';
import 'package:mocktail/mocktail.dart';

import '../constants.dart';

class MockListRepository extends Mock implements IListRepository {}

IListRepository getListRepository({ListFailure? listFailure}) {
  final service = MockListRepository();
  if (listFailure == null) {
    when(() => service.getLists())
        .thenReturn(right(unit));
    when(() => service.addList(name:'name',emoji: 'emoji'))
        .thenReturn(right(unit));
    when(() => service.removeList('name'))
       .thenReturn(right(unit));
    when(() => service.addItem(name: 'list1', productId: 'productId'))
       .thenReturn(right(unit));
    when(() => service.removeItem(name: 'list1', productId: 'productId'))
       .thenReturn(right(unit));
  } else {
    when(() => service.getLists())
        .thenReturn(left(const ListFailure()));
    when(() => service.addList(name:'name',emoji: 'emoji'))
        .thenReturn(left(const ListFailure()));
    when(() => service.removeList('name'))
        .thenReturn(left(const ListFailure()));
    when(() => service.addItem(name: 'list1', productId: 'productId'))
       .thenReturn(left(const ListFailure()));
    when(() => service.removeItem(name: 'list1', productId: 'productId'))
        .thenReturn(left(const ListFailure()));
  }
  return service;
}
