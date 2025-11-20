import 'package:avtovas_mobile/src/common/navigation/app_router.dart';
import 'package:avtovas_mobile/src/common/navigation/routes.dart';
import 'package:avtovas_mobile/src/common/platform/local_auth_client.dart';
import 'package:avtovas_mobile/src/features/local_auth/domain/interfaces/i_local_auth_prefs_repository.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:local_auth/local_auth.dart';

part 'local_auth_state.dart';

class LocalAuthCubit extends Cubit<LocalAuthState> {
  final ILocalAuthPrefsRepository _localAuthPrefsRepository;

  final _localAuthClient = LocalAuthClient();

  LocalAuthCubit(this._localAuthPrefsRepository) : super(LocalAuthState.init());

  @override
  Future<void> close() {
    SystemChrome.setPreferredOrientations(DeviceOrientation.values);

    return super.close();
  }

  Future<void> initPage({required bool fromEnableLocalAuth}) async {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitDown,
      DeviceOrientation.portraitUp,
    ]);

    final localAuthBiometricStatus =
        _localAuthPrefsRepository.fetchLocalAuthBiometricStatus();

    final biometricType = await _localAuthClient.priorityBiometricType();

    emit(
      LocalAuthState(
        priorityBiometricType: localAuthBiometricStatus ? biometricType : null,
        fromEnableLocalAuth: fromEnableLocalAuth,
        needShowPasscodeError: false,
        needUseBiometric: true,
        needPageLoading: false,
      ),
    );

    if (biometricType != null &&
        localAuthBiometricStatus &&
        !fromEnableLocalAuth) {
      didAuthenticate();
    }
  }

  void updateNeedUseBiometric() {
    emit(
      state.copyWith(needUseBiometric: !state.needUseBiometric),
    );
  }

  void checkEnteredPasscodeDigits(String digits) {
    if (state.fromEnableLocalAuth) {
      final now = DateTime.now();

      _localAuthPrefsRepository
        ..saveLocalAuthPasscode(passcode: digits)
        ..saveLocalAuthStatus(localAuthStatus: true)
        ..saveLastPassedAuthTime(lastPassedAuthTime: now)
        ..saveLocalAuthBiometricStatus(
          localAuthBiometricStatus: state.needUseBiometric,
        );

      Future.delayed(
        const Duration(milliseconds: 300),
        _passLocalAuth,
      );
    } else {
      final savedPasscode = _localAuthPrefsRepository.fetchLocalAuthPasscode();
      if (savedPasscode == null) return;

      if (digits != savedPasscode) {
        updateNeedShowPasscodeError(needShowPasscodeError: true);
      } else {
        _localAuthPrefsRepository.saveLastPassedAuthTime(
          lastPassedAuthTime: DateTime.now(),
        );

        Future.delayed(
          const Duration(milliseconds: 300),
          _passLocalAuth,
        );
      }
    }
  }

  void updateNeedShowPasscodeError({required bool needShowPasscodeError}) {
    emit(
      state.copyWith(needShowPasscodeError: needShowPasscodeError),
    );
  }

  Future<void> didAuthenticate() async {
    final isAuthenticate = await _localAuthClient.didAuthenticate();

    if (isAuthenticate) {
      await _localAuthPrefsRepository.saveLastPassedAuthTime(
        lastPassedAuthTime: DateTime.now(),
      );

      Future.delayed(
        const Duration(milliseconds: 200),
        _passLocalAuth,
      );
    }
  }

  void _passLocalAuth() {
    if (AppRouter.appRouter.canPop()) {
      AppRouter.appRouter.pop();
    } else {
      AppRouter.appRouter.go(Routes.mainPath.name);
    }
  }
}
