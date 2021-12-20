// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'identity_proof.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

IdentityProof _$IdentityProofFromJson(Map<String, dynamic> json) {
  return _IdentityProof.fromJson(json);
}

/// @nodoc
class _$IdentityProofTearOff {
  const _$IdentityProofTearOff();

  _IdentityProof call(
      {required String panCardNo, required String panCardImage}) {
    return _IdentityProof(
      panCardNo: panCardNo,
      panCardImage: panCardImage,
    );
  }

  IdentityProof fromJson(Map<String, Object?> json) {
    return IdentityProof.fromJson(json);
  }
}

/// @nodoc
const $IdentityProof = _$IdentityProofTearOff();

/// @nodoc
mixin _$IdentityProof {
  String get panCardNo => throw _privateConstructorUsedError;
  String get panCardImage => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $IdentityProofCopyWith<IdentityProof> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $IdentityProofCopyWith<$Res> {
  factory $IdentityProofCopyWith(
          IdentityProof value, $Res Function(IdentityProof) then) =
      _$IdentityProofCopyWithImpl<$Res>;
  $Res call({String panCardNo, String panCardImage});
}

/// @nodoc
class _$IdentityProofCopyWithImpl<$Res>
    implements $IdentityProofCopyWith<$Res> {
  _$IdentityProofCopyWithImpl(this._value, this._then);

  final IdentityProof _value;
  // ignore: unused_field
  final $Res Function(IdentityProof) _then;

  @override
  $Res call({
    Object? panCardNo = freezed,
    Object? panCardImage = freezed,
  }) {
    return _then(_value.copyWith(
      panCardNo: panCardNo == freezed
          ? _value.panCardNo
          : panCardNo // ignore: cast_nullable_to_non_nullable
              as String,
      panCardImage: panCardImage == freezed
          ? _value.panCardImage
          : panCardImage // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$IdentityProofCopyWith<$Res>
    implements $IdentityProofCopyWith<$Res> {
  factory _$IdentityProofCopyWith(
          _IdentityProof value, $Res Function(_IdentityProof) then) =
      __$IdentityProofCopyWithImpl<$Res>;
  @override
  $Res call({String panCardNo, String panCardImage});
}

/// @nodoc
class __$IdentityProofCopyWithImpl<$Res>
    extends _$IdentityProofCopyWithImpl<$Res>
    implements _$IdentityProofCopyWith<$Res> {
  __$IdentityProofCopyWithImpl(
      _IdentityProof _value, $Res Function(_IdentityProof) _then)
      : super(_value, (v) => _then(v as _IdentityProof));

  @override
  _IdentityProof get _value => super._value as _IdentityProof;

  @override
  $Res call({
    Object? panCardNo = freezed,
    Object? panCardImage = freezed,
  }) {
    return _then(_IdentityProof(
      panCardNo: panCardNo == freezed
          ? _value.panCardNo
          : panCardNo // ignore: cast_nullable_to_non_nullable
              as String,
      panCardImage: panCardImage == freezed
          ? _value.panCardImage
          : panCardImage // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_IdentityProof implements _IdentityProof {
  const _$_IdentityProof({required this.panCardNo, required this.panCardImage});

  factory _$_IdentityProof.fromJson(Map<String, dynamic> json) =>
      _$$_IdentityProofFromJson(json);

  @override
  final String panCardNo;
  @override
  final String panCardImage;

  @override
  String toString() {
    return 'IdentityProof(panCardNo: $panCardNo, panCardImage: $panCardImage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _IdentityProof &&
            (identical(other.panCardNo, panCardNo) ||
                other.panCardNo == panCardNo) &&
            (identical(other.panCardImage, panCardImage) ||
                other.panCardImage == panCardImage));
  }

  @override
  int get hashCode => Object.hash(runtimeType, panCardNo, panCardImage);

  @JsonKey(ignore: true)
  @override
  _$IdentityProofCopyWith<_IdentityProof> get copyWith =>
      __$IdentityProofCopyWithImpl<_IdentityProof>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_IdentityProofToJson(this);
  }
}

abstract class _IdentityProof implements IdentityProof {
  const factory _IdentityProof(
      {required String panCardNo,
      required String panCardImage}) = _$_IdentityProof;

  factory _IdentityProof.fromJson(Map<String, dynamic> json) =
      _$_IdentityProof.fromJson;

  @override
  String get panCardNo;
  @override
  String get panCardImage;
  @override
  @JsonKey(ignore: true)
  _$IdentityProofCopyWith<_IdentityProof> get copyWith =>
      throw _privateConstructorUsedError;
}
