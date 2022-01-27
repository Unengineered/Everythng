// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'store_link.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_StoreLink _$$_StoreLinkFromJson(Map<String, dynamic> json) => _$_StoreLink(
      id: json['id'] as String,
      name: json['name'] as String,
      logo: Uri.parse(json['logo'] as String),
      tagline: json['tagline'] as String?,
    );

Map<String, dynamic> _$$_StoreLinkToJson(_$_StoreLink instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'logo': instance.logo.toString(),
      'tagline': instance.tagline,
    };
