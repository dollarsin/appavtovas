import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:go_router/go_router.dart';

import '../../features/app/root_page.dart';
import '../../features/auth/domain/repositories/auth_repository.dart';
import '../../features/my_trips/ui/my_trips_page.dart';
import '../../features/phone_login/domain/models/data/login_code_body_data.dart';
import '../../features/phone_login/ui/pages/login_code_page.dart';
import '../../features/phone_login/ui/pages/login_phone_page.dart';
import '../../features/points/ui/points_page.dart';
import '../../features/schedule/domain/models/tour_list_page_data.dart';
import '../../features/schedule/ui/tour_list_page.dart';
import '../../features/tour_details/domain/models/tour_details_page_data.dart';
import '../../features/tour_details/ui/tour_details_page.dart';
import '../../features/tour_reserve/ui/pages/tour_reserve_page.dart';
import '../di/app_providers.dart';
import '../utils/stream_to_listenable.dart';

abstract class NavigationManager {
  GlobalKey<NavigatorState> get navigatorKey;

  RouterDelegate<Object> get routerDelegate;

  RouteInformationParser<Object> get routeInformationParser;

  RouteInformationProvider get routeInformationProvider;

  void goRelative(AppRoutesPaths path, {Object? extra});

  void goNamed(
    AppRoutesNames name, {
    Object? extra,
    Map<String, dynamic>? params,
    Map<String, String>? pathParams,
  });
}

class NavigationManagerImpl implements NavigationManager {
  NavigationManagerImpl({required AuthRepository authRepository})
    : _authRepository = authRepository;

  final AuthRepository _authRepository;

  @override
  final GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  late final GoRouter _router = GoRouter(
    navigatorKey: navigatorKey,
    refreshListenable: _authRepository.stateStream.toValueListenable(
      initialState: _authRepository.state,
    ),
    initialLocation: AppRoutesPaths.main.path,
    errorBuilder:
        (context, state) =>
            Scaffold(body: Center(child: Text(state.error.toString()))),
    routes: [
      StatefulShellRoute.indexedStack(
        builder:
            (context, state, navigationShell) =>
                RootPage(shell: navigationShell),
        branches: [
          StatefulShellBranch(
            initialLocation: AppRoutesPaths.main.path,
            routes: [
              GoRoute(
                path: AppRoutesPaths.main.path,
                builder:
                    (context, state) => ProviderScope(
                      key: ValueKey(state.pageKey),
                      child: const PointsPage(),
                    ),
                routes: [
                  GoRoute(
                    path: AppRoutesPaths.tours.path,
                    name: AppRoutesNames.tours.name,
                    builder: (context, state) {
                      final data = TourListPageData.fromJson(
                        state.uri.queryParameters,
                      );
                      return ProviderScope(
                        key: ValueKey(data),
                        child: TourListPage(data: data),
                      );
                    },
                    routes: [
                      GoRoute(
                        path: AppRoutesPaths.tourDetails.path,
                        name: AppRoutesNames.tourDetails.name,
                        builder:
                            (context, state) => TourDetailsPage(
                              pageData: TourDetailsPageData.fromJson(
                                state.pathParameters,
                              ),
                            ),
                        routes: [
                          // TODO(lmepol): обернуть в auth guard
                          GoRoute(
                            path: AppRoutesPaths.tourReserve.path,
                            name: AppRoutesNames.tourReserve.name,
                            builder: (context, state) {
                              final data = TourDetailsPageData.fromJson(
                                state.pathParameters,
                              );
                              return ProviderScope(
                                key: ValueKey(data),
                                child: const TourReservePage(),
                              );
                            },
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
          StatefulShellBranch(
            initialLocation: AppRoutesPaths.myTrips.path,
            routes: [
              GoRoute(
                path: AppRoutesPaths.myTrips.path,
                builder: (context, state) => const MyTripsPage(),
                redirect: AuthRequiredRedirect(
                  authRepository: _authRepository,
                  loginPath: AppRoutesPaths.myTripsLogin.path,
                  fallbackFrom: AppRoutesPaths.myTrips.path,
                ),
                routes: [
                  GoRoute(
                    path: '/:tripId ',
                    builder: (context, state) {
                      final tripId = state.pathParameters['tripId'];
                      return Scaffold(
                        appBar: AppBar(title: Text('Поездка $tripId')),
                        body: Center(child: Text(state.uri.toString())),
                      );
                    },
                  ),
                ],
              ),
              // TODO(lmepol): выенсти в функцию/роут
              GoRoute(
                path: AppRoutesPaths.myTripsLogin.path,
                redirect: AuthRequiredRedirect(
                  authRepository: _authRepository,
                  loginPath: AppRoutesPaths.myTripsLogin.path,
                  fallbackFrom: AppRoutesPaths.myTrips.path,
                ),
                builder: (context, state) => const LoginPhonePage(),
                routes: [
                  GoRoute(
                    path: AppRoutesPaths.code.path,
                    redirect: DataRequiredRedirect<LoginCodeBodyData>(),
                    builder: (context, state) {
                      final data = state.extra;
                      if (data is! LoginCodeBodyData) {
                        return const SizedBox.shrink();
                      }

                      return LoginCodePage(data: data);
                    },
                  ),
                ],
              ),
            ],
          ),
          StatefulShellBranch(
            initialLocation: AppRoutesPaths.help.path,
            routes: [
              GoRoute(
                path: AppRoutesPaths.help.path,
                builder:
                    (context, state) => Scaffold(
                      body: Center(child: Text(state.uri.toString())),
                    ),
              ),
            ],
          ),
          StatefulShellBranch(
            initialLocation: AppRoutesPaths.profile.path,
            routes: [
              GoRoute(
                path: AppRoutesPaths.profile.path,
                builder:
                    (context, state) => Scaffold(
                      appBar: AppBar(title: const Text('Профиль')),
                      body: Center(
                        child: Consumer(
                          builder: (context, ref, _) {
                            final authRepository = ref.watch(
                              AppProviders.authRepositoryProvider,
                            );
                            return StreamBuilder(
                              initialData: authRepository.state,
                              stream: authRepository.stateStream,
                              builder: (context, snapshot) {
                                final isAuth = snapshot.data != null;
                                return ElevatedButton(
                                  onPressed:
                                      isAuth
                                          ? authRepository.clearAuthData
                                          : null,
                                  child: const Text('Выйти'),
                                );
                              },
                            );
                          },
                        ),
                      ),
                    ),
              ),
            ],
          ),
        ],
      ),
    ],
  );

  @override
  RouterDelegate<Object> get routerDelegate => _router.routerDelegate;

  @override
  GoRouteInformationParser get routeInformationParser =>
      _router.routeInformationParser;

  @override
  RouteInformationProvider get routeInformationProvider =>
      _router.routeInformationProvider;

  @override
  void goRelative(AppRoutesPaths path, {Object? extra}) {
    _router.go('${_router.state.uri.path}${path.path}', extra: extra);
  }

  @override
  void goNamed(
    AppRoutesNames name, {
    Object? extra,
    Map<String, dynamic>? params,
    Map<String, String>? pathParams,
  }) {
    _router.goNamed(
      name.name,
      extra: extra,
      queryParameters: params ?? {},
      pathParameters: pathParams ?? {},
    );
  }
}

/// Роуты приложения
enum AppRoutesPaths {
  /// главная страница
  main(path: '/main'),
  tours(path: '/tours'),
  tourDetails(path: '/:tour_id'),
  tourReserve(path: '/reserve'),

  /// Мои поездки
  myTrips(path: '/my-trips'),

  /// страница авторизации
  myTripsLogin(path: '/my-trips/login'),

  /// страница ввода кода подтверждения
  code(path: '/code'),

  /// Помощь
  help(path: '/help'),

  /// Профиль
  profile(path: '/profile');

  const AppRoutesPaths({required this.path});

  /// относительный путь
  final String path;
}

/// Роуты приложения
enum AppRoutesNames {
  /// главная страница
  main(name: 'main'),

  /// Страница поиска маршрутов
  tours(name: 'tours'),

  /// Детальная страница маршрута
  tourDetails(name: 'tour-details'),

  /// Страница бронирования
  tourReserve(name: 'tour-reserve'),

  /// Мои поездки
  myTrips(name: 'my-trips'),

  /// страница авторизации
  myTripsLogin(name: 'my-trips-login'),

  /// Помощь
  help(name: 'help'),

  /// Профиль
  profile(name: 'profile');

  const AppRoutesNames({required this.name});

  /// относительный путь
  final String name;
}

abstract class BaseRedirect {
  FutureOr<String?> call(BuildContext context, GoRouterState state);
}

class AuthRequiredRedirect implements BaseRedirect {
  AuthRequiredRedirect({
    required AuthRepository authRepository,
    required String loginPath,
    required String fallbackFrom,
  }) : _authRepository = authRepository,
       _loginPath = loginPath,
       _fallbackFrom = fallbackFrom;

  final AuthRepository _authRepository;
  final String _loginPath;
  final String _fallbackFrom;

  @override
  FutureOr<String?> call(BuildContext context, GoRouterState state) async {
    final isLoggedIn = _authRepository.state != null;
    final isLoginPage = state.matchedLocation == _loginPath;

    if (!isLoggedIn && !isLoginPage) {
      final redirectTo = state.uri.path;
      final uri = Uri(path: _loginPath, queryParameters: {'from': redirectTo});
      return uri.toString();
    }

    if (isLoggedIn && isLoginPage) {
      return state.uri.queryParameters['from'] ?? _fallbackFrom;
    }

    return null;
  }
}

class DataRequiredRedirect<T> implements BaseRedirect {
  DataRequiredRedirect();

  @override
  FutureOr<String?> call(BuildContext context, GoRouterState state) async {
    if (state.extra is! T) {
      return state.uri.path;
    }

    return null;
  }
}

class QueryDataRequiredRedirect<T> implements BaseRedirect {
  QueryDataRequiredRedirect({required this.fromJson, required this.toJson});

  final T Function(Map<String, dynamic> queryParameters) fromJson;
  final Map<String, dynamic> Function(T) toJson;

  @override
  FutureOr<String?> call(BuildContext context, GoRouterState state) async {
    try {
      final result = fromJson(state.uri.queryParameters);
      const comp = DeepCollectionEquality();
      final correctJson = toJson(result);
      if (comp.equals(correctJson, state.uri.queryParameters)) {
        return null;
      }
      final resultPath =
          Uri(
            path: state.matchedLocation,
            queryParameters: correctJson,
          ).toString();

      return resultPath;
    } on Object catch (_) {
      return state.uri.path;
    }
  }
}

class QueuedRedirect implements BaseRedirect {
  QueuedRedirect({required List<BaseRedirect> redirects})
    : _redirects = redirects;

  final List<BaseRedirect> _redirects;

  @override
  FutureOr<String?> call(BuildContext context, GoRouterState state) {
    for (final redirect in _redirects) {
      final result = redirect(context, state);
      if (result != null) {
        return result;
      }
    }
    return null;
  }
}
