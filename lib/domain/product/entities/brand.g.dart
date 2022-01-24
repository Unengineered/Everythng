// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'brand.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Brand _$$_BrandFromJson(Map<String, dynamic> json) => _$_Brand(
      name: json['name'] as String,
      logo: Uri.parse(json['logo'] as String),
    );

Map<String, dynamic> _$$_BrandToJson(_$_Brand instance) => <String, dynamic>{
      'name': instance.name,
      'logo': instance.logo.toString(),
    };
