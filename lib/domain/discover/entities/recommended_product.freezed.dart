// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'recommended_product.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

RecommendedProduct _$RecommendedProductFromJson(Map<String, dynamic> json) {
  return _RecommendedProduct.fromJson(json);
}

/// @nodoc
class _$RecommendedProductTearOff {
  const _$RecommendedProductTearOff();

  _RecommendedProduct call(
      {required String id,
      required String name,
      required String size,
      required Uri picture,
      Uri? brand,
      required double price,
      @JsonKey(name: "store") required StoreLink? storeLink}) {
    return _RecommendedProduct(
      id: id,
      name: name,
      size: size,
      picture: picture,
      brand: brand,
      price: price,
      storeLink: storeLink,
    );
  }

  RecommendedProduct fromJson(Map<String, Object?> json) {
    return RecommendedProduct.fromJson(json);
  }
}

/// @nodoc
const $RecommendedProduct = _$RecommendedProductTearOff();

/// @nodoc
mixin _$RecommendedProduct {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get size => throw _privateConstructorUsedError;
  Uri get picture => throw _privateConstructorUsedError;
  Uri? get brand => throw _privateConstructorUsedError;
  double get price => throw _privateConstructorUsedError;
  @JsonKey(name: "store")
  StoreLink? get storeLink => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RecommendedProductCopyWith<RecommendedProduct> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RecommendedProductCopyWith<$Res> {
  factory $RecommendedProductCopyWith(
          RecommendedProduct value, $Res Function(RecommendedProduct) then) =
      _$RecommendedProductCopyWithImpl<$Res>;
  $Res call(
      {String id,
      String name,
      String size,
      Uri picture,
      Uri? brand,
      double price,
      @JsonKey(name: "store") StoreLink? storeLink});

  $StoreLinkCopyWith<$Res>? get storeLink;
}

/// @nodoc
class _$RecommendedProductCopyWithImpl<$Res>
    implements $RecommendedProductCopyWith<$Res> {
  _$RecommendedProductCopyWithImpl(this._value, this._then);

  final RecommendedProduct _value;
  // ignore: unused_field
  final $Res Function(RecommendedProduct) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? size = freezed,
    Object? picture = freezed,
    Object? brand = freezed,
    Object? price = freezed,
    Object? storeLink = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      size: size == freezed
          ? _value.size
          : size // ignore: cast_nullable_to_non_nullable
              as String,
      picture: picture == freezed
          ? _value.picture
          : picture // ignore: cast_nullable_to_non_nullable
              as Uri,
      brand: brand == freezed
          ? _value.brand
          : brand // ignore: cast_nullable_to_non_nullable
              as Uri?,
      price: price == freezed
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double,
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
abstract class _$RecommendedProductCopyWith<$Res>
    implements $RecommendedProductCopyWith<$Res> {
  factory _$RecommendedProductCopyWith(
          _RecommendedProduct value, $Res Function(_RecommendedProduct) then) =
      __$RecommendedProductCopyWithImpl<$Res>;
  @override
  $Res call(
      {String id,
      String name,
      String size,
      Uri picture,
      Uri? brand,
      double price,
      @JsonKey(name: "store") StoreLink? storeLink});

  @override
  $StoreLinkCopyWith<$Res>? get storeLink;
}

/// @nodoc
class __$RecommendedProductCopyWithImpl<$Res>
    extends _$RecommendedProductCopyWithImpl<$Res>
    implements _$RecommendedProductCopyWith<$Res> {
  __$RecommendedProductCopyWithImpl(
      _RecommendedProduct _value, $Res Function(_RecommendedProduct) _then)
      : super(_value, (v) => _then(v as _RecommendedProduct));

  @override
  _RecommendedProduct get _value => super._value as _RecommendedProduct;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? size = freezed,
    Object? picture = freezed,
    Object? brand = freezed,
    Object? price = freezed,
    Object? storeLink = freezed,
  }) {
    return _then(_RecommendedProduct(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      size: size == freezed
          ? _value.size
          : size // ignore: cast_nullable_to_non_nullable
              as String,
      picture: picture == freezed
          ? _value.picture
          : picture // ignore: cast_nullable_to_non_nullable
              as Uri,
      brand: brand == freezed
          ? _value.brand
          : brand // ignore: cast_nullable_to_non_nullable
              as Uri?,
      price: price == freezed
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double,
      storeLink: storeLink == freezed
          ? _value.storeLink
          : storeLink // ignore: cast_nullable_to_non_nullable
              as StoreLink?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_RecommendedProduct implements _RecommendedProduct {
  const _$_RecommendedProduct(
      {required this.id,
      required this.name,
      required this.size,
      required this.picture,
      this.brand,
      required this.price,
      @JsonKey(name: "store") required this.storeLink});

  factory _$_RecommendedProduct.fromJson(Map<String, dynamic> json) =>
      _$$_RecommendedProductFromJson(json);

  @override
  final String id;
  @override
  final String name;
  @override
  final String size;
  @override
  final Uri picture;
  @override
  final Uri? brand;
  @override
  final double price;
  @override
  @JsonKey(name: "store")
  final StoreLink? storeLink;

  @override
  String toString() {
    return 'RecommendedProduct(id: $id, name: $name, size: $size, picture: $picture, brand: $brand, price: $price, storeLink: $storeLink)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _RecommendedProduct &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.size, size) &&
            const DeepCollectionEquality().equals(other.picture, picture) &&
            const DeepCollectionEquality().equals(other.brand, brand) &&
            const DeepCollectionEquality().equals(other.price, price) &&
            const DeepCollectionEquality().equals(other.storeLink, storeLink));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(size),
      const DeepCollectionEquality().hash(picture),
      const DeepCollectionEquality().hash(brand),
      const DeepCollectionEquality().hash(price),
      const DeepCollectionEquality().hash(storeLink));

  @JsonKey(ignore: true)
  @override
  _$RecommendedProductCopyWith<_RecommendedProduct> get copyWith =>
      __$RecommendedProductCopyWithImpl<_RecommendedProduct>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_RecommendedProductToJson(this);
  }
}

abstract class _RecommendedProduct implements RecommendedProduct {
  const factory _RecommendedProduct(
          {required String id,
          required String name,
          required String size,
          required Uri picture,
          Uri? brand,
          required double price,
          @JsonKey(name: "store") required StoreLink? storeLink}) =
      _$_RecommendedProduct;

  factory _RecommendedProduct.fromJson(Map<String, dynamic> json) =
      _$_RecommendedProduct.fromJson;

  @override
  String get id;
  @override
  String get name;
  @override
  String get size;
  @override
  Uri get picture;
  @override
  Uri? get brand;
  @override
  double get price;
  @override
  @JsonKey(name: "store")
  StoreLink? get storeLink;
  @override
  @JsonKey(ignore: true)
  _$RecommendedProductCopyWith<_RecommendedProduct> get copyWith =>
      throw _privateConstructorUsedError;
}
