import 'package:freezed_annotation/freezed_annotation.dart';

part 'review.freezed.dart';

@freezed
class Review with _$Review{
    const factory Review({required String emoji, required String message}) = _Review;
}