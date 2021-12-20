part of 'store_cubit.dart';

@freezed
class StoreState with _$StoreState {
  const factory StoreState.initial() = _Initial;
  const factory StoreState.loaded({required Store store}) = _Loaded;
  const factory StoreState.error(StoreFailure storeFailure) = _Error;
  const factory StoreState.loading() = _Loading;
}
