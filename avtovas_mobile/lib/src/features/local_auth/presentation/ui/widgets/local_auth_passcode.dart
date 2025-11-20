import 'package:avtovas_mobile/src/common/constants/app_assets.dart';
import 'package:avtovas_mobile/src/common/constants/app_dimensions.dart';
import 'package:avtovas_mobile/src/features/local_auth/presentation/cubit/local_auth_cubit.dart';
import 'package:common/avtovas_common.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:local_auth/local_auth.dart';

final class LocalAuthPasscode extends StatefulWidget {
  final bool fromEnableLocalAuth;

  final ValueSetter<String> onPasscodeEntered;

  const LocalAuthPasscode({
    required this.fromEnableLocalAuth,
    required this.onPasscodeEntered,
    super.key,
  });

  @override
  State<LocalAuthPasscode> createState() => _LocalAuthPasscodeState();
}

class _LocalAuthPasscodeState extends State<LocalAuthPasscode> {
  var _enteredPasscode = '';

  void _updateEnteredPasscode([String? digit]) {
    final cannotUpdateEnteredDigits =
        digit == null && _enteredPasscode.isEmpty ||
            digit != null && _enteredPasscode.length == 4;
    if (cannotUpdateEnteredDigits) return;

    setState(
      () => _enteredPasscode = digit == null
          ? _enteredPasscode.substring(0, _enteredPasscode.length - 1)
          : '$_enteredPasscode$digit',
    );

    if (_enteredPasscode.length == 4) {
      widget.onPasscodeEntered(_enteredPasscode);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        children: [
          _PasscodeDigits(
            digits: _enteredPasscode,
            onDigitsErrorAnimationEnd: () => setState(
              () => _enteredPasscode = '',
            ),
          ),
          const Spacer(),
          for (var i = 1; i <= 3; i++) ...<Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                for (var j = 1; j <= 3; j++)
                  _PasscodeDigit(
                    digit: '${(i - 1) * 3 + j}',
                    onDigitSelected: _updateEnteredPasscode,
                  ),
              ].insertBetween(
                const SizedBox(width: AppDimensions.extraLarge),
              ),
            ),
            const SizedBox(height: AppDimensions.extraLarge),
          ],
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              _BiometricButton(fromEnableLocalAuth: widget.fromEnableLocalAuth),
              _PasscodeDigit(
                  digit: '0', onDigitSelected: _updateEnteredPasscode),
              SizedBox.square(
                dimension: 70,
                child: CupertinoButton(
                  padding: EdgeInsets.zero,
                  onPressed: _updateEnteredPasscode,
                  child: SvgPicture.asset(
                    AppAssets.backspace,
                    width: 56,
                    height: 56,
                    colorFilter: ColorFilter.mode(
                      context.theme.mainAppColor,
                      BlendMode.srcIn,
                    ),
                  ),
                ),
              ),
            ].insertBetween(const SizedBox(width: AppDimensions.extraLarge)),
          ),
          const Spacer(),
        ],
      ),
    );
  }
}

final class _BiometricButton extends StatelessWidget {
  final bool fromEnableLocalAuth;

  const _BiometricButton({required this.fromEnableLocalAuth});

  @override
  Widget build(BuildContext context) {
    return SizedBox.square(
      dimension: 70,
      child: BlocSelector<LocalAuthCubit, LocalAuthState, BiometricType?>(
        selector: (state) => state.priorityBiometricType,
        builder: (context, biometricType) {
          if (biometricType == null || fromEnableLocalAuth) {
            return const SizedBox();
          }

          return CupertinoButton(
            padding: EdgeInsets.zero,
            onPressed: context.read<LocalAuthCubit>().didAuthenticate,
            child: SvgPicture.asset(
              switch (biometricType) {
                BiometricType.fingerprint => AppAssets.biometricFingerprint,
                BiometricType.face => AppAssets.biometricFaceId,
                _ => '',
              },
              width: 56,
              height: 56,
              colorFilter: ColorFilter.mode(
                context.theme.mainAppColor,
                BlendMode.srcIn,
              ),
            ),
          );
        },
      ),
    );
  }
}

final class _PasscodeDigits extends StatefulWidget {
  final VoidCallback onDigitsErrorAnimationEnd;
  final String digits;

  const _PasscodeDigits({
    required this.onDigitsErrorAnimationEnd,
    required this.digits,
  });

  @override
  State<_PasscodeDigits> createState() => _PasscodeDigitsState();
}

class _PasscodeDigitsState extends State<_PasscodeDigits>
    with SingleTickerProviderStateMixin {
  late final AnimationController _animationController;
  late final Animation<double> _shakeAnimation;

  @override
  void initState() {
    super.initState();

    _animationController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 500),
    );

    _shakeAnimation = Tween(begin: 0.0, end: 24.0)
        .chain(CurveTween(curve: Curves.elasticIn))
        .animate(_animationController)
      ..addStatusListener((status) {
        if (status == AnimationStatus.completed) {
          _animationController.reverse();
        }
      });
  }

  @override
  void dispose() {
    _animationController.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<LocalAuthCubit, LocalAuthState>(
      listener: (context, __) {
        _animationController.forward().whenComplete(
          () {
            widget.onDigitsErrorAnimationEnd();
            context.read<LocalAuthCubit>().updateNeedShowPasscodeError(
                  needShowPasscodeError: false,
                );
          },
        );
      },
      listenWhen: (prev, curr) =>
          !prev.needShowPasscodeError && curr.needShowPasscodeError,
      child: AnimatedBuilder(
        animation: _shakeAnimation,
        builder: (context, child) {
          return Container(
            margin: const EdgeInsets.symmetric(horizontal: 24),
            padding: EdgeInsets.only(
              left: _shakeAnimation.value + 24.0,
              right: 24.0 - _shakeAnimation.value,
            ),
            child: child,
          );
        },
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            for (var index = 1; index <= 4; index++)
              AnimatedContainer(
                duration: const Duration(milliseconds: 250),
                width: AppDimensions.large,
                height: AppDimensions.large,
                curve: Curves.fastOutSlowIn,
                decoration: BoxDecoration(
                  borderRadius: const BorderRadius.all(Radius.circular(200)),
                  border: Border.fromBorderSide(
                    BorderSide(color: context.theme.mainAppColor),
                  ),
                  color: index <= widget.digits.length
                      ? context.theme.mainAppColor
                      : Colors.white,
                ),
              ),
          ].insertBetween(const SizedBox(width: AppDimensions.large)),
        ),
      ),
    );
  }
}

final class _PasscodeDigit extends StatelessWidget {
  final String digit;
  final ValueSetter<String> onDigitSelected;

  const _PasscodeDigit({required this.digit, required this.onDigitSelected});

  @override
  Widget build(BuildContext context) {
    return SizedBox.square(
      dimension: 70,
      child: CupertinoButton(
        padding: EdgeInsets.zero,
        onPressed: () => onDigitSelected(digit),
        child: DecoratedBox(
          decoration: BoxDecoration(
            borderRadius: const BorderRadius.all(Radius.circular(200)),
            color: Colors.grey.shade200,
          ),
          child: Center(
            child: Text(
              digit,
              style: context.themeData.textTheme.headlineLarge?.copyWith(
                fontSize: AppDimensions.extraLarge,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
