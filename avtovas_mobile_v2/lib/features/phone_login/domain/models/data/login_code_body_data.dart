import 'package:freezed_annotation/freezed_annotation.dart';

part 'login_code_body_data.freezed.dart';

@freezed
abstract class LoginCodeBodyData with _$LoginCodeBodyData {
  const factory LoginCodeBodyData({
    required String phone,
    required DateTime requestAbleAt,
  }) = _LoginCodeBodyData;
}
