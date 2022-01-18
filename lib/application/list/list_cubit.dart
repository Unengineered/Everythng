import 'package:bloc/bloc.dart';
import 'package:everythng/domain/list/entities/user_list.dart';
import 'package:everythng/domain/list/i_list_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'list_state.dart';
part 'list_cubit.freezed.dart';

class ListCubit extends Cubit<ListState> {
  final IListRepository _repository;
  ListCubit(this._repository) : super(const ListState.initial());

  void getLists() async {
    emit(const ListState.loading());
    final lists = await _repository.getLists();
    lists.fold(
        (failure) => emit(const ListState.error()),
        (itemLists) => emit(ListState.loaded(
            cart: itemLists.cart,
            wishList: itemLists.wishList,
            lists: itemLists.lists)));
  }

  void addList(String listName) async {
    emit(const ListState.loading());
    final lists = await _repository.addList(listName);
    lists.fold(
        (failure) => emit(const ListState.error()),
        (itemLists) => emit(ListState.loaded(
            cart: itemLists.cart,
            wishList: itemLists.wishList,
            lists: itemLists.lists)));
  }

  void removeList(String listName) async {
    emit(const ListState.loading());
    final lists = await _repository.removeList(listName);
    lists.fold(
        (failure) => emit(const ListState.error()),
        (itemLists) => emit(ListState.loaded(
            cart: itemLists.cart,
            wishList: itemLists.wishList,
            lists: itemLists.lists)));
  }

  void addItem({required String productId, required String listName}) async {
    final list =
        await _repository.addItem(name: listName, productId: productId);
    list.fold((failure) => emit(const ListState.error()), (userList) {
      state.maybeMap(
          loaded: (state) {
            final newList = state.lists;
            final index = state.lists
                .indexWhere((element) => userList.listName == element.listName);
            newList[index] = userList;
            return emit(state.copyWith(lists: newList));
          },
          orElse: () {});
    });
  }

  void removeItem({required String productId, required String listName}) async {
    final list =
        await _repository.removeItem(name: listName, productId: productId);
    list.fold((failure) => emit(const ListState.error()), (userList) {
      state.maybeMap(
          loaded: (state) {
            final index = state.lists
                .indexWhere((element) => userList.listName == element.listName);
            state.lists[index] = userList;
            return emit(state);
          },
          orElse: () {});
    });
  }
}
