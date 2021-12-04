// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'address.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Address _$$_AddressFromJson(Map<String, dynamic> json) => _$_Address(
      line1: json['line1'] as String,
      line2: json['line2'] as String?,
      pincode: json['pincode'] as int,
      city: json['city'] as String,
      state: json['state'] as String,
    );

Map<String, dynamic> _$$_AddressToJson(_$_Address instance) =>
    <String, dynamic>{
      'line1': instance.line1,
      'line2': instance.line2,
      'pincode': instance.pincode,
      'city': instance.city,
      'state': instance.state,
    };
