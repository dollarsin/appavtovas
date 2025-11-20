part of 'notifications_cubit.dart';

final class NotificationsState extends Equatable {
  final CustomRoute route;
  final bool showNotifications;
  final String userEmail;
  final bool localAuthStatus;

  @override
  List<Object?> get props => [
        route,
        showNotifications,
        userEmail,
        localAuthStatus,
      ];

  const NotificationsState({
    required this.route,
    required this.showNotifications,
    required this.userEmail,
    required this.localAuthStatus,
  });

  NotificationsState copyWith({
    CustomRoute? route,
    bool? showNotifications,
    String? userEmail,
    bool? localAuthStatus,
  }) {
    return NotificationsState(
      route: route ?? this.route,
      showNotifications: showNotifications ?? this.showNotifications,
      userEmail: userEmail ?? this.userEmail,
      localAuthStatus: localAuthStatus ?? this.localAuthStatus,
    );
  }
}
