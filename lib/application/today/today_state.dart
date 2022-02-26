part of 'today_cubit.dart';

@freezed
class TodayState with _$TodayState {
  const factory TodayState.initial() = _Initial;
  const factory TodayState.loading() = _Loading;
  const factory TodayState.loaded(
      {Either<ProductFailure, List<DetailedThriftProduct>>? products,
      Either<StoreFailure, List<StoreLink>>? stores}) = _Loaded;
  const factory TodayState.error() = _Error;
}
