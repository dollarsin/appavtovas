part of 'app_cubit.dart';

class AppState {
  final bool toRemoteConnected;
  final ThemeType themeType;

  final bool needShowLocalAuthMessage;
  final bool localAuthStatus;

  AppState({
    required this.toRemoteConnected,
    required this.themeType,
    required this.needShowLocalAuthMessage,
    required this.localAuthStatus,
  });

  AppState copyWith({
    bool? toRemoteConnected,
    ThemeType? themeType,
    bool? needShowLocalAuthMessage,
    bool? localAuthStatus,
  }) {
    return AppState(
      toRemoteConnected: toRemoteConnected ?? this.toRemoteConnected,
      themeType: themeType ?? this.themeType,
      needShowLocalAuthMessage:
          needShowLocalAuthMessage ?? this.needShowLocalAuthMessage,
      localAuthStatus: localAuthStatus ?? this.localAuthStatus,
    );
  }
}
