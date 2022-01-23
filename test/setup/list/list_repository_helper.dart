// import 'package:dartz/dartz.dart';
// import 'package:everythng/domain/list/entities/list_failure.dart';
// import 'package:everythng/domain/list/i_list_repository.dart';
// import 'package:mocktail/mocktail.dart';

// import '../constants.dart';

// class MockListRepository extends Mock implements IListRepository {}

// IListRepository getListRepository({ListFailure? listFailure}) {
//   final service = MockListRepository();
//   if (listFailure == null) {
//     when(() => service.getLists())
//         .thenAnswer((invocation) async => right(itemLists));
//     when(() => service.addList('name'))
//         .thenAnswer((invocation) async => right(itemLists));
//     when(() => service.removeList('name'))
//         .thenAnswer((invocation) async => right(itemLists));
//     when(() => service.addItem(name: 'list1', productId: 'productId'))
//         .thenAnswer((invocation) async => right(userList));
//     when(() => service.removeItem(name: 'list1', productId: 'productId'))
//         .thenAnswer((invocation) async => right(userList));
//   } else {
//     when(() => service.getLists())
//         .thenAnswer((invocation) async => left(const ListFailure()));
//     when(() => service.addList('name'))
//         .thenAnswer((invocation) async => left(const ListFailure()));
//     when(() => service.removeList('name'))
//         .thenAnswer((invocation) async => left(const ListFailure()));
//     when(() => service.addItem(name: 'list1', productId: 'productId'))
//         .thenAnswer((invocation) async => left(const ListFailure()));
//     when(() => service.removeItem(name: 'list1', productId: 'productId'))
//         .thenAnswer((invocation) async => left(const ListFailure()));
//   }
//   return service;
// }
