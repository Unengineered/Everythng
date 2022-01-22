import 'package:everythng/domain/discover/entities/store_link.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'brand.dart';
import 'issue.dart';
import 'review.dart';
import 'size_chart.dart';

part 'detailed_thrift_product.freezed.dart';

@freezed
class DetailedThriftProduct with _$DetailedThriftProduct{
    const factory DetailedThriftProduct({
      required String id,
      required String name,
      required double price,
      double? originalPrice,
      required List<Uri> pictures,
      required SizeChart sizeChart,
      required List<Issue> issues,
      Brand? brand,
      Review? customerReview,
      required StoreLink storeLink,

}) = _DetailedThriftProduct;
}