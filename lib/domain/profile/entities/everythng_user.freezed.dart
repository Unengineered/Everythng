// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'everythng_user.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

EverythngUser _$EverythngUserFromJson(Map<String, dynamic> json) {
  return _EverythngUser.fromJson(json);
}

/// @nodoc
class _$EverythngUserTearOff {
  const _$EverythngUserTearOff();

  _EverythngUser call(
      {required String id,
      required String firstname,
      required String lastname,
      required String phone,
      required String picture,
      required List<Address> addresses,
      @JsonKey(name: "store") required StoreLink? storeLink}) {
    return _EverythngUser(
      id: id,
      firstname: firstname,
      lastname: lastname,
      phone: phone,
      picture: picture,
      addresses: addresses,
      storeLink: storeLink,
    );
  }

  EverythngUser fromJson(Map<String, Object?> json) {
    return EverythngUser.fromJson(json);
  }
}

/// @nodoc
const $EverythngUser = _$EverythngUserTearOff();

/// @nodoc
mixin _$EverythngUser {
  String get id => throw _privateConstructorUsedError;
  String get firstname => throw _privateConstructorUsedError;
  String get lastname => throw _privateConstructorUsedError;
  String get phone => throw _privateConstructorUsedError;
  String get picture => throw _privateConstructorUsedError;
  List<Address> get addresses => throw _privateConstructorUsedError;
  @JsonKey(name: "store")
  StoreLink? get storeLink => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $EverythngUserCopyWith<EverythngUser> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EverythngUserCopyWith<$Res> {
  factory $EverythngUserCopyWith(
          EverythngUser value, $Res Function(EverythngUser) then) =
      _$EverythngUserCopyWithImpl<$Res>;
  $Res call(
      {String id,
      String firstname,
      String lastname,
      String phone,
      String picture,
      List<Address> addresses,
      @JsonKey(name: "store") StoreLink? storeLink});

  $StoreLinkCopyWith<$Res>? get storeLink;
}

/// @nodoc
class _$EverythngUserCopyWithImpl<$Res>
    implements $EverythngUserCopyWith<$Res> {
  _$EverythngUserCopyWithImpl(this._value, this._then);

  final EverythngUser _value;
  // ignore: unused_field
  final $Res Function(EverythngUser) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? firstname = freezed,
    Object? lastname = freezed,
    Object? phone = freezed,
    Object? picture = freezed,
    Object? addresses = freezed,
    Object? storeLink = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      firstname: firstname == freezed
          ? _value.firstname
          : firstname // ignore: cast_nullable_to_non_nullable
              as String,
      lastname: lastname == freezed
          ? _value.lastname
          : lastname // ignore: cast_nullable_to_non_nullable
              as String,
      phone: phone == freezed
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
      picture: picture == freezed
          ? _value.picture
          : picture // ignore: cast_nullable_to_non_nullable
              as String,
      addresses: addresses == freezed
          ? _value.addresses
          : addresses // ignore: cast_nullable_to_non_nullable
              as List<Address>,
      storeLink: storeLink == freezed
          ? _value.storeLink
          : storeLink // ignore: cast_nullable_to_non_nullable
              as StoreLink?,
    ));
  }

  @override
  $StoreLinkCopyWith<$Res>? get storeLink {
    if (_value.storeLink == null) {
      return null;
    }

    return $StoreLinkCopyWith<$Res>(_value.storeLink!, (value) {
      return _then(_value.copyWith(storeLink: value));
    });
  }
}

/// @nodoc
abstract class _$EverythngUserCopyWith<$Res>
    implements $EverythngUserCopyWith<$Res> {
  factory _$EverythngUserCopyWith(
          _EverythngUser value, $Res Function(_EverythngUser) then) =
      __$EverythngUserCopyWithImpl<$Res>;
  @override
  $Res call(
      {String id,
      String firstname,
      String lastname,
      String phone,
      String picture,
      List<Address> addresses,
      @JsonKey(name: "store") StoreLink? storeLink});

  @override
  $StoreLinkCopyWith<$Res>? get storeLink;
}

/// @nodoc
class __$EverythngUserCopyWithImpl<$Res>
    extends _$EverythngUserCopyWithImpl<$Res>
    implements _$EverythngUserCopyWith<$Res> {
  __$EverythngUserCopyWithImpl(
      _EverythngUser _value, $Res Function(_EverythngUser) _then)
      : super(_value, (v) => _then(v as _EverythngUser));

  @override
  _EverythngUser get _value => super._value as _EverythngUser;

  @override
  $Res call({
    Object? id = freezed,
    Object? firstname = freezed,
    Object? lastname = freezed,
    Object? phone = freezed,
    Object? picture = freezed,
    Object? addresses = freezed,
    Object? storeLink = freezed,
  }) {
    return _then(_EverythngUser(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      firstname: firstname == freezed
          ? _value.firstname
          : firstname // ignore: cast_nullable_to_non_nullable
              as String,
      lastname: lastname == freezed
          ? _value.lastname
          : lastname // ignore: cast_nullable_to_non_nullable
              as String,
      phone: phone == freezed
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
      picture: picture == freezed
          ? _value.picture
          : picture // ignore: cast_nullable_to_non_nullable
              as String,
      addresses: addresses == freezed
          ? _value.addresses
          : addresses // ignore: cast_nullable_to_non_nullable
              as List<Address>,
      storeLink: storeLink == freezed
          ? _value.storeLink
          : storeLink // ignore: cast_nullable_to_non_nullable
              as StoreLink?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_EverythngUser implements _EverythngUser {
  const _$_EverythngUser(
      {required this.id,
      required this.firstname,
      required this.lastname,
      required this.phone,
      required this.picture,
      required this.addresses,
      @JsonKey(name: "store") required this.storeLink});

  factory _$_EverythngUser.fromJson(Map<String, dynamic> json) =>
      _$$_EverythngUserFromJson(json);

  @override
  final String id;
  @override
  final String firstname;
  @override
  final String lastname;
  @override
  final String phone;
  @override
  final String picture;
  @override
  final List<Address> addresses;
  @override
  @JsonKey(name: "store")
  final StoreLink? storeLink;

  @override
  String toString() {
    return 'EverythngUser(id: $id, firstname: $firstname, lastname: $lastname, phone: $phone, picture: $picture, addresses: $addresses, storeLink: $storeLink)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _EverythngUser &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.firstname, firstname) ||
                other.firstname == firstname) &&
            (identical(other.lastname, lastname) ||
                other.lastname == lastname) &&
            (identical(other.phone, phone) || other.phone == phone) &&
            (identical(other.picture, picture) || other.picture == picture) &&
            const DeepCollectionEquality().equals(other.addresses, addresses) &&
            (identical(other.storeLink, storeLink) ||
                other.storeLink == storeLink));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, firstname, lastname, phone,
      picture, const DeepCollectionEquality().hash(addresses), storeLink);

  @JsonKey(ignore: true)
  @override
  _$EverythngUserCopyWith<_EverythngUser> get copyWith =>
      __$EverythngUserCopyWithImpl<_EverythngUser>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_EverythngUserToJson(this);
  }
}

abstract class _EverythngUser implements EverythngUser {
  const factory _EverythngUser(
          {required String id,
          required String firstname,
          required String lastname,
          required String phone,
          required String picture,
          required List<Address> addresses,
          @JsonKey(name: "store") required StoreLink? storeLink}) =
      _$_EverythngUser;

  factory _EverythngUser.fromJson(Map<String, dynamic> json) =
      _$_EverythngUser.fromJson;

  @override
  String get id;
  @override
  String get firstname;
  @override
  String get lastname;
  @override
  String get phone;
  @override
  String get picture;
  @override
  List<Address> get addresses;
  @override
  @JsonKey(name: "store")
  StoreLink? get storeLink;
  @override
  @JsonKey(ignore: true)
  _$EverythngUserCopyWith<_EverythngUser> get copyWith =>
      throw _privateConstructorUsedError;
}
