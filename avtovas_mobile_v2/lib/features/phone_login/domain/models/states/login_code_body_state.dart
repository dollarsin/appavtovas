import 'package:freezed_annotation/freezed_annotation.dart';

part 'login_code_body_state.freezed.dart';

@freezed
abstract class LoginCodeBodyState with _$LoginCodeBodyState {
  const factory LoginCodeBodyState({
    required String phone,
    required DateTime requestAbleAt,
    @Default('') String enteredCode,
  }) = _LoginCodeBodyState;
}
