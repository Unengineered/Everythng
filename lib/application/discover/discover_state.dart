part of 'discover_cubit.dart';

@freezed
class DiscoverState with _$DiscoverState{
    const factory DiscoverState.loading() = _Loading;
    const factory DiscoverState.loaded({required List<RecommendedProduct> recommendedProducts, required List<RecommendedStore> recommendedStores}) = _Loaded;
    const factory DiscoverState.initialised() = _Initialised;
    const factory DiscoverState.error(String message) = _Error;
}