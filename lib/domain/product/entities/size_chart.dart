import 'package:freezed_annotation/freezed_annotation.dart';

part 'size_chart.freezed.dart';
part 'size_chart.g.dart';

@freezed
class SizeChart with _$SizeChart{
    const factory SizeChart({required Map<String, String> attributes}) = _SizeChart;
    factory SizeChart.fromJson(Map<String, dynamic> json) => _$SizeChartFromJson(json);
}