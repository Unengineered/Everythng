// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'store_link.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

StoreLink _$StoreLinkFromJson(Map<String, dynamic> json) {
  return _StoreLink.fromJson(json);
}

/// @nodoc
class _$StoreLinkTearOff {
  const _$StoreLinkTearOff();

  _StoreLink call(
      {required String name,
      required String id,
      required Uri thumbnail,
      required Uri instagram}) {
    return _StoreLink(
      name: name,
      id: id,
      thumbnail: thumbnail,
      instagram: instagram,
    );
  }

  StoreLink fromJson(Map<String, Object?> json) {
    return StoreLink.fromJson(json);
  }
}

/// @nodoc
const $StoreLink = _$StoreLinkTearOff();

/// @nodoc
mixin _$StoreLink {
  String get name => throw _privateConstructorUsedError;
  String get id => throw _privateConstructorUsedError;
  Uri get thumbnail => throw _privateConstructorUsedError;
  Uri get instagram => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $StoreLinkCopyWith<StoreLink> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StoreLinkCopyWith<$Res> {
  factory $StoreLinkCopyWith(StoreLink value, $Res Function(StoreLink) then) =
      _$StoreLinkCopyWithImpl<$Res>;
  $Res call({String name, String id, Uri thumbnail, Uri instagram});
}

/// @nodoc
class _$StoreLinkCopyWithImpl<$Res> implements $StoreLinkCopyWith<$Res> {
  _$StoreLinkCopyWithImpl(this._value, this._then);

  final StoreLink _value;
  // ignore: unused_field
  final $Res Function(StoreLink) _then;

  @override
  $Res call({
    Object? name = freezed,
    Object? id = freezed,
    Object? thumbnail = freezed,
    Object? instagram = freezed,
  }) {
    return _then(_value.copyWith(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      thumbnail: thumbnail == freezed
          ? _value.thumbnail
          : thumbnail // ignore: cast_nullable_to_non_nullable
              as Uri,
      instagram: instagram == freezed
          ? _value.instagram
          : instagram // ignore: cast_nullable_to_non_nullable
              as Uri,
    ));
  }
}

/// @nodoc
abstract class _$StoreLinkCopyWith<$Res> implements $StoreLinkCopyWith<$Res> {
  factory _$StoreLinkCopyWith(
          _StoreLink value, $Res Function(_StoreLink) then) =
      __$StoreLinkCopyWithImpl<$Res>;
  @override
  $Res call({String name, String id, Uri thumbnail, Uri instagram});
}

/// @nodoc
class __$StoreLinkCopyWithImpl<$Res> extends _$StoreLinkCopyWithImpl<$Res>
    implements _$StoreLinkCopyWith<$Res> {
  __$StoreLinkCopyWithImpl(_StoreLink _value, $Res Function(_StoreLink) _then)
      : super(_value, (v) => _then(v as _StoreLink));

  @override
  _StoreLink get _value => super._value as _StoreLink;

  @override
  $Res call({
    Object? name = freezed,
    Object? id = freezed,
    Object? thumbnail = freezed,
    Object? instagram = freezed,
  }) {
    return _then(_StoreLink(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      thumbnail: thumbnail == freezed
          ? _value.thumbnail
          : thumbnail // ignore: cast_nullable_to_non_nullable
              as Uri,
      instagram: instagram == freezed
          ? _value.instagram
          : instagram // ignore: cast_nullable_to_non_nullable
              as Uri,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_StoreLink implements _StoreLink {
  const _$_StoreLink(
      {required this.name,
      required this.id,
      required this.thumbnail,
      required this.instagram});

  factory _$_StoreLink.fromJson(Map<String, dynamic> json) =>
      _$$_StoreLinkFromJson(json);

  @override
  final String name;
  @override
  final String id;
  @override
  final Uri thumbnail;
  @override
  final Uri instagram;

  @override
  String toString() {
    return 'StoreLink(name: $name, id: $id, thumbnail: $thumbnail, instagram: $instagram)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _StoreLink &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.thumbnail, thumbnail) &&
            const DeepCollectionEquality().equals(other.instagram, instagram));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(thumbnail),
      const DeepCollectionEquality().hash(instagram));

  @JsonKey(ignore: true)
  @override
  _$StoreLinkCopyWith<_StoreLink> get copyWith =>
      __$StoreLinkCopyWithImpl<_StoreLink>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_StoreLinkToJson(this);
  }
}

abstract class _StoreLink implements StoreLink {
  const factory _StoreLink(
      {required String name,
      required String id,
      required Uri thumbnail,
      required Uri instagram}) = _$_StoreLink;

  factory _StoreLink.fromJson(Map<String, dynamic> json) =
      _$_StoreLink.fromJson;

  @override
  String get name;
  @override
  String get id;
  @override
  Uri get thumbnail;
  @override
  Uri get instagram;
  @override
  @JsonKey(ignore: true)
  _$StoreLinkCopyWith<_StoreLink> get copyWith =>
      throw _privateConstructorUsedError;
}
