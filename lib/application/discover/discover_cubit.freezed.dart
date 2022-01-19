// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'discover_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$DiscoverStateTearOff {
  const _$DiscoverStateTearOff();

  _Loading loading() {
    return const _Loading();
  }

  _Loaded loaded(
      {required List<RecommendedProduct> recommendedProducts,
      required List<RecommendedStore> recommendedStores}) {
    return _Loaded(
      recommendedProducts: recommendedProducts,
      recommendedStores: recommendedStores,
    );
  }

  _Initialised initialised() {
    return const _Initialised();
  }

  _Error error(String message) {
    return _Error(
      message,
    );
  }
}

/// @nodoc
const $DiscoverState = _$DiscoverStateTearOff();

/// @nodoc
mixin _$DiscoverState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<RecommendedProduct> recommendedProducts,
            List<RecommendedStore> recommendedStores)
        loaded,
    required TResult Function() initialised,
    required TResult Function(String message) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<RecommendedProduct> recommendedProducts,
            List<RecommendedStore> recommendedStores)?
        loaded,
    TResult Function()? initialised,
    TResult Function(String message)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<RecommendedProduct> recommendedProducts,
            List<RecommendedStore> recommendedStores)?
        loaded,
    TResult Function()? initialised,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Initialised value) initialised,
    required TResult Function(_Error value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Initialised value)? initialised,
    TResult Function(_Error value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Initialised value)? initialised,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DiscoverStateCopyWith<$Res> {
  factory $DiscoverStateCopyWith(
          DiscoverState value, $Res Function(DiscoverState) then) =
      _$DiscoverStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$DiscoverStateCopyWithImpl<$Res>
    implements $DiscoverStateCopyWith<$Res> {
  _$DiscoverStateCopyWithImpl(this._value, this._then);

  final DiscoverState _value;
  // ignore: unused_field
  final $Res Function(DiscoverState) _then;
}

/// @nodoc
abstract class _$LoadingCopyWith<$Res> {
  factory _$LoadingCopyWith(_Loading value, $Res Function(_Loading) then) =
      __$LoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$LoadingCopyWithImpl<$Res> extends _$DiscoverStateCopyWithImpl<$Res>
    implements _$LoadingCopyWith<$Res> {
  __$LoadingCopyWithImpl(_Loading _value, $Res Function(_Loading) _then)
      : super(_value, (v) => _then(v as _Loading));

  @override
  _Loading get _value => super._value as _Loading;
}

/// @nodoc

class _$_Loading implements _Loading {
  const _$_Loading();

  @override
  String toString() {
    return 'DiscoverState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _Loading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<RecommendedProduct> recommendedProducts,
            List<RecommendedStore> recommendedStores)
        loaded,
    required TResult Function() initialised,
    required TResult Function(String message) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<RecommendedProduct> recommendedProducts,
            List<RecommendedStore> recommendedStores)?
        loaded,
    TResult Function()? initialised,
    TResult Function(String message)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<RecommendedProduct> recommendedProducts,
            List<RecommendedStore> recommendedStores)?
        loaded,
    TResult Function()? initialised,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Initialised value) initialised,
    required TResult Function(_Error value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Initialised value)? initialised,
    TResult Function(_Error value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Initialised value)? initialised,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements DiscoverState {
  const factory _Loading() = _$_Loading;
}

/// @nodoc
abstract class _$LoadedCopyWith<$Res> {
  factory _$LoadedCopyWith(_Loaded value, $Res Function(_Loaded) then) =
      __$LoadedCopyWithImpl<$Res>;
  $Res call(
      {List<RecommendedProduct> recommendedProducts,
      List<RecommendedStore> recommendedStores});
}

/// @nodoc
class __$LoadedCopyWithImpl<$Res> extends _$DiscoverStateCopyWithImpl<$Res>
    implements _$LoadedCopyWith<$Res> {
  __$LoadedCopyWithImpl(_Loaded _value, $Res Function(_Loaded) _then)
      : super(_value, (v) => _then(v as _Loaded));

  @override
  _Loaded get _value => super._value as _Loaded;

  @override
  $Res call({
    Object? recommendedProducts = freezed,
    Object? recommendedStores = freezed,
  }) {
    return _then(_Loaded(
      recommendedProducts: recommendedProducts == freezed
          ? _value.recommendedProducts
          : recommendedProducts // ignore: cast_nullable_to_non_nullable
              as List<RecommendedProduct>,
      recommendedStores: recommendedStores == freezed
          ? _value.recommendedStores
          : recommendedStores // ignore: cast_nullable_to_non_nullable
              as List<RecommendedStore>,
    ));
  }
}

/// @nodoc

class _$_Loaded implements _Loaded {
  const _$_Loaded(
      {required this.recommendedProducts, required this.recommendedStores});

  @override
  final List<RecommendedProduct> recommendedProducts;
  @override
  final List<RecommendedStore> recommendedStores;

  @override
  String toString() {
    return 'DiscoverState.loaded(recommendedProducts: $recommendedProducts, recommendedStores: $recommendedStores)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Loaded &&
            const DeepCollectionEquality()
                .equals(other.recommendedProducts, recommendedProducts) &&
            const DeepCollectionEquality()
                .equals(other.recommendedStores, recommendedStores));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(recommendedProducts),
      const DeepCollectionEquality().hash(recommendedStores));

  @JsonKey(ignore: true)
  @override
  _$LoadedCopyWith<_Loaded> get copyWith =>
      __$LoadedCopyWithImpl<_Loaded>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<RecommendedProduct> recommendedProducts,
            List<RecommendedStore> recommendedStores)
        loaded,
    required TResult Function() initialised,
    required TResult Function(String message) error,
  }) {
    return loaded(recommendedProducts, recommendedStores);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<RecommendedProduct> recommendedProducts,
            List<RecommendedStore> recommendedStores)?
        loaded,
    TResult Function()? initialised,
    TResult Function(String message)? error,
  }) {
    return loaded?.call(recommendedProducts, recommendedStores);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<RecommendedProduct> recommendedProducts,
            List<RecommendedStore> recommendedStores)?
        loaded,
    TResult Function()? initialised,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(recommendedProducts, recommendedStores);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Initialised value) initialised,
    required TResult Function(_Error value) error,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Initialised value)? initialised,
    TResult Function(_Error value)? error,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Initialised value)? initialised,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class _Loaded implements DiscoverState {
  const factory _Loaded(
      {required List<RecommendedProduct> recommendedProducts,
      required List<RecommendedStore> recommendedStores}) = _$_Loaded;

  List<RecommendedProduct> get recommendedProducts;
  List<RecommendedStore> get recommendedStores;
  @JsonKey(ignore: true)
  _$LoadedCopyWith<_Loaded> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$InitialisedCopyWith<$Res> {
  factory _$InitialisedCopyWith(
          _Initialised value, $Res Function(_Initialised) then) =
      __$InitialisedCopyWithImpl<$Res>;
}

/// @nodoc
class __$InitialisedCopyWithImpl<$Res> extends _$DiscoverStateCopyWithImpl<$Res>
    implements _$InitialisedCopyWith<$Res> {
  __$InitialisedCopyWithImpl(
      _Initialised _value, $Res Function(_Initialised) _then)
      : super(_value, (v) => _then(v as _Initialised));

  @override
  _Initialised get _value => super._value as _Initialised;
}

/// @nodoc

class _$_Initialised implements _Initialised {
  const _$_Initialised();

  @override
  String toString() {
    return 'DiscoverState.initialised()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _Initialised);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<RecommendedProduct> recommendedProducts,
            List<RecommendedStore> recommendedStores)
        loaded,
    required TResult Function() initialised,
    required TResult Function(String message) error,
  }) {
    return initialised();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<RecommendedProduct> recommendedProducts,
            List<RecommendedStore> recommendedStores)?
        loaded,
    TResult Function()? initialised,
    TResult Function(String message)? error,
  }) {
    return initialised?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<RecommendedProduct> recommendedProducts,
            List<RecommendedStore> recommendedStores)?
        loaded,
    TResult Function()? initialised,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (initialised != null) {
      return initialised();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Initialised value) initialised,
    required TResult Function(_Error value) error,
  }) {
    return initialised(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Initialised value)? initialised,
    TResult Function(_Error value)? error,
  }) {
    return initialised?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Initialised value)? initialised,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (initialised != null) {
      return initialised(this);
    }
    return orElse();
  }
}

abstract class _Initialised implements DiscoverState {
  const factory _Initialised() = _$_Initialised;
}

/// @nodoc
abstract class _$ErrorCopyWith<$Res> {
  factory _$ErrorCopyWith(_Error value, $Res Function(_Error) then) =
      __$ErrorCopyWithImpl<$Res>;
  $Res call({String message});
}

/// @nodoc
class __$ErrorCopyWithImpl<$Res> extends _$DiscoverStateCopyWithImpl<$Res>
    implements _$ErrorCopyWith<$Res> {
  __$ErrorCopyWithImpl(_Error _value, $Res Function(_Error) _then)
      : super(_value, (v) => _then(v as _Error));

  @override
  _Error get _value => super._value as _Error;

  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_Error(
      message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_Error implements _Error {
  const _$_Error(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'DiscoverState.error(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Error &&
            const DeepCollectionEquality().equals(other.message, message));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(message));

  @JsonKey(ignore: true)
  @override
  _$ErrorCopyWith<_Error> get copyWith =>
      __$ErrorCopyWithImpl<_Error>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<RecommendedProduct> recommendedProducts,
            List<RecommendedStore> recommendedStores)
        loaded,
    required TResult Function() initialised,
    required TResult Function(String message) error,
  }) {
    return error(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<RecommendedProduct> recommendedProducts,
            List<RecommendedStore> recommendedStores)?
        loaded,
    TResult Function()? initialised,
    TResult Function(String message)? error,
  }) {
    return error?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<RecommendedProduct> recommendedProducts,
            List<RecommendedStore> recommendedStores)?
        loaded,
    TResult Function()? initialised,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Initialised value) initialised,
    required TResult Function(_Error value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Initialised value)? initialised,
    TResult Function(_Error value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Initialised value)? initialised,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _Error implements DiscoverState {
  const factory _Error(String message) = _$_Error;

  String get message;
  @JsonKey(ignore: true)
  _$ErrorCopyWith<_Error> get copyWith => throw _privateConstructorUsedError;
}
