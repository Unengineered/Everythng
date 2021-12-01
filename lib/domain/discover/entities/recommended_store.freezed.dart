// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'recommended_store.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

RecommendedStore _$RecommendedStoreFromJson(Map<String, dynamic> json) {
  return _RecommendedStore.fromJson(json);
}

/// @nodoc
class _$RecommendedStoreTearOff {
  const _$RecommendedStoreTearOff();

  _RecommendedStore call(
      {required StoreLink storeLink,
      required List<RecommendedProduct> products}) {
    return _RecommendedStore(
      storeLink: storeLink,
      products: products,
    );
  }

  RecommendedStore fromJson(Map<String, Object?> json) {
    return RecommendedStore.fromJson(json);
  }
}

/// @nodoc
const $RecommendedStore = _$RecommendedStoreTearOff();

/// @nodoc
mixin _$RecommendedStore {
  StoreLink get storeLink => throw _privateConstructorUsedError;
  List<RecommendedProduct> get products => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RecommendedStoreCopyWith<RecommendedStore> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RecommendedStoreCopyWith<$Res> {
  factory $RecommendedStoreCopyWith(
          RecommendedStore value, $Res Function(RecommendedStore) then) =
      _$RecommendedStoreCopyWithImpl<$Res>;
  $Res call({StoreLink storeLink, List<RecommendedProduct> products});

  $StoreLinkCopyWith<$Res> get storeLink;
}

/// @nodoc
class _$RecommendedStoreCopyWithImpl<$Res>
    implements $RecommendedStoreCopyWith<$Res> {
  _$RecommendedStoreCopyWithImpl(this._value, this._then);

  final RecommendedStore _value;
  // ignore: unused_field
  final $Res Function(RecommendedStore) _then;

  @override
  $Res call({
    Object? storeLink = freezed,
    Object? products = freezed,
  }) {
    return _then(_value.copyWith(
      storeLink: storeLink == freezed
          ? _value.storeLink
          : storeLink // ignore: cast_nullable_to_non_nullable
              as StoreLink,
      products: products == freezed
          ? _value.products
          : products // ignore: cast_nullable_to_non_nullable
              as List<RecommendedProduct>,
    ));
  }

  @override
  $StoreLinkCopyWith<$Res> get storeLink {
    return $StoreLinkCopyWith<$Res>(_value.storeLink, (value) {
      return _then(_value.copyWith(storeLink: value));
    });
  }
}

/// @nodoc
abstract class _$RecommendedStoreCopyWith<$Res>
    implements $RecommendedStoreCopyWith<$Res> {
  factory _$RecommendedStoreCopyWith(
          _RecommendedStore value, $Res Function(_RecommendedStore) then) =
      __$RecommendedStoreCopyWithImpl<$Res>;
  @override
  $Res call({StoreLink storeLink, List<RecommendedProduct> products});

  @override
  $StoreLinkCopyWith<$Res> get storeLink;
}

/// @nodoc
class __$RecommendedStoreCopyWithImpl<$Res>
    extends _$RecommendedStoreCopyWithImpl<$Res>
    implements _$RecommendedStoreCopyWith<$Res> {
  __$RecommendedStoreCopyWithImpl(
      _RecommendedStore _value, $Res Function(_RecommendedStore) _then)
      : super(_value, (v) => _then(v as _RecommendedStore));

  @override
  _RecommendedStore get _value => super._value as _RecommendedStore;

  @override
  $Res call({
    Object? storeLink = freezed,
    Object? products = freezed,
  }) {
    return _then(_RecommendedStore(
      storeLink: storeLink == freezed
          ? _value.storeLink
          : storeLink // ignore: cast_nullable_to_non_nullable
              as StoreLink,
      products: products == freezed
          ? _value.products
          : products // ignore: cast_nullable_to_non_nullable
              as List<RecommendedProduct>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_RecommendedStore implements _RecommendedStore {
  const _$_RecommendedStore({required this.storeLink, required this.products});

  factory _$_RecommendedStore.fromJson(Map<String, dynamic> json) =>
      _$$_RecommendedStoreFromJson(json);

  @override
  final StoreLink storeLink;
  @override
  final List<RecommendedProduct> products;

  @override
  String toString() {
    return 'RecommendedStore(storeLink: $storeLink, products: $products)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _RecommendedStore &&
            (identical(other.storeLink, storeLink) ||
                other.storeLink == storeLink) &&
            const DeepCollectionEquality().equals(other.products, products));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, storeLink, const DeepCollectionEquality().hash(products));

  @JsonKey(ignore: true)
  @override
  _$RecommendedStoreCopyWith<_RecommendedStore> get copyWith =>
      __$RecommendedStoreCopyWithImpl<_RecommendedStore>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_RecommendedStoreToJson(this);
  }
}

abstract class _RecommendedStore implements RecommendedStore {
  const factory _RecommendedStore(
      {required StoreLink storeLink,
      required List<RecommendedProduct> products}) = _$_RecommendedStore;

  factory _RecommendedStore.fromJson(Map<String, dynamic> json) =
      _$_RecommendedStore.fromJson;

  @override
  StoreLink get storeLink;
  @override
  List<RecommendedProduct> get products;
  @override
  @JsonKey(ignore: true)
  _$RecommendedStoreCopyWith<_RecommendedStore> get copyWith =>
      throw _privateConstructorUsedError;
}
