abstract interface class ILocalAuthPrefsRepository {
  String? fetchLocalAuthPasscode();

  Future<bool> saveLocalAuthPasscode({required String passcode});

  Future<bool> clearLocalAuthPasscode();

  bool? fetchLocalAuthStatus();

  Future<bool> saveLocalAuthStatus({required bool localAuthStatus});

  bool fetchLocalAuthBiometricStatus();

  Future<bool> saveLocalAuthBiometricStatus({
    required bool localAuthBiometricStatus,
  });

  DateTime fetchLastPassedAuthTime();

  Future<bool> saveLastPassedAuthTime({
    required DateTime lastPassedAuthTime,
  });
}
