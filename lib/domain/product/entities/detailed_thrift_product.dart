
import 'package:everythng/domain/core/store_link.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'brand.dart';
import 'issue.dart';
import 'review.dart';

part 'detailed_thrift_product.freezed.dart';
part 'detailed_thrift_product.g.dart';

@freezed
class DetailedThriftProduct with _$DetailedThriftProduct{
    const factory DetailedThriftProduct({
      //required
      @JsonKey(name: "_id")
      required String id,
      required double price,
      required List<Uri> pictures,
      @JsonKey(name: "size_chart")
      required List<Map<String, String>> sizeChart,
      @JsonKey(name: "store_link")
      required StoreLink storeLink,

      //optional
      String? name,
      @JsonKey(name: "original_price")
      double? originalPrice,
      List<Issue>? issues,
      Brand? brand,
      @JsonKey(name: "customer_review")
      Review? customerReview,

}) = _DetailedThriftProduct;

    factory DetailedThriftProduct.fromJson(Map<String, dynamic> json) => _$DetailedThriftProductFromJson(json);
}