import 'package:everythng/domain/discover/entities/store_link.dart';
import 'package:everythng/domain/profile/entities/address.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'everythng_user.freezed.dart';
part 'everythng_user.g.dart';

@freezed
class EverythngUser with _$EverythngUser {
  const factory EverythngUser(
      {
      required String firstname,
      required String lastname,
      required String phone,
      required List<Address> addresses,
      @JsonKey(name: "store") required StoreLink? storeLink}) = _EverythngUser;

  factory EverythngUser.fromJson(Map<String, dynamic> json) =>
      _$EverythngUserFromJson(json);
}
