import 'package:freezed_annotation/freezed_annotation.dart';

part 'identity_proof.freezed.dart';
part 'identity_proof.g.dart';

@freezed
class IdentityProof with _$IdentityProof {
  const factory IdentityProof({
    required String panCardNo,
    required String panCardImage,
  }) = _IdentityProof;

  factory IdentityProof.fromJson(Map<String, dynamic> json) =>
      _$IdentityProofFromJson(json);
}

