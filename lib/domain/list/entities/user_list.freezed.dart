// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'user_list.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$UserListTearOff {
  const _$UserListTearOff();

  _UserList call(
      {required String listName,
      required String emoji,
      required List<String> list}) {
    return _UserList(
      listName: listName,
      emoji: emoji,
      list: list,
    );
  }
}

/// @nodoc
const $UserList = _$UserListTearOff();

/// @nodoc
mixin _$UserList {
  String get listName => throw _privateConstructorUsedError;
  String get emoji => throw _privateConstructorUsedError;
  List<String> get list => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $UserListCopyWith<UserList> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserListCopyWith<$Res> {
  factory $UserListCopyWith(UserList value, $Res Function(UserList) then) =
      _$UserListCopyWithImpl<$Res>;
  $Res call({String listName, String emoji, List<String> list});
}

/// @nodoc
class _$UserListCopyWithImpl<$Res> implements $UserListCopyWith<$Res> {
  _$UserListCopyWithImpl(this._value, this._then);

  final UserList _value;
  // ignore: unused_field
  final $Res Function(UserList) _then;

  @override
  $Res call({
    Object? listName = freezed,
    Object? emoji = freezed,
    Object? list = freezed,
  }) {
    return _then(_value.copyWith(
      listName: listName == freezed
          ? _value.listName
          : listName // ignore: cast_nullable_to_non_nullable
              as String,
      emoji: emoji == freezed
          ? _value.emoji
          : emoji // ignore: cast_nullable_to_non_nullable
              as String,
      list: list == freezed
          ? _value.list
          : list // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc
abstract class _$UserListCopyWith<$Res> implements $UserListCopyWith<$Res> {
  factory _$UserListCopyWith(_UserList value, $Res Function(_UserList) then) =
      __$UserListCopyWithImpl<$Res>;
  @override
  $Res call({String listName, String emoji, List<String> list});
}

/// @nodoc
class __$UserListCopyWithImpl<$Res> extends _$UserListCopyWithImpl<$Res>
    implements _$UserListCopyWith<$Res> {
  __$UserListCopyWithImpl(_UserList _value, $Res Function(_UserList) _then)
      : super(_value, (v) => _then(v as _UserList));

  @override
  _UserList get _value => super._value as _UserList;

  @override
  $Res call({
    Object? listName = freezed,
    Object? emoji = freezed,
    Object? list = freezed,
  }) {
    return _then(_UserList(
      listName: listName == freezed
          ? _value.listName
          : listName // ignore: cast_nullable_to_non_nullable
              as String,
      emoji: emoji == freezed
          ? _value.emoji
          : emoji // ignore: cast_nullable_to_non_nullable
              as String,
      list: list == freezed
          ? _value.list
          : list // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc

class _$_UserList implements _UserList {
  const _$_UserList(
      {required this.listName, required this.emoji, required this.list});

  @override
  final String listName;
  @override
  final String emoji;
  @override
  final List<String> list;

  @override
  String toString() {
    return 'UserList(listName: $listName, emoji: $emoji, list: $list)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _UserList &&
            const DeepCollectionEquality().equals(other.listName, listName) &&
            (identical(other.emoji, emoji) || other.emoji == emoji) &&
            const DeepCollectionEquality().equals(other.list, list));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(listName),
     emoji, const DeepCollectionEquality().hash(list));

  @JsonKey(ignore: true)
  @override
  _$UserListCopyWith<_UserList> get copyWith =>
      __$UserListCopyWithImpl<_UserList>(this, _$identity);
}

abstract class _UserList implements UserList {
  const factory _UserList(
      {required String listName,
      required String emoji,
      required List<String> list}) = _$_UserList;

  @override
  String get listName;
  @override
  String get emoji;
  @override
  List<String> get list;
  @override
  @JsonKey(ignore: true)
  _$UserListCopyWith<_UserList> get copyWith =>
      throw _privateConstructorUsedError;
}
