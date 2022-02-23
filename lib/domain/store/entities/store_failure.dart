import 'package:freezed_annotation/freezed_annotation.dart';

part 'store_failure.freezed.dart';

@freezed
class StoreFailure with _$StoreFailure {
  const factory StoreFailure.serverError() = ServerError;
  const factory StoreFailure.noStoreData() = NoStoreData;
  const factory StoreFailure.uploadFailed() = UploadFailed;
}

