import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_data.g.dart';

part 'auth_data.freezed.dart';

@freezed
abstract class AuthData with _$AuthData {
  const factory AuthData({
    @JsonKey(name: 'access_token') required String accessToken,
    @JsonKey(name: 'is_new_user') required bool isNewUser,
    @JsonKey(name: 'expires_at') required DateTime expiresAt,
  }) = _AuthData;

  factory AuthData.fromJson(Map<String, dynamic> json) =>
      _$AuthDataFromJson(json);
}
