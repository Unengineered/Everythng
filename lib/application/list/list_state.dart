part of 'list_cubit.dart';

@freezed
class ListState with _$ListState {
  const factory ListState.initial() = _Initial;
  const factory ListState.loading() = _Loading;
  const factory ListState.loaded(ItemLists itemLists) = _Loaded;
  const factory ListState.error() = _Error;
}

