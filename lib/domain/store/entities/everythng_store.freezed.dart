// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'everythng_store.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Store _$StoreFromJson(Map<String, dynamic> json) {
  return _Store.fromJson(json);
}

/// @nodoc
class _$StoreTearOff {
  const _$StoreTearOff();

  _Store call(
      {required String storeName,
      required Uri storeLogo,
      required String storeTagline,
      required IdentityProof identityProof,
      required BankDetails bankDetails,
      required String? businessEmail,
      required Address address}) {
    return _Store(
      storeName: storeName,
      storeLogo: storeLogo,
      storeTagline: storeTagline,
      identityProof: identityProof,
      bankDetails: bankDetails,
      businessEmail: businessEmail,
      address: address,
    );
  }

  Store fromJson(Map<String, Object?> json) {
    return Store.fromJson(json);
  }
}

/// @nodoc
const $Store = _$StoreTearOff();

/// @nodoc
mixin _$Store {
  String get storeName => throw _privateConstructorUsedError;
  Uri get storeLogo => throw _privateConstructorUsedError;
  String get storeTagline => throw _privateConstructorUsedError;
  IdentityProof get identityProof => throw _privateConstructorUsedError;
  BankDetails get bankDetails => throw _privateConstructorUsedError;
  String? get businessEmail => throw _privateConstructorUsedError;
  Address get address => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $StoreCopyWith<Store> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StoreCopyWith<$Res> {
  factory $StoreCopyWith(Store value, $Res Function(Store) then) =
      _$StoreCopyWithImpl<$Res>;
  $Res call(
      {String storeName,
      Uri storeLogo,
      String storeTagline,
      IdentityProof identityProof,
      BankDetails bankDetails,
      String? businessEmail,
      Address address});

  $IdentityProofCopyWith<$Res> get identityProof;
  $BankDetailsCopyWith<$Res> get bankDetails;
  $AddressCopyWith<$Res> get address;
}

/// @nodoc
class _$StoreCopyWithImpl<$Res> implements $StoreCopyWith<$Res> {
  _$StoreCopyWithImpl(this._value, this._then);

  final Store _value;
  // ignore: unused_field
  final $Res Function(Store) _then;

  @override
  $Res call({
    Object? storeName = freezed,
    Object? storeLogo = freezed,
    Object? storeTagline = freezed,
    Object? identityProof = freezed,
    Object? bankDetails = freezed,
    Object? businessEmail = freezed,
    Object? address = freezed,
  }) {
    return _then(_value.copyWith(
      storeName: storeName == freezed
          ? _value.storeName
          : storeName // ignore: cast_nullable_to_non_nullable
              as String,
      storeLogo: storeLogo == freezed
          ? _value.storeLogo
          : storeLogo // ignore: cast_nullable_to_non_nullable
              as Uri,
      storeTagline: storeTagline == freezed
          ? _value.storeTagline
          : storeTagline // ignore: cast_nullable_to_non_nullable
              as String,
      identityProof: identityProof == freezed
          ? _value.identityProof
          : identityProof // ignore: cast_nullable_to_non_nullable
              as IdentityProof,
      bankDetails: bankDetails == freezed
          ? _value.bankDetails
          : bankDetails // ignore: cast_nullable_to_non_nullable
              as BankDetails,
      businessEmail: businessEmail == freezed
          ? _value.businessEmail
          : businessEmail // ignore: cast_nullable_to_non_nullable
              as String?,
      address: address == freezed
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as Address,
    ));
  }

  @override
  $IdentityProofCopyWith<$Res> get identityProof {
    return $IdentityProofCopyWith<$Res>(_value.identityProof, (value) {
      return _then(_value.copyWith(identityProof: value));
    });
  }

  @override
  $BankDetailsCopyWith<$Res> get bankDetails {
    return $BankDetailsCopyWith<$Res>(_value.bankDetails, (value) {
      return _then(_value.copyWith(bankDetails: value));
    });
  }

  @override
  $AddressCopyWith<$Res> get address {
    return $AddressCopyWith<$Res>(_value.address, (value) {
      return _then(_value.copyWith(address: value));
    });
  }
}

/// @nodoc
abstract class _$StoreCopyWith<$Res> implements $StoreCopyWith<$Res> {
  factory _$StoreCopyWith(_Store value, $Res Function(_Store) then) =
      __$StoreCopyWithImpl<$Res>;
  @override
  $Res call(
      {String storeName,
      Uri storeLogo,
      String storeTagline,
      IdentityProof identityProof,
      BankDetails bankDetails,
      String? businessEmail,
      Address address});

  @override
  $IdentityProofCopyWith<$Res> get identityProof;
  @override
  $BankDetailsCopyWith<$Res> get bankDetails;
  @override
  $AddressCopyWith<$Res> get address;
}

/// @nodoc
class __$StoreCopyWithImpl<$Res> extends _$StoreCopyWithImpl<$Res>
    implements _$StoreCopyWith<$Res> {
  __$StoreCopyWithImpl(_Store _value, $Res Function(_Store) _then)
      : super(_value, (v) => _then(v as _Store));

  @override
  _Store get _value => super._value as _Store;

  @override
  $Res call({
    Object? storeName = freezed,
    Object? storeLogo = freezed,
    Object? storeTagline = freezed,
    Object? identityProof = freezed,
    Object? bankDetails = freezed,
    Object? businessEmail = freezed,
    Object? address = freezed,
  }) {
    return _then(_Store(
      storeName: storeName == freezed
          ? _value.storeName
          : storeName // ignore: cast_nullable_to_non_nullable
              as String,
      storeLogo: storeLogo == freezed
          ? _value.storeLogo
          : storeLogo // ignore: cast_nullable_to_non_nullable
              as Uri,
      storeTagline: storeTagline == freezed
          ? _value.storeTagline
          : storeTagline // ignore: cast_nullable_to_non_nullable
              as String,
      identityProof: identityProof == freezed
          ? _value.identityProof
          : identityProof // ignore: cast_nullable_to_non_nullable
              as IdentityProof,
      bankDetails: bankDetails == freezed
          ? _value.bankDetails
          : bankDetails // ignore: cast_nullable_to_non_nullable
              as BankDetails,
      businessEmail: businessEmail == freezed
          ? _value.businessEmail
          : businessEmail // ignore: cast_nullable_to_non_nullable
              as String?,
      address: address == freezed
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as Address,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Store implements _Store {
  const _$_Store(
      {required this.storeName,
      required this.storeLogo,
      required this.storeTagline,
      required this.identityProof,
      required this.bankDetails,
      required this.businessEmail,
      required this.address});

  factory _$_Store.fromJson(Map<String, dynamic> json) =>
      _$$_StoreFromJson(json);

  @override
  final String storeName;
  @override
  final Uri storeLogo;
  @override
  final String storeTagline;
  @override
  final IdentityProof identityProof;
  @override
  final BankDetails bankDetails;
  @override
  final String? businessEmail;
  @override
  final Address address;

  @override
  String toString() {
    return 'Store(storeName: $storeName, storeLogo: $storeLogo, storeTagline: $storeTagline, identityProof: $identityProof, bankDetails: $bankDetails, businessEmail: $businessEmail, address: $address)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Store &&
            (identical(other.storeName, storeName) ||
                other.storeName == storeName) &&
            (identical(other.storeLogo, storeLogo) ||
                other.storeLogo == storeLogo) &&
            (identical(other.storeTagline, storeTagline) ||
                other.storeTagline == storeTagline) &&
            (identical(other.identityProof, identityProof) ||
                other.identityProof == identityProof) &&
            (identical(other.bankDetails, bankDetails) ||
                other.bankDetails == bankDetails) &&
            (identical(other.businessEmail, businessEmail) ||
                other.businessEmail == businessEmail) &&
            (identical(other.address, address) || other.address == address));
  }

  @override
  int get hashCode => Object.hash(runtimeType, storeName, storeLogo,
      storeTagline, identityProof, bankDetails, businessEmail, address);

  @JsonKey(ignore: true)
  @override
  _$StoreCopyWith<_Store> get copyWith =>
      __$StoreCopyWithImpl<_Store>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_StoreToJson(this);
  }
}

abstract class _Store implements Store {
  const factory _Store(
      {required String storeName,
      required Uri storeLogo,
      required String storeTagline,
      required IdentityProof identityProof,
      required BankDetails bankDetails,
      required String? businessEmail,
      required Address address}) = _$_Store;

  factory _Store.fromJson(Map<String, dynamic> json) = _$_Store.fromJson;

  @override
  String get storeName;
  @override
  Uri get storeLogo;
  @override
  String get storeTagline;
  @override
  IdentityProof get identityProof;
  @override
  BankDetails get bankDetails;
  @override
  String? get businessEmail;
  @override
  Address get address;
  @override
  @JsonKey(ignore: true)
  _$StoreCopyWith<_Store> get copyWith => throw _privateConstructorUsedError;
}
