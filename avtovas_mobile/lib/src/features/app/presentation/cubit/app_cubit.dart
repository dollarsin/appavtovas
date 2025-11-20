import 'dart:async';

import 'package:avtovas_mobile/src/common/navigation/app_router.dart';
import 'package:avtovas_mobile/src/common/navigation/routes.dart';
import 'package:avtovas_mobile/src/common/shared_cubit/theme/theme_shared_cubit.dart';
import 'package:avtovas_mobile/src/common/utils/theme_type.dart';
import 'package:avtovas_mobile/src/features/local_auth/domain/interfaces/i_local_auth_prefs_repository.dart';
import 'package:core/avtovas_core.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';

part 'app_state.dart';

class AppCubit extends Cubit<AppState> {
  final AppIntercator _appIntercator;
  final ILocalAuthPrefsRepository _localAuthPrefsRepository;

  final ThemeSharedCubit _themeCubit;

  var _needPushLocalAuthRoute = true;

  AppCubit(
    this._appIntercator,
    this._localAuthPrefsRepository,
    this._themeCubit,
  ) : super(
          AppState(
            toRemoteConnected: false,
            themeType: _themeCubit.state.themeType,
            needShowLocalAuthMessage: false,
            localAuthStatus: false,
          ),
        ) {
    _onAppStarted();
  }

  Future<void> updateLocalAuthMessageReadStatus({
    bool notShowMore = false,
  }) async {
    if (notShowMore) {
      await _localAuthPrefsRepository.saveLocalAuthStatus(
        localAuthStatus: false,
      );
    }

    emit(
      state.copyWith(needShowLocalAuthMessage: false),
    );
  }

  void _onAppStarted() {
    _fetchAuthorizedUser();
    _fetchLocalAuthStatus();
    _changeTheme(_themeCubit.state.themeType);
    _themeCubit.stream.listen(
      (state) {
        _changeTheme(state.themeType);
      },
    );
  }

  Future<void> _fetchAuthorizedUser() async {
    final userUuid = await _appIntercator.fetchLocalUserUuid();

    if (userUuid.isEmpty) {
      FlutterNativeSplash.remove();
      return;
    }

    final user = await _appIntercator.fetchUser(userUuid);

    startLocalAuthProcess();

    if (user.uuid == '0') FlutterNativeSplash.remove();

    if (user.uuid != '0' && user.uuid != '-1') {
      FlutterNativeSplash.remove();

      await _appIntercator.saveNewFcmToken(user: user);
    }
  }

  void startLocalAuthProcess() {
    final lastLocalAuthPassedDate =
        _localAuthPrefsRepository.fetchLastPassedAuthTime();

    final now = DateTime.now();
    final needPassLocalAuthAgain =
        (_localAuthPrefsRepository.fetchLocalAuthStatus() ?? false) &&
            now.difference(lastLocalAuthPassedDate).inMinutes > 0;

    if (needPassLocalAuthAgain && _needPushLocalAuthRoute) {
      _needPushLocalAuthRoute = false;
      AppRouter.appRouter.push(Routes.localAuth.route).whenComplete(
            () => _needPushLocalAuthRoute = true,
          );
    }
  }

  void tryFetchLocalAuthStatus() {
    final status = _localAuthPrefsRepository.fetchLocalAuthStatus();

    emit(
      state.copyWith(localAuthStatus: status),
    );
  }

  void _changeTheme(ThemeType themeType) {
    emit(
      state.copyWith(themeType: themeType),
    );
  }

  Future<void> _fetchLocalAuthStatus() async {
    final userUid = await _appIntercator.fetchLocalUserUuid();
    final status = _localAuthPrefsRepository.fetchLocalAuthStatus();

    await Future.delayed(const Duration(seconds: 1));

    emit(
      state.copyWith(
        needShowLocalAuthMessage: status == null && userUid.isNotEmpty,
        localAuthStatus: status,
      ),
    );
  }
}
