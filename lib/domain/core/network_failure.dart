import 'package:freezed_annotation/freezed_annotation.dart';
part 'network_failure.freezed.dart';

@freezed
class NetworkFailure with _$NetworkFailure{
    const factory NetworkFailure() = _NetworkFailure;
}