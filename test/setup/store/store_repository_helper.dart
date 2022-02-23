import 'package:dartz/dartz.dart';
import 'package:everythng/domain/store/entities/store_failure.dart';
import 'package:everythng/domain/store/i_store_repository.dart';
import 'package:mocktail/mocktail.dart';

import '../constants.dart';

class MockStoreRepository extends Mock implements IStoreRepository {}

IStoreRepository getStoreRepository(
    {StoreFailure? storeFailure}) {
  final service = MockStoreRepository();
  if (storeFailure == null) {
    when(() => service.getStore(storeId: 'storeId'))
        .thenAnswer((invocation) async => right(store));
    when(() => service.setStore(store: store))
        .thenAnswer((invocation) async => right(store));
  } else {
    when(() => service.getStore(storeId: 'storeId'))
        .thenAnswer((invocation)  => Future.value(left(storeFailure)));
    when(() => service.setStore(store: store))
        .thenAnswer((invocation) async => left(storeFailure));
  }
  return service;
}
