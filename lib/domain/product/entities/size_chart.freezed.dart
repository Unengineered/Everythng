// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'size_chart.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SizeChart _$SizeChartFromJson(Map<String, dynamic> json) {
  return _SizeChart.fromJson(json);
}

/// @nodoc
class _$SizeChartTearOff {
  const _$SizeChartTearOff();

  _SizeChart call({required Map<String, String> attributes}) {
    return _SizeChart(
      attributes: attributes,
    );
  }

  SizeChart fromJson(Map<String, Object?> json) {
    return SizeChart.fromJson(json);
  }
}

/// @nodoc
const $SizeChart = _$SizeChartTearOff();

/// @nodoc
mixin _$SizeChart {
  Map<String, String> get attributes => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SizeChartCopyWith<SizeChart> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SizeChartCopyWith<$Res> {
  factory $SizeChartCopyWith(SizeChart value, $Res Function(SizeChart) then) =
      _$SizeChartCopyWithImpl<$Res>;
  $Res call({Map<String, String> attributes});
}

/// @nodoc
class _$SizeChartCopyWithImpl<$Res> implements $SizeChartCopyWith<$Res> {
  _$SizeChartCopyWithImpl(this._value, this._then);

  final SizeChart _value;
  // ignore: unused_field
  final $Res Function(SizeChart) _then;

  @override
  $Res call({
    Object? attributes = freezed,
  }) {
    return _then(_value.copyWith(
      attributes: attributes == freezed
          ? _value.attributes
          : attributes // ignore: cast_nullable_to_non_nullable
              as Map<String, String>,
    ));
  }
}

/// @nodoc
abstract class _$SizeChartCopyWith<$Res> implements $SizeChartCopyWith<$Res> {
  factory _$SizeChartCopyWith(
          _SizeChart value, $Res Function(_SizeChart) then) =
      __$SizeChartCopyWithImpl<$Res>;
  @override
  $Res call({Map<String, String> attributes});
}

/// @nodoc
class __$SizeChartCopyWithImpl<$Res> extends _$SizeChartCopyWithImpl<$Res>
    implements _$SizeChartCopyWith<$Res> {
  __$SizeChartCopyWithImpl(_SizeChart _value, $Res Function(_SizeChart) _then)
      : super(_value, (v) => _then(v as _SizeChart));

  @override
  _SizeChart get _value => super._value as _SizeChart;

  @override
  $Res call({
    Object? attributes = freezed,
  }) {
    return _then(_SizeChart(
      attributes: attributes == freezed
          ? _value.attributes
          : attributes // ignore: cast_nullable_to_non_nullable
              as Map<String, String>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_SizeChart implements _SizeChart {
  const _$_SizeChart({required this.attributes});

  factory _$_SizeChart.fromJson(Map<String, dynamic> json) =>
      _$$_SizeChartFromJson(json);

  @override
  final Map<String, String> attributes;

  @override
  String toString() {
    return 'SizeChart(attributes: $attributes)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _SizeChart &&
            const DeepCollectionEquality()
                .equals(other.attributes, attributes));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(attributes));

  @JsonKey(ignore: true)
  @override
  _$SizeChartCopyWith<_SizeChart> get copyWith =>
      __$SizeChartCopyWithImpl<_SizeChart>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SizeChartToJson(this);
  }
}

abstract class _SizeChart implements SizeChart {
  const factory _SizeChart({required Map<String, String> attributes}) =
      _$_SizeChart;

  factory _SizeChart.fromJson(Map<String, dynamic> json) =
      _$_SizeChart.fromJson;

  @override
  Map<String, String> get attributes;
  @override
  @JsonKey(ignore: true)
  _$SizeChartCopyWith<_SizeChart> get copyWith =>
      throw _privateConstructorUsedError;
}
