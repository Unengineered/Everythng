// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'issue.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Issue _$IssueFromJson(Map<String, dynamic> json) {
  return _Issue.fromJson(json);
}

/// @nodoc
class _$IssueTearOff {
  const _$IssueTearOff();

  _Issue call({required String description, required List<Uri> pictures}) {
    return _Issue(
      description: description,
      pictures: pictures,
    );
  }

  Issue fromJson(Map<String, Object?> json) {
    return Issue.fromJson(json);
  }
}

/// @nodoc
const $Issue = _$IssueTearOff();

/// @nodoc
mixin _$Issue {
  String get description => throw _privateConstructorUsedError;
  List<Uri> get pictures => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $IssueCopyWith<Issue> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $IssueCopyWith<$Res> {
  factory $IssueCopyWith(Issue value, $Res Function(Issue) then) =
      _$IssueCopyWithImpl<$Res>;
  $Res call({String description, List<Uri> pictures});
}

/// @nodoc
class _$IssueCopyWithImpl<$Res> implements $IssueCopyWith<$Res> {
  _$IssueCopyWithImpl(this._value, this._then);

  final Issue _value;
  // ignore: unused_field
  final $Res Function(Issue) _then;

  @override
  $Res call({
    Object? description = freezed,
    Object? pictures = freezed,
  }) {
    return _then(_value.copyWith(
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      pictures: pictures == freezed
          ? _value.pictures
          : pictures // ignore: cast_nullable_to_non_nullable
              as List<Uri>,
    ));
  }
}

/// @nodoc
abstract class _$IssueCopyWith<$Res> implements $IssueCopyWith<$Res> {
  factory _$IssueCopyWith(_Issue value, $Res Function(_Issue) then) =
      __$IssueCopyWithImpl<$Res>;
  @override
  $Res call({String description, List<Uri> pictures});
}

/// @nodoc
class __$IssueCopyWithImpl<$Res> extends _$IssueCopyWithImpl<$Res>
    implements _$IssueCopyWith<$Res> {
  __$IssueCopyWithImpl(_Issue _value, $Res Function(_Issue) _then)
      : super(_value, (v) => _then(v as _Issue));

  @override
  _Issue get _value => super._value as _Issue;

  @override
  $Res call({
    Object? description = freezed,
    Object? pictures = freezed,
  }) {
    return _then(_Issue(
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      pictures: pictures == freezed
          ? _value.pictures
          : pictures // ignore: cast_nullable_to_non_nullable
              as List<Uri>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Issue implements _Issue {
  const _$_Issue({required this.description, required this.pictures});

  factory _$_Issue.fromJson(Map<String, dynamic> json) =>
      _$$_IssueFromJson(json);

  @override
  final String description;
  @override
  final List<Uri> pictures;

  @override
  String toString() {
    return 'Issue(description: $description, pictures: $pictures)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Issue &&
            const DeepCollectionEquality()
                .equals(other.description, description) &&
            const DeepCollectionEquality().equals(other.pictures, pictures));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(description),
      const DeepCollectionEquality().hash(pictures));

  @JsonKey(ignore: true)
  @override
  _$IssueCopyWith<_Issue> get copyWith =>
      __$IssueCopyWithImpl<_Issue>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_IssueToJson(this);
  }
}

abstract class _Issue implements Issue {
  const factory _Issue(
      {required String description, required List<Uri> pictures}) = _$_Issue;

  factory _Issue.fromJson(Map<String, dynamic> json) = _$_Issue.fromJson;

  @override
  String get description;
  @override
  List<Uri> get pictures;
  @override
  @JsonKey(ignore: true)
  _$IssueCopyWith<_Issue> get copyWith => throw _privateConstructorUsedError;
}
