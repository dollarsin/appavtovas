import 'package:avtovas_mobile/src/common/constants/app_dimensions.dart';
import 'package:avtovas_mobile/src/features/local_auth/presentation/cubit/local_auth_cubit.dart';
import 'package:avtovas_mobile/src/features/local_auth/presentation/ui/widgets/local_auth_passcode.dart';
import 'package:common/avtovas_theme.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

final class LocalAuthBody extends StatelessWidget {
  final bool fromEnableLocalAuth;

  const LocalAuthBody({required this.fromEnableLocalAuth, super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: MediaQuery.viewPaddingOf(context).top + AppDimensions.large,
        ),
        Icon(Icons.lock, size: 32, color: context.theme.mainAppColor),
        const SizedBox(height: AppDimensions.large),
        Text(
          fromEnableLocalAuth
              ? 'Задайте пароль для входа'
              : 'Введите ваш Пароль',
          style: context.themeData.textTheme.headlineLarge,
        ),
        const SizedBox(height: AppDimensions.extraLarge),
        LocalAuthPasscode(
          fromEnableLocalAuth: fromEnableLocalAuth,
          onPasscodeEntered:
              context.read<LocalAuthCubit>().checkEnteredPasscodeDigits,
        ),
        if (fromEnableLocalAuth) ...[
          BlocSelector<LocalAuthCubit, LocalAuthState, bool>(
            selector: (state) => state.priorityBiometricType != null,
            builder: (context, canUseBiometric) {
              if (!canUseBiometric) return const SizedBox();

              return Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: AppDimensions.medium,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    BlocSelector<LocalAuthCubit, LocalAuthState, bool>(
                      selector: (state) => state.needUseBiometric,
                      builder: (context, needUseBiometric) {
                        return CupertinoSwitch(
                          value: needUseBiometric,
                          onChanged: (value) => context
                              .read<LocalAuthCubit>()
                              .updateNeedUseBiometric(),
                          activeColor: context.theme.mainAppColor,
                        );
                      },
                    ),
                    const SizedBox(width: AppDimensions.medium),
                    Flexible(
                      child: Text(
                        'Использовать биометрические данные',
                        style: context.themeData.textTheme.titleLarge?.copyWith(
                          fontSize: AppDimensions.large,
                        ),
                      ),
                    ),
                  ],
                ),
              );
            },
          ),
          SizedBox(
            height:
                MediaQuery.viewPaddingOf(context).bottom + AppDimensions.medium,
          ),
        ],
      ],
    );
  }
}
