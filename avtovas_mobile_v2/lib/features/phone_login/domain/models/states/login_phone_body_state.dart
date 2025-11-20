import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

import '../../../../../shared/ui/ui_kit/widgets/phone_input_fild/models/country_code_model.dart';

part 'login_phone_body_state.freezed.dart';

@freezed
abstract class LoginPhoneBodyState with _$LoginPhoneBodyState {
  factory LoginPhoneBodyState({
    required List<CountryCodeModel> countryCodes,
    required CountryCodeModel selectedCountryCode,
    @Default(false) bool isPrivacyPolicyConfirmed,
    @Default(false) bool isTermsConfirmed,
    DateTime? requestAbleAt,
    @Default('') String phone,
  }) = _LoginPhoneBodyState;

  LoginPhoneBodyState._();

  String get resultPhone => '${selectedCountryCode.dialCode}$phone';

  @override
  late final MaskTextInputFormatter _formatter = MaskTextInputFormatter(
    mask: selectedCountryCode.formatter.mask,
    filter: selectedCountryCode.formatter.filters.map(
      (k, v) => MapEntry(k, RegExp(v)),
    ),
    initialText: phone,
  );

  @override
  late final String maskedPhone =
      '${selectedCountryCode.dialCode}${_formatter.getMaskedText()}';

  @override
  late final bool isPhoneValid = _formatter.isFill();
}
