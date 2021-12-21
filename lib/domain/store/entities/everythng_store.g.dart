// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'everythng_store.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Store _$$_StoreFromJson(Map<String, dynamic> json) => _$_Store(
      storeName: json['storeName'] as String,
      storeLogo: Uri.parse(json['storeLogo'] as String),
      storeTagline: json['storeTagline'] as String,
      identityProof:
          IdentityProof.fromJson(json['identityProof'] as Map<String, dynamic>),
      bankDetails:
          BankDetails.fromJson(json['bankDetails'] as Map<String, dynamic>),
      businessEmail: json['businessEmail'] as String?,
      address: Address.fromJson(json['address'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_StoreToJson(_$_Store instance) => <String, dynamic>{
      'storeName': instance.storeName,
      'storeLogo': instance.storeLogo.toString(),
      'storeTagline': instance.storeTagline,
      'identityProof': instance.identityProof.toJson(),
      'bankDetails': instance.bankDetails.toJson(),
      'businessEmail': instance.businessEmail,
      'address': instance.address.toJson(),
    };
