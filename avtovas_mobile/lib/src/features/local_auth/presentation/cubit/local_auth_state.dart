part of 'local_auth_cubit.dart';

final class LocalAuthState {
  final BiometricType? priorityBiometricType;

  final bool needUseBiometric;
  final bool needShowPasscodeError;
  final bool fromEnableLocalAuth;
  final bool needPageLoading;

  const LocalAuthState({
    required this.needPageLoading,
    required this.needUseBiometric,
    required this.fromEnableLocalAuth,
    required this.needShowPasscodeError,
    this.priorityBiometricType,
  });

  factory LocalAuthState.init() => const LocalAuthState(
        fromEnableLocalAuth: false,
        needShowPasscodeError: false,
        needUseBiometric: true,
        needPageLoading: false,
      );

  LocalAuthState copyWith({
    BiometricType? priorityBiometricType,
    bool? needShowPasscodeError,
    bool? needUseBiometric,
    bool? needPageLoading,
  }) {
    return LocalAuthState(
      priorityBiometricType:
          priorityBiometricType ?? this.priorityBiometricType,
      fromEnableLocalAuth: fromEnableLocalAuth,
      needShowPasscodeError:
          needShowPasscodeError ?? this.needShowPasscodeError,
      needUseBiometric: needUseBiometric ?? this.needUseBiometric,
      needPageLoading: needPageLoading ?? this.needPageLoading,
    );
  }
}
