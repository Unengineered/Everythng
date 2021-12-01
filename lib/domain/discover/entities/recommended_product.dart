import 'package:freezed_annotation/freezed_annotation.dart';

part 'recommended_product.freezed.dart';
part 'recommended_product.g.dart';

@freezed
class RecommendedProduct with _$RecommendedProduct {
  const factory RecommendedProduct(
      {required String id,
        required String name,
        required String size,
        required Uri url,
        required double price}) = _RecommendedProduct;

  factory RecommendedProduct.fromJson(Map<String, dynamic> json) => _$RecommendedProductFromJson(json);
}
