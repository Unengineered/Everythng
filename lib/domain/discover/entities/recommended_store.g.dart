// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'recommended_store.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_RecommendedStore _$$_RecommendedStoreFromJson(Map<String, dynamic> json) =>
    _$_RecommendedStore(
      storeLink: StoreLink.fromJson(json['storeLink'] as Map<String, dynamic>),
      products: (json['products'] as List<dynamic>)
          .map((e) => RecommendedProduct.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_RecommendedStoreToJson(_$_RecommendedStore instance) =>
    <String, dynamic>{
      'storeLink': instance.storeLink,
      'products': instance.products,
    };
