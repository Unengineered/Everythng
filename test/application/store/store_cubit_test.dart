import 'package:bloc_test/bloc_test.dart';
import 'package:everythng/application/store/store_cubit/store_page_cubit.dart';
import 'package:everythng/domain/product/i_product_repository.dart';
import 'package:everythng/domain/store/i_store_repository.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';


class MockStoreRepository extends Mock implements IStoreRepository {}

class MockProductRepository extends Mock implements IProductRepository {}

void main() {
  final storeRepository = MockStoreRepository();
  final productRepository = MockProductRepository();

  tearDown(() {
    reset(storeRepository);
    reset(productRepository);
  });

  group('getStore', () {
    blocTest("should GET list of stores", build: () {
      return StorePageCubit(storeRepository, productRepository);
    }, act: (StorePageCubit cubit) {});

    // blocTest('should emit LoadedState when getStore returns store',
    //     build: () {
    //       when(() => storeRepository.getStore(storeId: 'storeId'))
    //           .thenAnswer((invocation) async => right(store));
    //       return StorePageCubit(storeRepository, productRepository);
    //     },
    //     act: (StorePageCubit cubit) => cubit.getStore(storeId: 'storeId'),
    //     expect: () => [StorePageState.loaded(store: store)]);
    //
    // blocTest('should emit ErrorState when getStore returns a server error',
    //     build: () {
    //       when(() => storeRepository.getStore(storeId: 'storeId')).thenAnswer(
    //           (invocation) =>
    //               Future.value(left(const StoreFailure.serverError())));
    //       return StorePageCubit(storeRepository, productRepository);
    //     },
    //     act: (StorePageCubit cubit) => cubit.getStore(storeId: 'storeId'),
    //     expect: () => [const StorePageState.error(StoreFailure.serverError())]);
    // blocTest(
    //     'should emit ErrorState when getStore returns a no storeData error',
    //     build: () {
    //       when(() => storeRepository.getStore(storeId: 'storeId')).thenAnswer(
    //           (invocation) =>
    //               Future.value(left(const StoreFailure.noStoreData())));
    //       return StorePageCubit(storeRepository, productRepository);
    //     },
    //     act: (StorePageCubit cubit) => cubit.getStore(storeId: 'storeId'),
    //     expect: () => [const StorePageState.error(StoreFailure.noStoreData())]);
  });

  // group('setStore', () {
  //   blocTest('should emit LoadedState when setStore returns store',
  //       build: () {
  //         when(() => storeRepository.setStore(store: store))
  //             .thenAnswer((invocation) async => right(store));
  //         return StorePageCubit(storeRepository);
  //       },
  //       act: (StorePageCubit cubit) => cubit.setStore(store),
  //       expect: () => [StorePageState.loaded(store: store)]);
  //
  //   blocTest('should emit ErrorState when getStore returns a server error',
  //       build: () {
  //         when(() => storeRepository.setStore(store: store)).thenAnswer(
  //             (invocation) async => left(const StoreFailure.serverError()));
  //         return StorePageCubit(storeRepository);
  //       },
  //       act: (StorePageCubit cubit) => cubit.setStore(store),
  //       expect: () => [const StorePageState.error(StoreFailure.serverError())]);
  //   blocTest('should emit ErrorState when getStore returns a upload error',
  //       build: () {
  //         when(() => storeRepository.setStore(store: store)).thenAnswer(
  //             (invocation) async => left(const StoreFailure.uploadFailed()));
  //         return StorePageCubit(storeRepository);
  //       },
  //       act: (StorePageCubit cubit) => cubit.setStore(store),
  //       expect: () => [const StorePageState.error(StoreFailure.uploadFailed())]);
  // });
}
