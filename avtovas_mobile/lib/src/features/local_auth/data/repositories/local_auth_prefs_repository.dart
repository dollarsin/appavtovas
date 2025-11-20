import 'package:avtovas_mobile/src/core/data/data_sources/interfaces/i_prefs_data_source.dart';
import 'package:avtovas_mobile/src/features/local_auth/domain/interfaces/i_local_auth_prefs_repository.dart';

final class LocalAuthPrefsRepository implements ILocalAuthPrefsRepository {
  final IPrefsDataSource _prefsDataSource;

  const LocalAuthPrefsRepository(this._prefsDataSource);

  @override
  bool? fetchLocalAuthStatus() {
    return _prefsDataSource.fetchPreference(key: _PrefsKeys.localAuthStatus)
        as bool?;
  }

  @override
  Future<bool> saveLocalAuthStatus({required bool localAuthStatus}) {
    return _prefsDataSource.savePreference(
      key: _PrefsKeys.localAuthStatus,
      preference: localAuthStatus,
    );
  }

  @override
  String? fetchLocalAuthPasscode() {
    return _prefsDataSource.fetchPreference(key: _PrefsKeys.localAuthPasscode)
        as String?;
  }

  @override
  Future<bool> saveLocalAuthPasscode({required String passcode}) {
    return _prefsDataSource.savePreference(
      key: _PrefsKeys.localAuthPasscode,
      preference: passcode,
    );
  }

  @override
  Future<bool> clearLocalAuthPasscode() {
    return _prefsDataSource.removePreference(key: _PrefsKeys.localAuthPasscode);
  }

  @override
  bool fetchLocalAuthBiometricStatus() {
    return _prefsDataSource.fetchPreference(
          key: _PrefsKeys.localAuthBiometricStatus,
        ) as bool? ??
        false;
  }

  @override
  Future<bool> saveLocalAuthBiometricStatus({
    required bool localAuthBiometricStatus,
  }) {
    return _prefsDataSource.savePreference(
      key: _PrefsKeys.localAuthBiometricStatus,
      preference: localAuthBiometricStatus,
    );
  }

  @override
  DateTime fetchLastPassedAuthTime() {
    final lastPassedAuthTimeString = _prefsDataSource.fetchPreference(
      key: _PrefsKeys.lastPassedAuthTime,
    ) as String?;

    final lastPassedDateTime =
        DateTime.tryParse(lastPassedAuthTimeString ?? '') ?? DateTime.now();

    return lastPassedDateTime;
  }

  @override
  Future<bool> saveLastPassedAuthTime({required DateTime lastPassedAuthTime}) {
    return _prefsDataSource.savePreference(
      key: _PrefsKeys.lastPassedAuthTime,
      preference: lastPassedAuthTime.toString(),
    );
  }
}

abstract final class _PrefsKeys {
  static const String localAuthPasscode = 'localAuthPasscode';
  static const String localAuthStatus = 'localAuthStatus';
  static const String localAuthBiometricStatus = 'localAuthBiometricStatus';
  static const String lastPassedAuthTime = 'lastPassedAuthTime';
}
