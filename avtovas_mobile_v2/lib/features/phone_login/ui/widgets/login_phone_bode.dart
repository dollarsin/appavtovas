import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../shared/localization/localizations_ext.dart';
import '../../../../shared/ui/ui_kit/app_dimensions.dart';
import '../../../../shared/ui/ui_kit/app_fonts.dart';
import '../../../../shared/ui/ui_kit/avtovas_theme.dart';
import '../../../../shared/ui/ui_kit/widgets/avtovas_alert_dialog/avtovas_alert_dialog.dart';
import '../../../../shared/ui/ui_kit/widgets/avtovas_button/avtovas_button.dart';
import '../../../../shared/ui/ui_kit/widgets/phone_input_fild/phone_input_field.dart';
import '../shared/di/login_page_providers.dart';

class LoginPhoneBody extends ConsumerWidget {
  const LoginPhoneBody({required this.providerKey, super.key});

  final String providerKey;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final manager = ref.watch(
      LoginPageProviders.loginPhoneBodyManagerProvider(providerKey).notifier,
    );

    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: CommonDimensions.extraLarge,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            context.locale.authorizationTitle,
            style: context.themeData.textTheme.headlineLarge?.copyWith(
              fontSize: AppFonts.sizeDisplayMedium,
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: CommonDimensions.large),
          Text(
            context.locale.authorizationSubtitle,
            style: context.themeData.textTheme.bodyLarge?.copyWith(),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: CommonDimensions.extraLarge),
          Consumer(
            builder: (context, ref, child) {
              final countryCodes = ref.watch(
                LoginPageProviders.loginPhoneBodyManagerProvider(
                  providerKey,
                ).select((state) => state.requireData.countryCodes),
              );
              final selectedCountryCode = ref.watch(
                LoginPageProviders.loginPhoneBodyManagerProvider(
                  providerKey,
                ).select((state) => state.requireData.selectedCountryCode),
              );

              return PhoneInputField(
                countryCodes: countryCodes,
                countryCode: selectedCountryCode,
                onPhoneChanged: (value) {
                  manager.onPhoneUpdated(phone: value);
                },
                onCountryCodeChanged: (value) {
                  manager.onCountryCodeUpdated(value);
                },
              );
            },
          ),
          const SizedBox(height: CommonDimensions.large),
          Row(
            children: [
              SizedBox.square(
                dimension: 24,
                child: Consumer(
                  builder: (context, ref, child) {
                    final isPrivacyPolicyConfirmed = ref.watch(
                      LoginPageProviders.loginPhoneBodyManagerProvider(
                        providerKey,
                      ).select(
                        (state) => state.requireData.isPrivacyPolicyConfirmed,
                      ),
                    );

                    return Checkbox(
                      value: isPrivacyPolicyConfirmed,
                      checkColor: context.theme.whiteTextColor,
                      activeColor: context.theme.mainAppColor,
                      onChanged:
                          (value) =>
                              value != null
                                  ? manager.onPrivacyPolicyConfirmChanged(
                                    confirmed: value,
                                  )
                                  : null,
                    );
                  },
                ),
              ),
              const SizedBox(width: CommonDimensions.large),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    RichText(
                      text: TextSpan(
                        children: [
                          TextSpan(
                            text: 'Я согласен ',
                            style: context.themeData.textTheme.titleLarge,
                          ),
                          TextSpan(
                            text: context.locale.authorizationLastSuggestion,
                            style: context.themeData.textTheme.titleLarge
                                ?.copyWith(
                                  color: context.theme.mainAppColor,
                                  decoration: TextDecoration.underline,
                                  decorationColor: context.theme.mainAppColor,
                                ),
                            recognizer:
                                TapGestureRecognizer()
                                  ..onTap = () => manager.onPrivacyPolicyTap(),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(height: CommonDimensions.large),
          Row(
            children: [
              SizedBox.square(
                dimension: 24,
                child: Consumer(
                  builder: (context, ref, child) {
                    final isTermsConfirmed = ref.watch(
                      LoginPageProviders.loginPhoneBodyManagerProvider(
                        providerKey,
                      ).select((state) => state.requireData.isTermsConfirmed),
                    );
                    return Checkbox(
                      value: isTermsConfirmed,
                      checkColor: context.theme.whiteTextColor,
                      activeColor: context.theme.mainAppColor,
                      onChanged:
                          (value) =>
                              value != null
                                  ? manager.onTermsAcceptChanged(
                                    accepted: value,
                                  )
                                  : null,
                    );
                  },
                ),
              ),
              const SizedBox(width: CommonDimensions.large),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    RichText(
                      text: TextSpan(
                        children: [
                          TextSpan(
                            text: 'Я согласен ',
                            style: context.themeData.textTheme.titleLarge,
                          ),
                          TextSpan(
                            text: 'с условиями пользовательского соглашения',
                            style: context.themeData.textTheme.titleLarge
                                ?.copyWith(
                                  color: context.theme.mainAppColor,
                                  decoration: TextDecoration.underline,
                                  decorationColor: context.theme.mainAppColor,
                                ),
                            recognizer:
                                TapGestureRecognizer()
                                  ..onTap = () => manager.onTermsTap(),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(height: CommonDimensions.extraLarge),
          Consumer(
            builder: (context, ref, child) {
              final isButtonEnabled = ref.watch(
                LoginPageProviders.loginPhoneBodyManagerProvider(
                  providerKey,
                ).select(
                  (state) =>
                      state.requireData.isTermsConfirmed &&
                      state.requireData.isPhoneValid &&
                      state.requireData.isPrivacyPolicyConfirmed,
                ),
              );
              return AvtovasButton.text(
                buttonText: context.locale.authorizationSendSms,
                onTap: () {
                  FocusScope.of(context).unfocus();
                  showDialog<void>(
                    context: context,
                    builder: (context) {
                      return Consumer(
                        builder: (context, ref, child) {
                          final maskedPhone = ref.watch(
                            LoginPageProviders.loginPhoneBodyManagerProvider(
                              providerKey,
                            ).select((state) => state.requireData.maskedPhone),
                          );
                          return AvtovasAlertDialog(
                            title: context.locale.authorizationWarning(
                              maskedPhone,
                            ),
                            okayCallback: () => manager.onPhoneSubmit(),
                          );
                        },
                      );
                    },
                  );
                },
                isActive: isButtonEnabled,
                padding: const EdgeInsets.all(CommonDimensions.large),
              );
            },
          ),
        ],
      ),
    );
  }
}
