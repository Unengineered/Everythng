// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'bank_details.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_BankDetails _$$_BankDetailsFromJson(Map<String, dynamic> json) =>
    _$_BankDetails(
      accountNumber: json['accountNumber'] as String,
      accountHolderName: json['accountHolderName'] as String,
      ifscCode: json['ifscCode'] as String,
    );

Map<String, dynamic> _$$_BankDetailsToJson(_$_BankDetails instance) =>
    <String, dynamic>{
      'accountNumber': instance.accountNumber,
      'accountHolderName': instance.accountHolderName,
      'ifscCode': instance.ifscCode,
    };
