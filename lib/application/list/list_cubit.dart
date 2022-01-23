import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:everythng/domain/list/entities/item_lists.dart';
import 'package:everythng/domain/list/i_list_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'list_state.dart';
part 'list_cubit.freezed.dart';

@lazySingleton
class ListCubit extends Cubit<ListState> {
  final IListRepository _repository;
  ListCubit(this._repository) : super(const ListState.initial());

  void initialise(){
    getLists();
    getListStream();
  }

  void getLists() {
    emit(const ListState.loading());
    final result = _repository.getLists();
    result.fold((failure) => {
      Future.delayed(const Duration(seconds: 2), (){
          log("Retrying for profile data");
          getLists();
        })
    }, (unit) => emit(const ListState.loading()));
  }

  void addList({required String name, required String emoji}) async {
    emit(const ListState.loading());
    _repository.addList(name: name, emoji: emoji);
  }

  void removeList(String name) async {
    emit(const ListState.loading());
    _repository.removeList(name);
  }

  void addItem({required String productId, required String listName}) {
    emit(const ListState.loading());
    _repository.addItem(name: listName, productId: productId);
  }

  void removeItem({required String productId, required String listName}) {
    emit(const ListState.loading());
    _repository.removeItem(name: listName, productId: productId);
  }

  void getListStream() {
    emit(const ListState.loading());
    _repository.listStream().listen((itemLists) {
      emit(ListState.loaded(itemLists));
    });
  }
}
