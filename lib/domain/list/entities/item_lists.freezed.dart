// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'item_lists.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$ItemListsTearOff {
  const _$ItemListsTearOff();

  _ItemLists call(
      {required List<String> cart,
      required List<String> wishList,
      required List<UserList> lists}) {
    return _ItemLists(
      cart: cart,
      wishList: wishList,
      lists: lists,
    );
  }
}

/// @nodoc
const $ItemLists = _$ItemListsTearOff();

/// @nodoc
mixin _$ItemLists {
  List<String> get cart => throw _privateConstructorUsedError;
  List<String> get wishList => throw _privateConstructorUsedError;
  List<UserList> get lists => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ItemListsCopyWith<ItemLists> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ItemListsCopyWith<$Res> {
  factory $ItemListsCopyWith(ItemLists value, $Res Function(ItemLists) then) =
      _$ItemListsCopyWithImpl<$Res>;
  $Res call({List<String> cart, List<String> wishList, List<UserList> lists});
}

/// @nodoc
class _$ItemListsCopyWithImpl<$Res> implements $ItemListsCopyWith<$Res> {
  _$ItemListsCopyWithImpl(this._value, this._then);

  final ItemLists _value;
  // ignore: unused_field
  final $Res Function(ItemLists) _then;

  @override
  $Res call({
    Object? cart = freezed,
    Object? wishList = freezed,
    Object? lists = freezed,
  }) {
    return _then(_value.copyWith(
      cart: cart == freezed
          ? _value.cart
          : cart // ignore: cast_nullable_to_non_nullable
              as List<String>,
      wishList: wishList == freezed
          ? _value.wishList
          : wishList // ignore: cast_nullable_to_non_nullable
              as List<String>,
      lists: lists == freezed
          ? _value.lists
          : lists // ignore: cast_nullable_to_non_nullable
              as List<UserList>,
    ));
  }
}

/// @nodoc
abstract class _$ItemListsCopyWith<$Res> implements $ItemListsCopyWith<$Res> {
  factory _$ItemListsCopyWith(
          _ItemLists value, $Res Function(_ItemLists) then) =
      __$ItemListsCopyWithImpl<$Res>;
  @override
  $Res call({List<String> cart, List<String> wishList, List<UserList> lists});
}

/// @nodoc
class __$ItemListsCopyWithImpl<$Res> extends _$ItemListsCopyWithImpl<$Res>
    implements _$ItemListsCopyWith<$Res> {
  __$ItemListsCopyWithImpl(_ItemLists _value, $Res Function(_ItemLists) _then)
      : super(_value, (v) => _then(v as _ItemLists));

  @override
  _ItemLists get _value => super._value as _ItemLists;

  @override
  $Res call({
    Object? cart = freezed,
    Object? wishList = freezed,
    Object? lists = freezed,
  }) {
    return _then(_ItemLists(
      cart: cart == freezed
          ? _value.cart
          : cart // ignore: cast_nullable_to_non_nullable
              as List<String>,
      wishList: wishList == freezed
          ? _value.wishList
          : wishList // ignore: cast_nullable_to_non_nullable
              as List<String>,
      lists: lists == freezed
          ? _value.lists
          : lists // ignore: cast_nullable_to_non_nullable
              as List<UserList>,
    ));
  }
}

/// @nodoc

class _$_ItemLists implements _ItemLists {
  const _$_ItemLists(
      {required this.cart, required this.wishList, required this.lists});

  @override
  final List<String> cart;
  @override
  final List<String> wishList;
  @override
  final List<UserList> lists;

  @override
  String toString() {
    return 'ItemLists(cart: $cart, wishList: $wishList, lists: $lists)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ItemLists &&
            const DeepCollectionEquality().equals(other.cart, cart) &&
            const DeepCollectionEquality().equals(other.wishList, wishList) &&
            const DeepCollectionEquality().equals(other.lists, lists));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(cart),
      const DeepCollectionEquality().hash(wishList),
      const DeepCollectionEquality().hash(lists));

  @JsonKey(ignore: true)
  @override
  _$ItemListsCopyWith<_ItemLists> get copyWith =>
      __$ItemListsCopyWithImpl<_ItemLists>(this, _$identity);
}

abstract class _ItemLists implements ItemLists {
  const factory _ItemLists(
      {required List<String> cart,
      required List<String> wishList,
      required List<UserList> lists}) = _$_ItemLists;

  @override
  List<String> get cart;
  @override
  List<String> get wishList;
  @override
  List<UserList> get lists;
  @override
  @JsonKey(ignore: true)
  _$ItemListsCopyWith<_ItemLists> get copyWith =>
      throw _privateConstructorUsedError;
}
