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

/// @nodoc
class _$EverythngUserTearOff {
  const _$EverythngUserTearOff();

  _EverythngUser call({required String email, required String uid}) {
    return _EverythngUser(
      email: email,
      uid: uid,
    );
  }
}

/// @nodoc
const $EverythngUser = _$EverythngUserTearOff();

/// @nodoc
mixin _$EverythngUser {
  String get email => throw _privateConstructorUsedError;
  String get uid => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $EverythngUserCopyWith<EverythngUser> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EverythngUserCopyWith<$Res> {
  factory $EverythngUserCopyWith(
          EverythngUser value, $Res Function(EverythngUser) then) =
      _$EverythngUserCopyWithImpl<$Res>;
  $Res call({String email, String uid});
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
    Object? email = freezed,
    Object? uid = freezed,
  }) {
    return _then(_value.copyWith(
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      uid: uid == freezed
          ? _value.uid
          : uid // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$EverythngUserCopyWith<$Res>
    implements $EverythngUserCopyWith<$Res> {
  factory _$EverythngUserCopyWith(
          _EverythngUser value, $Res Function(_EverythngUser) then) =
      __$EverythngUserCopyWithImpl<$Res>;
  @override
  $Res call({String email, String uid});
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
    Object? email = freezed,
    Object? uid = freezed,
  }) {
    return _then(_EverythngUser(
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      uid: uid == freezed
          ? _value.uid
          : uid // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_EverythngUser extends _EverythngUser {
  const _$_EverythngUser({required this.email, required this.uid}) : super._();

  @override
  final String email;
  @override
  final String uid;

  @override
  String toString() {
    return 'EverythngUser(email: $email, uid: $uid)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _EverythngUser &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.uid, uid) || other.uid == uid));
  }

  @override
  int get hashCode => Object.hash(runtimeType, email, uid);

  @JsonKey(ignore: true)
  @override
  _$EverythngUserCopyWith<_EverythngUser> get copyWith =>
      __$EverythngUserCopyWithImpl<_EverythngUser>(this, _$identity);
}

abstract class _EverythngUser extends EverythngUser {
  const factory _EverythngUser({required String email, required String uid}) =
      _$_EverythngUser;
  const _EverythngUser._() : super._();

  @override
  String get email;
  @override
  String get uid;
  @override
  @JsonKey(ignore: true)
  _$EverythngUserCopyWith<_EverythngUser> get copyWith =>
      throw _privateConstructorUsedError;
}
