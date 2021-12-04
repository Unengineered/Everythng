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
      {required String id,
      required String name,
      required Uri picture,
      String? tagline,
      required List<RecommendedProduct> products}) {
    return _RecommendedStore(
      id: id,
      name: name,
      picture: picture,
      tagline: tagline,
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
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  Uri get picture => throw _privateConstructorUsedError;
  String? get tagline => throw _privateConstructorUsedError;
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
  $Res call(
      {String id,
      String name,
      Uri picture,
      String? tagline,
      List<RecommendedProduct> products});
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
    Object? id = freezed,
    Object? name = freezed,
    Object? picture = freezed,
    Object? tagline = freezed,
    Object? products = freezed,
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
      picture: picture == freezed
          ? _value.picture
          : picture // ignore: cast_nullable_to_non_nullable
              as Uri,
      tagline: tagline == freezed
          ? _value.tagline
          : tagline // ignore: cast_nullable_to_non_nullable
              as String?,
      products: products == freezed
          ? _value.products
          : products // ignore: cast_nullable_to_non_nullable
              as List<RecommendedProduct>,
    ));
  }
}

/// @nodoc
abstract class _$RecommendedStoreCopyWith<$Res>
    implements $RecommendedStoreCopyWith<$Res> {
  factory _$RecommendedStoreCopyWith(
          _RecommendedStore value, $Res Function(_RecommendedStore) then) =
      __$RecommendedStoreCopyWithImpl<$Res>;
  @override
  $Res call(
      {String id,
      String name,
      Uri picture,
      String? tagline,
      List<RecommendedProduct> products});
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
    Object? id = freezed,
    Object? name = freezed,
    Object? picture = freezed,
    Object? tagline = freezed,
    Object? products = freezed,
  }) {
    return _then(_RecommendedStore(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      picture: picture == freezed
          ? _value.picture
          : picture // ignore: cast_nullable_to_non_nullable
              as Uri,
      tagline: tagline == freezed
          ? _value.tagline
          : tagline // ignore: cast_nullable_to_non_nullable
              as String?,
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
  const _$_RecommendedStore(
      {required this.id,
      required this.name,
      required this.picture,
      this.tagline,
      required this.products});

  factory _$_RecommendedStore.fromJson(Map<String, dynamic> json) =>
      _$$_RecommendedStoreFromJson(json);

  @override
  final String id;
  @override
  final String name;
  @override
  final Uri picture;
  @override
  final String? tagline;
  @override
  final List<RecommendedProduct> products;

  @override
  String toString() {
    return 'RecommendedStore(id: $id, name: $name, picture: $picture, tagline: $tagline, products: $products)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _RecommendedStore &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.picture, picture) || other.picture == picture) &&
            (identical(other.tagline, tagline) || other.tagline == tagline) &&
            const DeepCollectionEquality().equals(other.products, products));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, name, picture, tagline,
      const DeepCollectionEquality().hash(products));

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
      {required String id,
      required String name,
      required Uri picture,
      String? tagline,
      required List<RecommendedProduct> products}) = _$_RecommendedStore;

  factory _RecommendedStore.fromJson(Map<String, dynamic> json) =
      _$_RecommendedStore.fromJson;

  @override
  String get id;
  @override
  String get name;
  @override
  Uri get picture;
  @override
  String? get tagline;
  @override
  List<RecommendedProduct> get products;
  @override
  @JsonKey(ignore: true)
  _$RecommendedStoreCopyWith<_RecommendedStore> get copyWith =>
      throw _privateConstructorUsedError;
}
