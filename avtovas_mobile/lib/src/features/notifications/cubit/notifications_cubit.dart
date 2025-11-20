import 'package:avtovas_mobile/src/common/navigation/app_router.dart';
import 'package:avtovas_mobile/src/common/navigation/routes.dart';
import 'package:avtovas_mobile/src/common/widgets/base_navigation_page/utils/route_helper.dart';
import 'package:avtovas_mobile/src/features/local_auth/domain/interfaces/i_local_auth_prefs_repository.dart';
import 'package:avtovas_mobile/src/features/local_auth/presentation/ui/local_auth_page.dart';
import 'package:common/avtovas_navigation.dart';
import 'package:core/domain/interactors/notifications_interactor.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'notifications_state.dart';

class NotificationsCubit extends Cubit<NotificationsState> {
  final NotificationInteractor _notificationsInteractor;

  final ILocalAuthPrefsRepository _localAuthPrefsRepository;

  NotificationsCubit(
    this._notificationsInteractor,
    this._localAuthPrefsRepository,
  ) : super(
          const NotificationsState(
            route: CustomRoute(null, null),
            showNotifications: false,
            userEmail: '',
            localAuthStatus: false,
          ),
        ) {
    _initPage();
  }

  void _initPage() {
    final notificationsStatus = _notificationsInteractor.user.showNotifications;
    final lastSavedEmail = _notificationsInteractor.user.emails?.firstOrNull;

    final localAuthStatus = _localAuthPrefsRepository.fetchLocalAuthStatus();

    emit(
      state.copyWith(
        showNotifications: notificationsStatus,
        userEmail: lastSavedEmail ?? '',
        localAuthStatus: localAuthStatus ?? false,
      ),
    );
  }

  Future<void> updateLocalAuthStatus(VoidCallback onStatusChanged) async {
    final localAuthStatus = !state.localAuthStatus;

    if (localAuthStatus) {
      await AppRouter.appRouter.pushNamed(
        Routes.localAuth.name,
        extra: LocalAuthArguments(fromEnableLocalAuth: true),
      );
    } else {
      _localAuthPrefsRepository
        ..saveLocalAuthStatus(localAuthStatus: false)
        ..clearLocalAuthPasscode();
    }

    onStatusChanged();

    emit(
      state.copyWith(
        localAuthStatus: _localAuthPrefsRepository.fetchLocalAuthStatus(),
      ),
    );
  }

  Future<void> addNewUserEmail({
    required String email,
    required VoidCallback onSuccessAction,
    required VoidCallback onErrorAction,
  }) async {
    try {
      await _notificationsInteractor.addNewUserEmail(email: email);

      emit(
        state.copyWith(userEmail: email),
      );

      onSuccessAction();
    } on Object catch (_) {
      onErrorAction();
    }
  }

  void onNavigationItemTap(int navigationIndex) {
    emit(
      state.copyWith(
        route: RouteHelper.popIndexedRoute(navigationIndex),
      ),
    );

    emit(
      state.copyWith(
        route: const CustomRoute(null, null),
      ),
    );
  }

  Future<void> updateNotificationsStatus({required bool notificationsStatus}) {
    emit(
      state.copyWith(showNotifications: notificationsStatus),
    );

    return _notificationsInteractor.updateNotificationsStatus(
      notificationsStatus: notificationsStatus,
    );
  }

  void onBackButtonTap() {
    emit(
      state.copyWith(
        route: const CustomRoute.pop(),
      ),
    );
  }
}
