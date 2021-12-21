// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'bank_details.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

BankDetails _$BankDetailsFromJson(Map<String, dynamic> json) {
  return _BankDetails.fromJson(json);
}

/// @nodoc
class _$BankDetailsTearOff {
  const _$BankDetailsTearOff();

  _BankDetails call(
      {required String accountNumber,
      required String accountHolderName,
      required String ifscCode}) {
    return _BankDetails(
      accountNumber: accountNumber,
      accountHolderName: accountHolderName,
      ifscCode: ifscCode,
    );
  }

  BankDetails fromJson(Map<String, Object?> json) {
    return BankDetails.fromJson(json);
  }
}

/// @nodoc
const $BankDetails = _$BankDetailsTearOff();

/// @nodoc
mixin _$BankDetails {
  String get accountNumber => throw _privateConstructorUsedError;
  String get accountHolderName => throw _privateConstructorUsedError;
  String get ifscCode => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BankDetailsCopyWith<BankDetails> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BankDetailsCopyWith<$Res> {
  factory $BankDetailsCopyWith(
          BankDetails value, $Res Function(BankDetails) then) =
      _$BankDetailsCopyWithImpl<$Res>;
  $Res call({String accountNumber, String accountHolderName, String ifscCode});
}

/// @nodoc
class _$BankDetailsCopyWithImpl<$Res> implements $BankDetailsCopyWith<$Res> {
  _$BankDetailsCopyWithImpl(this._value, this._then);

  final BankDetails _value;
  // ignore: unused_field
  final $Res Function(BankDetails) _then;

  @override
  $Res call({
    Object? accountNumber = freezed,
    Object? accountHolderName = freezed,
    Object? ifscCode = freezed,
  }) {
    return _then(_value.copyWith(
      accountNumber: accountNumber == freezed
          ? _value.accountNumber
          : accountNumber // ignore: cast_nullable_to_non_nullable
              as String,
      accountHolderName: accountHolderName == freezed
          ? _value.accountHolderName
          : accountHolderName // ignore: cast_nullable_to_non_nullable
              as String,
      ifscCode: ifscCode == freezed
          ? _value.ifscCode
          : ifscCode // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$BankDetailsCopyWith<$Res>
    implements $BankDetailsCopyWith<$Res> {
  factory _$BankDetailsCopyWith(
          _BankDetails value, $Res Function(_BankDetails) then) =
      __$BankDetailsCopyWithImpl<$Res>;
  @override
  $Res call({String accountNumber, String accountHolderName, String ifscCode});
}

/// @nodoc
class __$BankDetailsCopyWithImpl<$Res> extends _$BankDetailsCopyWithImpl<$Res>
    implements _$BankDetailsCopyWith<$Res> {
  __$BankDetailsCopyWithImpl(
      _BankDetails _value, $Res Function(_BankDetails) _then)
      : super(_value, (v) => _then(v as _BankDetails));

  @override
  _BankDetails get _value => super._value as _BankDetails;

  @override
  $Res call({
    Object? accountNumber = freezed,
    Object? accountHolderName = freezed,
    Object? ifscCode = freezed,
  }) {
    return _then(_BankDetails(
      accountNumber: accountNumber == freezed
          ? _value.accountNumber
          : accountNumber // ignore: cast_nullable_to_non_nullable
              as String,
      accountHolderName: accountHolderName == freezed
          ? _value.accountHolderName
          : accountHolderName // ignore: cast_nullable_to_non_nullable
              as String,
      ifscCode: ifscCode == freezed
          ? _value.ifscCode
          : ifscCode // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_BankDetails implements _BankDetails {
  const _$_BankDetails(
      {required this.accountNumber,
      required this.accountHolderName,
      required this.ifscCode});

  factory _$_BankDetails.fromJson(Map<String, dynamic> json) =>
      _$$_BankDetailsFromJson(json);

  @override
  final String accountNumber;
  @override
  final String accountHolderName;
  @override
  final String ifscCode;

  @override
  String toString() {
    return 'BankDetails(accountNumber: $accountNumber, accountHolderName: $accountHolderName, ifscCode: $ifscCode)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _BankDetails &&
            (identical(other.accountNumber, accountNumber) ||
                other.accountNumber == accountNumber) &&
            (identical(other.accountHolderName, accountHolderName) ||
                other.accountHolderName == accountHolderName) &&
            (identical(other.ifscCode, ifscCode) ||
                other.ifscCode == ifscCode));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, accountNumber, accountHolderName, ifscCode);

  @JsonKey(ignore: true)
  @override
  _$BankDetailsCopyWith<_BankDetails> get copyWith =>
      __$BankDetailsCopyWithImpl<_BankDetails>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_BankDetailsToJson(this);
  }
}

abstract class _BankDetails implements BankDetails {
  const factory _BankDetails(
      {required String accountNumber,
      required String accountHolderName,
      required String ifscCode}) = _$_BankDetails;

  factory _BankDetails.fromJson(Map<String, dynamic> json) =
      _$_BankDetails.fromJson;

  @override
  String get accountNumber;
  @override
  String get accountHolderName;
  @override
  String get ifscCode;
  @override
  @JsonKey(ignore: true)
  _$BankDetailsCopyWith<_BankDetails> get copyWith =>
      throw _privateConstructorUsedError;
}
