part of 'store_page_cubit.dart';

@freezed
class StorePageState with _$StorePageState {
  const factory StorePageState.initial() = _Initial;
  const factory StorePageState.loaded({Either<StoreFailure, StoreLink>? storeLink, Either<ProductFailure, List<DetailedThriftProduct>>? storeProducts}) = _Loaded;
  const factory StorePageState.error(StoreFailure storeFailure) = _Error;
  const factory StorePageState.loading() = _Loading;
}
