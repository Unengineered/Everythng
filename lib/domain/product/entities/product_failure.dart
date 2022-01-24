import 'package:freezed_annotation/freezed_annotation.dart';

part 'product_failure.freezed.dart';

@freezed
class ProductFailure with _$ProductFailure{
    const factory ProductFailure.networkFailure() = _NetworkFailure;
    const factory ProductFailure.productUnavailable() = _ProductUnavailable;
}
