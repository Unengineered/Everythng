part of 'detailed_thrift_product_cubit.dart';

@freezed
class DetailedThriftProductState with _$DetailedThriftProductState{
    const factory DetailedThriftProductState.initial() = _Initial;
    const factory DetailedThriftProductState.error({required ProductFailure failure}) = _Error;
    const factory DetailedThriftProductState.loading() = _Loading;
    const factory DetailedThriftProductState.loaded({required DetailedThriftProduct detailedThriftProduct}) = _Loaded;
}