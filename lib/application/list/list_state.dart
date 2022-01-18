part of 'list_cubit.dart';

@freezed
class ListState with _$ListState {
  const factory ListState.initial() = _Initial;
  const factory ListState.loading() = _Loading;
  const factory ListState.loaded({required List<String> cart,required List<String> wishList,required List<UserList> lists}) = _Loaded;
  const factory ListState.error() = _Error;
}

