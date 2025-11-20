import 'package:freezed_annotation/freezed_annotation.dart';

part 'verify_code_response.freezed.dart';

part 'verify_code_response.g.dart';

@Freezed(copyWith: false)
abstract class VerifyCodeResponse with _$VerifyCodeResponse {
  const factory VerifyCodeResponse({
    @JsonKey(name: 'access_token') required String accessToken,
    @JsonKey(name: 'expires_in') required int expiresIn,
    @JsonKey(name: 'is_new_user') required bool isNewUser,
  }) = _VerifyCodeResponse;

  factory VerifyCodeResponse.fromJson(Map<String, dynamic> json) =>
      _$VerifyCodeResponseFromJson(json);
}
