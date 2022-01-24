import 'package:freezed_annotation/freezed_annotation.dart';

part 'review.freezed.dart';
part 'review.g.dart';

@freezed
class Review with _$Review{
    const factory Review({required String emoji, required String message}) = _Review;
    
    factory Review.fromJson(Map<String, dynamic> json) => _$ReviewFromJson(json);
}