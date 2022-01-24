// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'detailed_thrift_product.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

DetailedThriftProduct _$DetailedThriftProductFromJson(
    Map<String, dynamic> json) {
  return _DetailedThriftProduct.fromJson(json);
}

/// @nodoc
class _$DetailedThriftProductTearOff {
  const _$DetailedThriftProductTearOff();

  _DetailedThriftProduct call(
      {@JsonKey(name: "_id") required String id,
      required String name,
      required double price,
      @JsonKey(name: "original_price") double? originalPrice,
      required List<Uri> pictures,
      @JsonKey(name: "size_chart") required SizeChart sizeChart,
      required List<Issue> issues,
      Brand? brand,
      @JsonKey(name: "customer_review") Review? customerReview,
      @JsonKey(name: "store_link") required StoreLink storeLink}) {
    return _DetailedThriftProduct(
      id: id,
      name: name,
      price: price,
      originalPrice: originalPrice,
      pictures: pictures,
      sizeChart: sizeChart,
      issues: issues,
      brand: brand,
      customerReview: customerReview,
      storeLink: storeLink,
    );
  }

  DetailedThriftProduct fromJson(Map<String, Object?> json) {
    return DetailedThriftProduct.fromJson(json);
  }
}

/// @nodoc
const $DetailedThriftProduct = _$DetailedThriftProductTearOff();

/// @nodoc
mixin _$DetailedThriftProduct {
  @JsonKey(name: "_id")
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  double get price => throw _privateConstructorUsedError;
  @JsonKey(name: "original_price")
  double? get originalPrice => throw _privateConstructorUsedError;
  List<Uri> get pictures => throw _privateConstructorUsedError;
  @JsonKey(name: "size_chart")
  SizeChart get sizeChart => throw _privateConstructorUsedError;
  List<Issue> get issues => throw _privateConstructorUsedError;
  Brand? get brand => throw _privateConstructorUsedError;
  @JsonKey(name: "customer_review")
  Review? get customerReview => throw _privateConstructorUsedError;
  @JsonKey(name: "store_link")
  StoreLink get storeLink => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DetailedThriftProductCopyWith<DetailedThriftProduct> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DetailedThriftProductCopyWith<$Res> {
  factory $DetailedThriftProductCopyWith(DetailedThriftProduct value,
          $Res Function(DetailedThriftProduct) then) =
      _$DetailedThriftProductCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: "_id") String id,
      String name,
      double price,
      @JsonKey(name: "original_price") double? originalPrice,
      List<Uri> pictures,
      @JsonKey(name: "size_chart") SizeChart sizeChart,
      List<Issue> issues,
      Brand? brand,
      @JsonKey(name: "customer_review") Review? customerReview,
      @JsonKey(name: "store_link") StoreLink storeLink});

  $SizeChartCopyWith<$Res> get sizeChart;
  $BrandCopyWith<$Res>? get brand;
  $ReviewCopyWith<$Res>? get customerReview;
  $StoreLinkCopyWith<$Res> get storeLink;
}

/// @nodoc
class _$DetailedThriftProductCopyWithImpl<$Res>
    implements $DetailedThriftProductCopyWith<$Res> {
  _$DetailedThriftProductCopyWithImpl(this._value, this._then);

  final DetailedThriftProduct _value;
  // ignore: unused_field
  final $Res Function(DetailedThriftProduct) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? price = freezed,
    Object? originalPrice = freezed,
    Object? pictures = freezed,
    Object? sizeChart = freezed,
    Object? issues = freezed,
    Object? brand = freezed,
    Object? customerReview = freezed,
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
      price: price == freezed
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double,
      originalPrice: originalPrice == freezed
          ? _value.originalPrice
          : originalPrice // ignore: cast_nullable_to_non_nullable
              as double?,
      pictures: pictures == freezed
          ? _value.pictures
          : pictures // ignore: cast_nullable_to_non_nullable
              as List<Uri>,
      sizeChart: sizeChart == freezed
          ? _value.sizeChart
          : sizeChart // ignore: cast_nullable_to_non_nullable
              as SizeChart,
      issues: issues == freezed
          ? _value.issues
          : issues // ignore: cast_nullable_to_non_nullable
              as List<Issue>,
      brand: brand == freezed
          ? _value.brand
          : brand // ignore: cast_nullable_to_non_nullable
              as Brand?,
      customerReview: customerReview == freezed
          ? _value.customerReview
          : customerReview // ignore: cast_nullable_to_non_nullable
              as Review?,
      storeLink: storeLink == freezed
          ? _value.storeLink
          : storeLink // ignore: cast_nullable_to_non_nullable
              as StoreLink,
    ));
  }

  @override
  $SizeChartCopyWith<$Res> get sizeChart {
    return $SizeChartCopyWith<$Res>(_value.sizeChart, (value) {
      return _then(_value.copyWith(sizeChart: value));
    });
  }

  @override
  $BrandCopyWith<$Res>? get brand {
    if (_value.brand == null) {
      return null;
    }

    return $BrandCopyWith<$Res>(_value.brand!, (value) {
      return _then(_value.copyWith(brand: value));
    });
  }

  @override
  $ReviewCopyWith<$Res>? get customerReview {
    if (_value.customerReview == null) {
      return null;
    }

    return $ReviewCopyWith<$Res>(_value.customerReview!, (value) {
      return _then(_value.copyWith(customerReview: value));
    });
  }

  @override
  $StoreLinkCopyWith<$Res> get storeLink {
    return $StoreLinkCopyWith<$Res>(_value.storeLink, (value) {
      return _then(_value.copyWith(storeLink: value));
    });
  }
}

/// @nodoc
abstract class _$DetailedThriftProductCopyWith<$Res>
    implements $DetailedThriftProductCopyWith<$Res> {
  factory _$DetailedThriftProductCopyWith(_DetailedThriftProduct value,
          $Res Function(_DetailedThriftProduct) then) =
      __$DetailedThriftProductCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: "_id") String id,
      String name,
      double price,
      @JsonKey(name: "original_price") double? originalPrice,
      List<Uri> pictures,
      @JsonKey(name: "size_chart") SizeChart sizeChart,
      List<Issue> issues,
      Brand? brand,
      @JsonKey(name: "customer_review") Review? customerReview,
      @JsonKey(name: "store_link") StoreLink storeLink});

  @override
  $SizeChartCopyWith<$Res> get sizeChart;
  @override
  $BrandCopyWith<$Res>? get brand;
  @override
  $ReviewCopyWith<$Res>? get customerReview;
  @override
  $StoreLinkCopyWith<$Res> get storeLink;
}

/// @nodoc
class __$DetailedThriftProductCopyWithImpl<$Res>
    extends _$DetailedThriftProductCopyWithImpl<$Res>
    implements _$DetailedThriftProductCopyWith<$Res> {
  __$DetailedThriftProductCopyWithImpl(_DetailedThriftProduct _value,
      $Res Function(_DetailedThriftProduct) _then)
      : super(_value, (v) => _then(v as _DetailedThriftProduct));

  @override
  _DetailedThriftProduct get _value => super._value as _DetailedThriftProduct;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? price = freezed,
    Object? originalPrice = freezed,
    Object? pictures = freezed,
    Object? sizeChart = freezed,
    Object? issues = freezed,
    Object? brand = freezed,
    Object? customerReview = freezed,
    Object? storeLink = freezed,
  }) {
    return _then(_DetailedThriftProduct(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      price: price == freezed
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double,
      originalPrice: originalPrice == freezed
          ? _value.originalPrice
          : originalPrice // ignore: cast_nullable_to_non_nullable
              as double?,
      pictures: pictures == freezed
          ? _value.pictures
          : pictures // ignore: cast_nullable_to_non_nullable
              as List<Uri>,
      sizeChart: sizeChart == freezed
          ? _value.sizeChart
          : sizeChart // ignore: cast_nullable_to_non_nullable
              as SizeChart,
      issues: issues == freezed
          ? _value.issues
          : issues // ignore: cast_nullable_to_non_nullable
              as List<Issue>,
      brand: brand == freezed
          ? _value.brand
          : brand // ignore: cast_nullable_to_non_nullable
              as Brand?,
      customerReview: customerReview == freezed
          ? _value.customerReview
          : customerReview // ignore: cast_nullable_to_non_nullable
              as Review?,
      storeLink: storeLink == freezed
          ? _value.storeLink
          : storeLink // ignore: cast_nullable_to_non_nullable
              as StoreLink,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_DetailedThriftProduct implements _DetailedThriftProduct {
  const _$_DetailedThriftProduct(
      {@JsonKey(name: "_id") required this.id,
      required this.name,
      required this.price,
      @JsonKey(name: "original_price") this.originalPrice,
      required this.pictures,
      @JsonKey(name: "size_chart") required this.sizeChart,
      required this.issues,
      this.brand,
      @JsonKey(name: "customer_review") this.customerReview,
      @JsonKey(name: "store_link") required this.storeLink});

  factory _$_DetailedThriftProduct.fromJson(Map<String, dynamic> json) =>
      _$$_DetailedThriftProductFromJson(json);

  @override
  @JsonKey(name: "_id")
  final String id;
  @override
  final String name;
  @override
  final double price;
  @override
  @JsonKey(name: "original_price")
  final double? originalPrice;
  @override
  final List<Uri> pictures;
  @override
  @JsonKey(name: "size_chart")
  final SizeChart sizeChart;
  @override
  final List<Issue> issues;
  @override
  final Brand? brand;
  @override
  @JsonKey(name: "customer_review")
  final Review? customerReview;
  @override
  @JsonKey(name: "store_link")
  final StoreLink storeLink;

  @override
  String toString() {
    return 'DetailedThriftProduct(id: $id, name: $name, price: $price, originalPrice: $originalPrice, pictures: $pictures, sizeChart: $sizeChart, issues: $issues, brand: $brand, customerReview: $customerReview, storeLink: $storeLink)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _DetailedThriftProduct &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.price, price) &&
            const DeepCollectionEquality()
                .equals(other.originalPrice, originalPrice) &&
            const DeepCollectionEquality().equals(other.pictures, pictures) &&
            const DeepCollectionEquality().equals(other.sizeChart, sizeChart) &&
            const DeepCollectionEquality().equals(other.issues, issues) &&
            const DeepCollectionEquality().equals(other.brand, brand) &&
            const DeepCollectionEquality()
                .equals(other.customerReview, customerReview) &&
            const DeepCollectionEquality().equals(other.storeLink, storeLink));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(price),
      const DeepCollectionEquality().hash(originalPrice),
      const DeepCollectionEquality().hash(pictures),
      const DeepCollectionEquality().hash(sizeChart),
      const DeepCollectionEquality().hash(issues),
      const DeepCollectionEquality().hash(brand),
      const DeepCollectionEquality().hash(customerReview),
      const DeepCollectionEquality().hash(storeLink));

  @JsonKey(ignore: true)
  @override
  _$DetailedThriftProductCopyWith<_DetailedThriftProduct> get copyWith =>
      __$DetailedThriftProductCopyWithImpl<_DetailedThriftProduct>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DetailedThriftProductToJson(this);
  }
}

abstract class _DetailedThriftProduct implements DetailedThriftProduct {
  const factory _DetailedThriftProduct(
          {@JsonKey(name: "_id") required String id,
          required String name,
          required double price,
          @JsonKey(name: "original_price") double? originalPrice,
          required List<Uri> pictures,
          @JsonKey(name: "size_chart") required SizeChart sizeChart,
          required List<Issue> issues,
          Brand? brand,
          @JsonKey(name: "customer_review") Review? customerReview,
          @JsonKey(name: "store_link") required StoreLink storeLink}) =
      _$_DetailedThriftProduct;

  factory _DetailedThriftProduct.fromJson(Map<String, dynamic> json) =
      _$_DetailedThriftProduct.fromJson;

  @override
  @JsonKey(name: "_id")
  String get id;
  @override
  String get name;
  @override
  double get price;
  @override
  @JsonKey(name: "original_price")
  double? get originalPrice;
  @override
  List<Uri> get pictures;
  @override
  @JsonKey(name: "size_chart")
  SizeChart get sizeChart;
  @override
  List<Issue> get issues;
  @override
  Brand? get brand;
  @override
  @JsonKey(name: "customer_review")
  Review? get customerReview;
  @override
  @JsonKey(name: "store_link")
  StoreLink get storeLink;
  @override
  @JsonKey(ignore: true)
  _$DetailedThriftProductCopyWith<_DetailedThriftProduct> get copyWith =>
      throw _privateConstructorUsedError;
}
