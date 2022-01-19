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
      {required String id,
      required String name,
      required Uri picture,
      String? tagline}) {
    return _StoreLink(
      id: id,
      name: name,
      picture: picture,
      tagline: tagline,
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
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  Uri get picture => throw _privateConstructorUsedError;
  String? get tagline => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $StoreLinkCopyWith<StoreLink> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StoreLinkCopyWith<$Res> {
  factory $StoreLinkCopyWith(StoreLink value, $Res Function(StoreLink) then) =
      _$StoreLinkCopyWithImpl<$Res>;
  $Res call({String id, String name, Uri picture, String? tagline});
}

/// @nodoc
class _$StoreLinkCopyWithImpl<$Res> implements $StoreLinkCopyWith<$Res> {
  _$StoreLinkCopyWithImpl(this._value, this._then);

  final StoreLink _value;
  // ignore: unused_field
  final $Res Function(StoreLink) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? picture = freezed,
    Object? tagline = freezed,
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
    ));
  }
}

/// @nodoc
abstract class _$StoreLinkCopyWith<$Res> implements $StoreLinkCopyWith<$Res> {
  factory _$StoreLinkCopyWith(
          _StoreLink value, $Res Function(_StoreLink) then) =
      __$StoreLinkCopyWithImpl<$Res>;
  @override
  $Res call({String id, String name, Uri picture, String? tagline});
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
    Object? id = freezed,
    Object? name = freezed,
    Object? picture = freezed,
    Object? tagline = freezed,
  }) {
    return _then(_StoreLink(
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
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_StoreLink implements _StoreLink {
  const _$_StoreLink(
      {required this.id,
      required this.name,
      required this.picture,
      this.tagline});

  factory _$_StoreLink.fromJson(Map<String, dynamic> json) =>
      _$$_StoreLinkFromJson(json);

  @override
  final String id;
  @override
  final String name;
  @override
  final Uri picture;
  @override
  final String? tagline;

  @override
  String toString() {
    return 'StoreLink(id: $id, name: $name, picture: $picture, tagline: $tagline)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _StoreLink &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.picture, picture) &&
            const DeepCollectionEquality().equals(other.tagline, tagline));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(picture),
      const DeepCollectionEquality().hash(tagline));

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
      {required String id,
      required String name,
      required Uri picture,
      String? tagline}) = _$_StoreLink;

  factory _StoreLink.fromJson(Map<String, dynamic> json) =
      _$_StoreLink.fromJson;

  @override
  String get id;
  @override
  String get name;
  @override
  Uri get picture;
  @override
  String? get tagline;
  @override
  @JsonKey(ignore: true)
  _$StoreLinkCopyWith<_StoreLink> get copyWith =>
      throw _privateConstructorUsedError;
}
