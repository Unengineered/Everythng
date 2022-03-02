// import 'package:bloc_test/bloc_test.dart';
// import 'package:everythng/application/list/list_cubit.dart';
// import 'package:everythng/domain/list/entities/list_failure.dart';
// import 'package:flutter_test/flutter_test.dart';

// import '../../setup/constants.dart';
// import '../../setup/list/list_repository_helper.dart';

// void main() {
//   group('getLists', () {
//     blocTest(
//         'should emit LoadedState when getLists returns ItemLists',
//         build: () => ListCubit(getListRepository()),
//         act: (ListCubit cubit) => cubit.getLists(),
//         expect: () => [
//               const ListState.loading(),
//               ListState.loaded(cart: itemLists.cart, wishList: itemLists.wishList, lists: itemLists.lists)
//             ]);

//     blocTest(
//         'should emit ErrorState when getLists returns a server error',
//         build: () => ListCubit(getListRepository(listFailure: const ListFailure())),
//         act:  (ListCubit cubit) => cubit.getLists(),
//         expect: () => [
//               const ListState.loading(),
//               const ListState.error()
//             ]);
//   });
//   group('addList', () {
//     blocTest(
//         'should emit LoadedState when addList returns ItemLists',
//         build: () => ListCubit(getListRepository()),
//         act: (ListCubit cubit) => cubit.addList('name'),
//         expect: () => [
//               const ListState.loading(),
//               ListState.loaded(cart: itemLists.cart, wishList: itemLists.wishList, lists: itemLists.lists)
//             ]);

//     blocTest(
//         'should emit ErrorState when addList returns a server error',
//         build: () => ListCubit(getListRepository(listFailure: const ListFailure())),
//         act:  (ListCubit cubit) => cubit.addList('name'),
//         expect: () => [
//               const ListState.loading(),
//               const ListState.error()
//             ]);
//   });
//   group('removeList', () {
//     blocTest(
//         'should emit LoadedState when removeList returns ItemLists',
//         build: () => ListCubit(getListRepository()),
//         act: (ListCubit cubit) => cubit.removeList('name'),
//         expect: () => [
//               const ListState.loading(),
//               ListState.loaded(cart: itemLists.cart, wishList: itemLists.wishList, lists: itemLists.lists)
//             ]);

//     blocTest(
//         'should emit ErrorState when removeList returns a server error',
//         build: () => ListCubit(getListRepository(listFailure: const ListFailure())),
//         act:  (ListCubit cubit) => cubit.removeList('name'),
//         expect: () => [
//               const ListState.loading(),
//               const ListState.error()
//             ]);
//   });
//   group('addItem', () {
//     blocTest(
//         'should emit LoadedState when addItem returns ItemLists',
//         build: () => ListCubit(getListRepository()),
//         act: (ListCubit cubit) => cubit.addItem(listName: 'list1', productId: 'productId'),
//         expect: () => [
//               ListState.loaded(cart: itemLists.cart, wishList: itemLists.wishList, lists: itemLists.lists)
//             ]);

//     blocTest(
//         'should emit ErrorState when addItem returns a server error',
//         build: () => ListCubit(getListRepository(listFailure: const ListFailure())),
//         act:  (ListCubit cubit) => cubit.addItem(listName: 'list1', productId: 'productId'),
//         expect: () => [
//               const ListState.error()
//             ]);
//   });
//   group('removeItem', () {
//     blocTest(
//         'should emit LoadedState when removeList returns ItemLists',
//         build: () => ListCubit(getListRepository()),
//         act: (ListCubit cubit) => cubit.removeList('name'),
//         expect: () => [
//               const ListState.loading(),
//               ListState.loaded(cart: itemLists.cart, wishList: itemLists.wishList, lists: itemLists.lists)
//             ]);

//     blocTest(
//         'should emit ErrorState when removeList returns a server error',
//         build: () => ListCubit(getListRepository(listFailure: const ListFailure())),
//         act:  (ListCubit cubit) => cubit.removeList('name'),
//         expect: () => [
//               const ListState.loading(),
//               const ListState.error()
//             ]);
//   });

// }

void main(){}