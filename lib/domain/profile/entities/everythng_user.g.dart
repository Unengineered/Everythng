// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'everythng_user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_EverythngUser _$$_EverythngUserFromJson(Map<String, dynamic> json) =>
    _$_EverythngUser(
      id: json['id'] as String,
      firstname: json['firstname'] as String,
      lastname: json['lastname'] as String,
      phone: json['phone'] as String,
      picture: json['picture'] as String,
      addresses: (json['addresses'] as List<dynamic>)
          .map((e) => Address.fromJson(e as Map<String, dynamic>))
          .toList(),
      storeLink: json['store'] == null
          ? null
          : StoreLink.fromJson(json['store'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_EverythngUserToJson(_$_EverythngUser instance) =>
    <String, dynamic>{
      'id': instance.id,
      'firstname': instance.firstname,
      'lastname': instance.lastname,
      'phone': instance.phone,
      'picture': instance.picture,
      'addresses': instance.addresses.map((e) => e.toJson()).toList(),
      'store': instance.storeLink?.toJson(),
    };
