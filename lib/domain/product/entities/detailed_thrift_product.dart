import 'package:everythng/domain/discover/entities/store_link.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'brand.dart';
import 'issue.dart';
import 'review.dart';

part 'detailed_thrift_product.freezed.dart';
part 'detailed_thrift_product.g.dart';

@freezed
class DetailedThriftProduct with _$DetailedThriftProduct{
    const factory DetailedThriftProduct({
      @JsonKey(name: "_id")
      required String id,
      required String name,
      required double price,
      @JsonKey(name: "original_price")
      double? originalPrice,
      required List<Uri> pictures,
      @JsonKey(name: "size_chart")
      required Map<String, String> sizeChart,
      required List<Issue> issues,
      Brand? brand,
      @JsonKey(name: "customer_review")
      Review? customerReview,
      @JsonKey(name: "store_link")
      required StoreLink storeLink,

}) = _DetailedThriftProduct;

    factory DetailedThriftProduct.fromJson(Map<String, dynamic> json) => _$DetailedThriftProductFromJson(json);
}