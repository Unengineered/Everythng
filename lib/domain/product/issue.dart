import 'package:freezed_annotation/freezed_annotation.dart';

part 'issue.freezed.dart';

@freezed
class Issue with _$Issue{
    const factory Issue({
      required String description,
      required List<Uri> pictures,
}) = _Issue;
}