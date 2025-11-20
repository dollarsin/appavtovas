import 'package:flutter/services.dart';
import 'package:local_auth/local_auth.dart';

final class LocalAuthClient {
  final _localAuthInstance = LocalAuthentication();

  Future<bool> canAuthenticateWithBiometric() =>
      _localAuthInstance.canCheckBiometrics;

  Future<bool> canAuthenticate() async =>
      await canAuthenticateWithBiometric() &&
      await _localAuthInstance.isDeviceSupported();

  Future<BiometricType?> priorityBiometricType() async {
    if (!await canAuthenticate()) return null;

    final availableBiometrics =
        await _localAuthInstance.getAvailableBiometrics();

    if (availableBiometrics.contains(BiometricType.weak) &&
        availableBiometrics.contains(BiometricType.strong)) {
      return BiometricType.fingerprint;
    }

    if (availableBiometrics.contains(BiometricType.face)) {
      return BiometricType.face;
    }

    return null;
  }

  Future<bool> didAuthenticate() async {
    try {
      final isAuth = await _localAuthInstance.authenticate(
        localizedReason: 'Пройдите аутентификацию, '
            'чтобы продолжить пользоваться приложением',
        options: const AuthenticationOptions(
          biometricOnly: true,
          stickyAuth: true,
        ),
      );

      return isAuth;
    } on PlatformException catch (_) {
      return false;
    }
  }
}
