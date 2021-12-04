import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'address.freezed.dart';
part 'address.g.dart';


@freezed
class Address with _$Address {
  const factory Address(
      {required String line1,
      required String? line2,
      required int pincode,
      required String city,
      required String state,
      }) = _Address;

  factory Address.fromJson(Map<String, dynamic> json) => _$AddressFromJson(json);

}