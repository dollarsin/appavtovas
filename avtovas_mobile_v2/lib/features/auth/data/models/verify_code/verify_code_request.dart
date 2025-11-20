import 'package:freezed_annotation/freezed_annotation.dart';

part 'verify_code_request.freezed.dart';

part 'verify_code_request.g.dart';

@Freezed(copyWith: false)
abstract class VerifyCodeRequest with _$VerifyCodeRequest {
  const factory VerifyCodeRequest({
    @JsonKey(name: 'phone_number') required String phoneNumber,
    @JsonKey(name: 'code') required int code,
  }) = _VerifyCodeRequest;

  factory VerifyCodeRequest.fromJson(Map<String, dynamic> json) =>
      _$VerifyCodeRequestFromJson(json);
}
