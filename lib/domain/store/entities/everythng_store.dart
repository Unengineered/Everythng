import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:everythng/domain/profile/entities/address.dart';
import 'package:everythng/domain/store/entities/bank_details.dart';
import 'package:everythng/domain/store/entities/identity_proof.dart';

part 'everythng_store.freezed.dart';
part 'everythng_store.g.dart';

@freezed
class Store with _$Store {
  const factory Store({
    required String storeName,
    required Uri storeLogo,
    required String storeTagline,
    required IdentityProof identityProof,
    required BankDetails bankDetails,
    required String? businessEmail,
    required Address address,
  }) = _Store;

  factory Store.fromJson(Map<String, dynamic> json) => _$StoreFromJson(json);
}

