// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'recommended_product.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_RecommendedProduct _$$_RecommendedProductFromJson(
        Map<String, dynamic> json) =>
    _$_RecommendedProduct(
      id: json['id'] as String,
      name: json['name'] as String,
      size: json['size'] as String,
      url: Uri.parse(json['url'] as String),
      price: (json['price'] as num).toDouble(),
    );

Map<String, dynamic> _$$_RecommendedProductToJson(
        _$_RecommendedProduct instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'size': instance.size,
      'url': instance.url.toString(),
      'price': instance.price,
    };
