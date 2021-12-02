// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'recommended_store.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_RecommendedStore _$$_RecommendedStoreFromJson(Map<String, dynamic> json) =>
    _$_RecommendedStore(
      id: json['id'] as String,
      name: json['name'] as String,
      picture: Uri.parse(json['picture'] as String),
      tagline: json['tagline'] as String?,
      products: (json['products'] as List<dynamic>)
          .map((e) => RecommendedProduct.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_RecommendedStoreToJson(_$_RecommendedStore instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'picture': instance.picture.toString(),
      'tagline': instance.tagline,
      'products': instance.products.map((e) => e.toJson()).toList(),
    };
