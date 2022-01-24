// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'detailed_thrift_product.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_DetailedThriftProduct _$$_DetailedThriftProductFromJson(
        Map<String, dynamic> json) =>
    _$_DetailedThriftProduct(
      id: json['_id'] as String,
      name: json['name'] as String,
      price: (json['price'] as num).toDouble(),
      originalPrice: (json['original_price'] as num?)?.toDouble(),
      pictures: (json['pictures'] as List<dynamic>)
          .map((e) => Uri.parse(e as String))
          .toList(),
      sizeChart: SizeChart.fromJson(json['size_chart'] as Map<String, dynamic>),
      issues: (json['issues'] as List<dynamic>)
          .map((e) => Issue.fromJson(e as Map<String, dynamic>))
          .toList(),
      brand: json['brand'] == null
          ? null
          : Brand.fromJson(json['brand'] as Map<String, dynamic>),
      customerReview: json['customer_review'] == null
          ? null
          : Review.fromJson(json['customer_review'] as Map<String, dynamic>),
      storeLink: StoreLink.fromJson(json['store_link'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_DetailedThriftProductToJson(
        _$_DetailedThriftProduct instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'name': instance.name,
      'price': instance.price,
      'original_price': instance.originalPrice,
      'pictures': instance.pictures.map((e) => e.toString()).toList(),
      'size_chart': instance.sizeChart.toJson(),
      'issues': instance.issues.map((e) => e.toJson()).toList(),
      'brand': instance.brand?.toJson(),
      'customer_review': instance.customerReview?.toJson(),
      'store_link': instance.storeLink.toJson(),
    };
