// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'brand.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$BrandTearOff {
  const _$BrandTearOff();

  _Brand call({required String name, required Uri logo}) {
    return _Brand(
      name: name,
      logo: logo,
    );
  }
}

/// @nodoc
const $Brand = _$BrandTearOff();

/// @nodoc
mixin _$Brand {
  String get name => throw _privateConstructorUsedError;
  Uri get logo => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $BrandCopyWith<Brand> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BrandCopyWith<$Res> {
  factory $BrandCopyWith(Brand value, $Res Function(Brand) then) =
      _$BrandCopyWithImpl<$Res>;
  $Res call({String name, Uri logo});
}

/// @nodoc
class _$BrandCopyWithImpl<$Res> implements $BrandCopyWith<$Res> {
  _$BrandCopyWithImpl(this._value, this._then);

  final Brand _value;
  // ignore: unused_field
  final $Res Function(Brand) _then;

  @override
  $Res call({
    Object? name = freezed,
    Object? logo = freezed,
  }) {
    return _then(_value.copyWith(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      logo: logo == freezed
          ? _value.logo
          : logo // ignore: cast_nullable_to_non_nullable
              as Uri,
    ));
  }
}

/// @nodoc
abstract class _$BrandCopyWith<$Res> implements $BrandCopyWith<$Res> {
  factory _$BrandCopyWith(_Brand value, $Res Function(_Brand) then) =
      __$BrandCopyWithImpl<$Res>;
  @override
  $Res call({String name, Uri logo});
}

/// @nodoc
class __$BrandCopyWithImpl<$Res> extends _$BrandCopyWithImpl<$Res>
    implements _$BrandCopyWith<$Res> {
  __$BrandCopyWithImpl(_Brand _value, $Res Function(_Brand) _then)
      : super(_value, (v) => _then(v as _Brand));

  @override
  _Brand get _value => super._value as _Brand;

  @override
  $Res call({
    Object? name = freezed,
    Object? logo = freezed,
  }) {
    return _then(_Brand(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      logo: logo == freezed
          ? _value.logo
          : logo // ignore: cast_nullable_to_non_nullable
              as Uri,
    ));
  }
}

/// @nodoc

class _$_Brand implements _Brand {
  const _$_Brand({required this.name, required this.logo});

  @override
  final String name;
  @override
  final Uri logo;

  @override
  String toString() {
    return 'Brand(name: $name, logo: $logo)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Brand &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.logo, logo));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(logo));

  @JsonKey(ignore: true)
  @override
  _$BrandCopyWith<_Brand> get copyWith =>
      __$BrandCopyWithImpl<_Brand>(this, _$identity);
}

abstract class _Brand implements Brand {
  const factory _Brand({required String name, required Uri logo}) = _$_Brand;

  @override
  String get name;
  @override
  Uri get logo;
  @override
  @JsonKey(ignore: true)
  _$BrandCopyWith<_Brand> get copyWith => throw _privateConstructorUsedError;
}
