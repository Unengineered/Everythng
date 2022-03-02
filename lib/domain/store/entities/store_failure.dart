import 'package:freezed_annotation/freezed_annotation.dart';

part 'store_failure.freezed.dart';

@freezed
class StoreFailure with _$StoreFailure {
  const factory StoreFailure.serverError() = _ServerError;
  const factory StoreFailure.noStoreData() = _NoStoreData;
  const factory StoreFailure.uploadFailed() = _UploadFailed;
  const factory StoreFailure.networkFailure() = _NetworkFailure;
}

