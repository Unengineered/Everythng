// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'store_page_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$StorePageStateTearOff {
  const _$StorePageStateTearOff();

  _Initial initial() {
    return const _Initial();
  }

  _Loaded loaded(
      {Either<StoreFailure, StoreLink>? storeLink,
      Either<ProductFailure, List<DetailedThriftProduct>>? storeProducts}) {
    return _Loaded(
      storeLink: storeLink,
      storeProducts: storeProducts,
    );
  }

  _Error error(StoreFailure storeFailure) {
    return _Error(
      storeFailure,
    );
  }

  _Loading loading() {
    return const _Loading();
  }
}

/// @nodoc
const $StorePageState = _$StorePageStateTearOff();

/// @nodoc
mixin _$StorePageState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(Either<StoreFailure, StoreLink>? storeLink,
            Either<ProductFailure, List<DetailedThriftProduct>>? storeProducts)
        loaded,
    required TResult Function(StoreFailure storeFailure) error,
    required TResult Function() loading,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Either<StoreFailure, StoreLink>? storeLink,
            Either<ProductFailure, List<DetailedThriftProduct>>? storeProducts)?
        loaded,
    TResult Function(StoreFailure storeFailure)? error,
    TResult Function()? loading,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Either<StoreFailure, StoreLink>? storeLink,
            Either<ProductFailure, List<DetailedThriftProduct>>? storeProducts)?
        loaded,
    TResult Function(StoreFailure storeFailure)? error,
    TResult Function()? loading,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Error value) error,
    required TResult Function(_Loading value) loading,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Error value)? error,
    TResult Function(_Loading value)? loading,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Error value)? error,
    TResult Function(_Loading value)? loading,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StorePageStateCopyWith<$Res> {
  factory $StorePageStateCopyWith(
          StorePageState value, $Res Function(StorePageState) then) =
      _$StorePageStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$StorePageStateCopyWithImpl<$Res>
    implements $StorePageStateCopyWith<$Res> {
  _$StorePageStateCopyWithImpl(this._value, this._then);

  final StorePageState _value;
  // ignore: unused_field
  final $Res Function(StorePageState) _then;
}

/// @nodoc
abstract class _$InitialCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) =
      __$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$InitialCopyWithImpl<$Res> extends _$StorePageStateCopyWithImpl<$Res>
    implements _$InitialCopyWith<$Res> {
  __$InitialCopyWithImpl(_Initial _value, $Res Function(_Initial) _then)
      : super(_value, (v) => _then(v as _Initial));

  @override
  _Initial get _value => super._value as _Initial;
}

/// @nodoc

class _$_Initial implements _Initial {
  const _$_Initial();

  @override
  String toString() {
    return 'StorePageState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _Initial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(Either<StoreFailure, StoreLink>? storeLink,
            Either<ProductFailure, List<DetailedThriftProduct>>? storeProducts)
        loaded,
    required TResult Function(StoreFailure storeFailure) error,
    required TResult Function() loading,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Either<StoreFailure, StoreLink>? storeLink,
            Either<ProductFailure, List<DetailedThriftProduct>>? storeProducts)?
        loaded,
    TResult Function(StoreFailure storeFailure)? error,
    TResult Function()? loading,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Either<StoreFailure, StoreLink>? storeLink,
            Either<ProductFailure, List<DetailedThriftProduct>>? storeProducts)?
        loaded,
    TResult Function(StoreFailure storeFailure)? error,
    TResult Function()? loading,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Error value) error,
    required TResult Function(_Loading value) loading,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Error value)? error,
    TResult Function(_Loading value)? loading,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Error value)? error,
    TResult Function(_Loading value)? loading,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements StorePageState {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$LoadedCopyWith<$Res> {
  factory _$LoadedCopyWith(_Loaded value, $Res Function(_Loaded) then) =
      __$LoadedCopyWithImpl<$Res>;
  $Res call(
      {Either<StoreFailure, StoreLink>? storeLink,
      Either<ProductFailure, List<DetailedThriftProduct>>? storeProducts});
}

/// @nodoc
class __$LoadedCopyWithImpl<$Res> extends _$StorePageStateCopyWithImpl<$Res>
    implements _$LoadedCopyWith<$Res> {
  __$LoadedCopyWithImpl(_Loaded _value, $Res Function(_Loaded) _then)
      : super(_value, (v) => _then(v as _Loaded));

  @override
  _Loaded get _value => super._value as _Loaded;

  @override
  $Res call({
    Object? storeLink = freezed,
    Object? storeProducts = freezed,
  }) {
    return _then(_Loaded(
      storeLink: storeLink == freezed
          ? _value.storeLink
          : storeLink // ignore: cast_nullable_to_non_nullable
              as Either<StoreFailure, StoreLink>?,
      storeProducts: storeProducts == freezed
          ? _value.storeProducts
          : storeProducts // ignore: cast_nullable_to_non_nullable
              as Either<ProductFailure, List<DetailedThriftProduct>>?,
    ));
  }
}

/// @nodoc

class _$_Loaded implements _Loaded {
  const _$_Loaded({this.storeLink, this.storeProducts});

  @override
  final Either<StoreFailure, StoreLink>? storeLink;
  @override
  final Either<ProductFailure, List<DetailedThriftProduct>>? storeProducts;

  @override
  String toString() {
    return 'StorePageState.loaded(storeLink: $storeLink, storeProducts: $storeProducts)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Loaded &&
            const DeepCollectionEquality().equals(other.storeLink, storeLink) &&
            const DeepCollectionEquality()
                .equals(other.storeProducts, storeProducts));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(storeLink),
      const DeepCollectionEquality().hash(storeProducts));

  @JsonKey(ignore: true)
  @override
  _$LoadedCopyWith<_Loaded> get copyWith =>
      __$LoadedCopyWithImpl<_Loaded>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(Either<StoreFailure, StoreLink>? storeLink,
            Either<ProductFailure, List<DetailedThriftProduct>>? storeProducts)
        loaded,
    required TResult Function(StoreFailure storeFailure) error,
    required TResult Function() loading,
  }) {
    return loaded(storeLink, storeProducts);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Either<StoreFailure, StoreLink>? storeLink,
            Either<ProductFailure, List<DetailedThriftProduct>>? storeProducts)?
        loaded,
    TResult Function(StoreFailure storeFailure)? error,
    TResult Function()? loading,
  }) {
    return loaded?.call(storeLink, storeProducts);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Either<StoreFailure, StoreLink>? storeLink,
            Either<ProductFailure, List<DetailedThriftProduct>>? storeProducts)?
        loaded,
    TResult Function(StoreFailure storeFailure)? error,
    TResult Function()? loading,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(storeLink, storeProducts);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Error value) error,
    required TResult Function(_Loading value) loading,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Error value)? error,
    TResult Function(_Loading value)? loading,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Error value)? error,
    TResult Function(_Loading value)? loading,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class _Loaded implements StorePageState {
  const factory _Loaded(
          {Either<StoreFailure, StoreLink>? storeLink,
          Either<ProductFailure, List<DetailedThriftProduct>>? storeProducts}) =
      _$_Loaded;

  Either<StoreFailure, StoreLink>? get storeLink;
  Either<ProductFailure, List<DetailedThriftProduct>>? get storeProducts;
  @JsonKey(ignore: true)
  _$LoadedCopyWith<_Loaded> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$ErrorCopyWith<$Res> {
  factory _$ErrorCopyWith(_Error value, $Res Function(_Error) then) =
      __$ErrorCopyWithImpl<$Res>;
  $Res call({StoreFailure storeFailure});

  $StoreFailureCopyWith<$Res> get storeFailure;
}

/// @nodoc
class __$ErrorCopyWithImpl<$Res> extends _$StorePageStateCopyWithImpl<$Res>
    implements _$ErrorCopyWith<$Res> {
  __$ErrorCopyWithImpl(_Error _value, $Res Function(_Error) _then)
      : super(_value, (v) => _then(v as _Error));

  @override
  _Error get _value => super._value as _Error;

  @override
  $Res call({
    Object? storeFailure = freezed,
  }) {
    return _then(_Error(
      storeFailure == freezed
          ? _value.storeFailure
          : storeFailure // ignore: cast_nullable_to_non_nullable
              as StoreFailure,
    ));
  }

  @override
  $StoreFailureCopyWith<$Res> get storeFailure {
    return $StoreFailureCopyWith<$Res>(_value.storeFailure, (value) {
      return _then(_value.copyWith(storeFailure: value));
    });
  }
}

/// @nodoc

class _$_Error implements _Error {
  const _$_Error(this.storeFailure);

  @override
  final StoreFailure storeFailure;

  @override
  String toString() {
    return 'StorePageState.error(storeFailure: $storeFailure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Error &&
            const DeepCollectionEquality()
                .equals(other.storeFailure, storeFailure));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(storeFailure));

  @JsonKey(ignore: true)
  @override
  _$ErrorCopyWith<_Error> get copyWith =>
      __$ErrorCopyWithImpl<_Error>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(Either<StoreFailure, StoreLink>? storeLink,
            Either<ProductFailure, List<DetailedThriftProduct>>? storeProducts)
        loaded,
    required TResult Function(StoreFailure storeFailure) error,
    required TResult Function() loading,
  }) {
    return error(storeFailure);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Either<StoreFailure, StoreLink>? storeLink,
            Either<ProductFailure, List<DetailedThriftProduct>>? storeProducts)?
        loaded,
    TResult Function(StoreFailure storeFailure)? error,
    TResult Function()? loading,
  }) {
    return error?.call(storeFailure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Either<StoreFailure, StoreLink>? storeLink,
            Either<ProductFailure, List<DetailedThriftProduct>>? storeProducts)?
        loaded,
    TResult Function(StoreFailure storeFailure)? error,
    TResult Function()? loading,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(storeFailure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Error value) error,
    required TResult Function(_Loading value) loading,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Error value)? error,
    TResult Function(_Loading value)? loading,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Error value)? error,
    TResult Function(_Loading value)? loading,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _Error implements StorePageState {
  const factory _Error(StoreFailure storeFailure) = _$_Error;

  StoreFailure get storeFailure;
  @JsonKey(ignore: true)
  _$ErrorCopyWith<_Error> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$LoadingCopyWith<$Res> {
  factory _$LoadingCopyWith(_Loading value, $Res Function(_Loading) then) =
      __$LoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$LoadingCopyWithImpl<$Res> extends _$StorePageStateCopyWithImpl<$Res>
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
    return 'StorePageState.loading()';
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
    required TResult Function() initial,
    required TResult Function(Either<StoreFailure, StoreLink>? storeLink,
            Either<ProductFailure, List<DetailedThriftProduct>>? storeProducts)
        loaded,
    required TResult Function(StoreFailure storeFailure) error,
    required TResult Function() loading,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Either<StoreFailure, StoreLink>? storeLink,
            Either<ProductFailure, List<DetailedThriftProduct>>? storeProducts)?
        loaded,
    TResult Function(StoreFailure storeFailure)? error,
    TResult Function()? loading,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Either<StoreFailure, StoreLink>? storeLink,
            Either<ProductFailure, List<DetailedThriftProduct>>? storeProducts)?
        loaded,
    TResult Function(StoreFailure storeFailure)? error,
    TResult Function()? loading,
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
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Error value) error,
    required TResult Function(_Loading value) loading,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Error value)? error,
    TResult Function(_Loading value)? loading,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Error value)? error,
    TResult Function(_Loading value)? loading,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements StorePageState {
  const factory _Loading() = _$_Loading;
}
