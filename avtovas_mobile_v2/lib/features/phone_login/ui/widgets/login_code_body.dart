import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../shared/localization/localizations_ext.dart';
import '../../../../shared/ui/ui_kit/app_dimensions.dart';
import '../../../../shared/ui/ui_kit/app_fonts.dart';
import '../../../../shared/ui/ui_kit/avtovas_theme.dart';
import '../../../../shared/ui/ui_kit/widgets/animated_sized_box.dart';
import '../../../../shared/ui/ui_kit/widgets/avtovas_button/avtovas_button.dart';
import '../../../../shared/ui/ui_kit/widgets/countdown_builder/countdown_timer.dart';
import '../../domain/models/data/login_code_body_data.dart';
import '../shared/di/login_page_providers.dart';
import 'code_authenticator.dart';

class LoginCodeBody extends ConsumerWidget {
  const LoginCodeBody({required this.data, super.key});

  final LoginCodeBodyData data;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final manager = ref.watch(
      LoginPageProviders.loginCodeBodyManagerProvider(data).notifier,
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
            context.locale.authorizationSubtitleWithNumber,
            style: context.themeData.textTheme.bodyLarge?.copyWith(),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: CommonDimensions.extraLarge),
          Consumer(
            builder: (context, ref, child) {
              final isError = ref.watch(
                LoginPageProviders.loginCodeBodyManagerProvider(
                  data,
                ).select((state) => state.isError),
              );
              return CodeAuthenticator(
                forceErrorState: isError,
                onChanged: (value) => manager.onCodeUpdated(value),
                onCompleted: (value) => manager.onCodeSubmit(),
              );
            },
          ),
          Consumer(
            builder: (context, ref, child) {
              final isError = ref.watch(
                LoginPageProviders.loginCodeBodyManagerProvider(
                  data,
                ).select((state) => state.isError),
              );
              return AnimatedSizedBox(
                toHeight:
                    isError ? CommonDimensions.large : CommonDimensions.none,
              );
            },
          ),
          Consumer(
            builder: (context, ref, child) {
              final isError = ref.watch(
                LoginPageProviders.loginCodeBodyManagerProvider(
                  data,
                ).select((state) => state.isError),
              );

              return AnimatedSizedBox(
                toHeight: isError ? null : CommonDimensions.none,
                child: Text(
                  // TODO(lmepol): заменить на подстановку реального сообщения об ошибке
                  'Введённый код неверен!',
                  style: context.themeData.textTheme.titleLarge?.copyWith(
                    color: context.theme.errorColor,
                  ),
                ),
              );
            },
          ),
          const SizedBox(height: CommonDimensions.large),
          RichText(
            textAlign: TextAlign.center,
            text: TextSpan(
              children: [
                TextSpan(
                  text: context.locale.authorizationFirstSuggestion,
                  style: context.themeData.textTheme.titleLarge,
                ),
                TextSpan(
                  text: context.locale.authorizationLastSuggestion,
                  style: context.themeData.textTheme.titleLarge?.copyWith(
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
          const SizedBox(height: CommonDimensions.extraLarge),
          Consumer(
            builder: (context, ref, child) {
              final requestAbleAt = ref.watch(
                LoginPageProviders.loginCodeBodyManagerProvider(
                  data,
                ).select((state) => state.requireData.requestAbleAt),
              );
              return CountdownTimer(
                builder: (context, remaining) {
                  return AvtovasButton.text(
                    isActive: remaining == null,
                    buttonText: context.locale.authorizationSendSms,
                    onTap: () => manager.onRequestCall(),
                    padding: const EdgeInsets.all(CommonDimensions.large),
                  );
                },
                countdownTo: requestAbleAt,
              );
            },
          ),
          const SizedBox(height: CommonDimensions.large),
          Consumer(
            builder: (context, ref, child) {
              final requestAbleAt = ref.watch(
                LoginPageProviders.loginCodeBodyManagerProvider(
                  data,
                ).select((state) => state.requireData.requestAbleAt),
              );
              return CountdownTimer(
                builder: (context, remaining) {
                  return AvtovasButton.text(
                    isActive: remaining == null,
                    buttonText: 'Отправить код через СМС',
                    onTap: () => manager.onRequestSms(),
                    padding: const EdgeInsets.all(CommonDimensions.large),
                  );
                },
                countdownTo: requestAbleAt,
              );
            },
          ),
          const SizedBox(height: CommonDimensions.large),
          Consumer(
            builder: (context, ref, child) {
              final requestAbleAt = ref.watch(
                LoginPageProviders.loginCodeBodyManagerProvider(
                  data,
                ).select((state) => state.requireData.requestAbleAt),
              );
              return CountdownTimer(
                builder: (context, remaining) {
                  final remainingSecs = (remaining ?? Duration.zero).inSeconds;
                  return AnimatedSizedBox(
                    toHeight: remaining == null ? CommonDimensions.none : null,
                    child: Text(
                      context.locale.authorizationWaitMessage(remainingSecs),
                      style: context.themeData.textTheme.titleLarge?.copyWith(
                        color: context.theme.primaryTextColor,
                      ),
                    ),
                  );
                },
                countdownTo: requestAbleAt,
              );
            },
          ),
        ],
      ),
    );
  }
}
