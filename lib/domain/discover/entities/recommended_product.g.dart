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
      picture: Uri.parse(json['picture'] as String),
      brand: json['brand'] == null ? null : Uri.parse(json['brand'] as String),
      price: (json['price'] as num).toDouble(),
      storeLink: json['store'] == null
          ? null
          : StoreLink.fromJson(json['store'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_RecommendedProductToJson(
        _$_RecommendedProduct instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'size': instance.size,
      'picture': instance.picture.toString(),
      'brand': instance.brand?.toString(),
      'price': instance.price,
      'store': instance.storeLink,
    };
