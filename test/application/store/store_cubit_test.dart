import 'package:bloc_test/bloc_test.dart';
import 'package:dartz/dartz.dart';
import 'package:everythng/application/store/store_cubit/store_cubit.dart';
import 'package:everythng/domain/store/entities/store_failure.dart';
import 'package:everythng/domain/store/i_store_repository.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

class MockStoreRepository extends Mock implements IStoreRepository {}

void main() {
  final service = MockStoreRepository();
  group('getStore', () {
    blocTest('should emit LoadedState when getStore returns store',
        build: () {
          when(() => service.getStore(storeId: 'storeId'))
              .thenAnswer((invocation) async => right(store));
          return StoreCubit(service);
        },
        act: (StoreCubit cubit) => cubit.getStore(storeId: 'storeId'),
        expect: () => [StoreState.loaded(store: store)]);

    blocTest('should emit ErrorState when getStore returns a server error',
        build: () {
          when(() => service.getStore(storeId: 'storeId')).thenAnswer(
              (invocation) =>
                  Future.value(left(const StoreFailure.serverError())));
          return StoreCubit(service);
        },
        act: (StoreCubit cubit) => cubit.getStore(storeId: 'storeId'),
        expect: () => [const StoreState.error(StoreFailure.serverError())]);
    blocTest(
        'should emit ErrorState when getStore returns a no storeData error',
        build: () {
          when(() => service.getStore(storeId: 'storeId')).thenAnswer(
              (invocation) =>
                  Future.value(left(const StoreFailure.noStoreData())));
          return StoreCubit(service);
        },
        act: (StoreCubit cubit) => cubit.getStore(storeId: 'storeId'),
        expect: () => [const StoreState.error(StoreFailure.noStoreData())]);
  });

  group('setStore', () {
    blocTest('should emit LoadedState when setStore returns store',
        build: () {
          when(() => service.setStore(store: store))
              .thenAnswer((invocation) async => right(store));
          return StoreCubit(service);
        },
        act: (StoreCubit cubit) => cubit.setStore(store),
        expect: () => [StoreState.loaded(store: store)]);

    blocTest('should emit ErrorState when getStore returns a server error',
        build: () {
          when(() => service.setStore(store: store)).thenAnswer(
              (invocation) async => left(const StoreFailure.serverError()));
          return StoreCubit(service);
        },
        act: (StoreCubit cubit) => cubit.setStore(store),
        expect: () => [const StoreState.error(StoreFailure.serverError())]);
    blocTest('should emit ErrorState when getStore returns a upload error',
        build: () {
          when(() => service.setStore(store: store)).thenAnswer(
              (invocation) async => left(const StoreFailure.uploadFailed()));
          return StoreCubit(service);
        },
        act: (StoreCubit cubit) => cubit.setStore(store),
        expect: () => [const StoreState.error(StoreFailure.uploadFailed())]);
  });

  
}
