import 'package:freezed_annotation/freezed_annotation.dart';

part 'size_chart.freezed.dart';

@freezed
class SizeChart with _$SizeChart{
    const factory SizeChart({required Map<String, String> attributes}) = _SizeChart;
}