import 'package:freezed_annotation/freezed_annotation.dart';

part 'bank_details.freezed.dart';
part 'bank_details.g.dart';

@freezed
class BankDetails with _$BankDetails {
  const factory BankDetails({
    required String accountNumber,
    required String accountHolderName,
    required String ifscCode,
  }) = _BankDetails;

  factory BankDetails.fromJson(Map<String, dynamic> json) =>
      _$BankDetailsFromJson(json);
}
