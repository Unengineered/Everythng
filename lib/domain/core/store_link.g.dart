// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'store_link.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_StoreLink _$$_StoreLinkFromJson(Map<String, dynamic> json) => _$_StoreLink(
      name: json['name'] as String,
      id: json['id'] as String,
      thumbnail: Uri.parse(json['thumbnail'] as String),
      instagram: Uri.parse(json['instagram'] as String),
    );

Map<String, dynamic> _$$_StoreLinkToJson(_$_StoreLink instance) =>
    <String, dynamic>{
      'name': instance.name,
      'id': instance.id,
      'thumbnail': instance.thumbnail.toString(),
      'instagram': instance.instagram.toString(),
    };
