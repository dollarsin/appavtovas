import 'package:dio/dio.dart';
import 'package:dio_smart_retry/dio_smart_retry.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../features/auth/data/api/refresh_token_api.dart';
import '../../../../features/auth/service/interceptors/auth_interceptor.dart';
import '../../../../features/auth/service/interceptors/refresh_token_interceptor.dart';
import '../../../di/app_providers.dart';
import '../api/api_constants.dart';
import '../cancel_token_manager/cacnel_token_creator.dart';
import '../cancel_token_manager/cancel_token_manager.dart';
import '../dio_client.dart';

class NetworkModuleProviders {
  const NetworkModuleProviders._();

  static final cancelTokenManagerProvider = Provider<CancelTokenManager>((ref) {
    return CancelTokenManager(cancelTokenCreator: CancelTokenCreatorImpl());
  });

  // base interceptors setup

  static final appAuthInterceptorProvider = Provider<AuthInterceptor>((ref) {
    return AuthInterceptor(
      authDataProvider: ref.watch(AppProviders.authRepositoryProvider),
    );
  });

  static final appRetryInterceptorProvider = Provider<RetryInterceptor>((ref) {
    return RetryInterceptor(
      dio: ref.watch(appDioProvider),
      retryDelays: const [
        Duration(milliseconds: 1000),
        Duration(milliseconds: 2000),
        Duration(milliseconds: 3000),
      ],
      retryableExtraStatuses: {status401Unauthorized},
    );
  });

  static final appRefreshTokenInterceptorProvider =
      Provider<RefreshTokenInterceptor>((ref) {
        return RefreshTokenInterceptor(
          authRepository: ref.watch(AppProviders.authRepositoryProvider),
          refreshTokenApi: ref.watch(refreshTokenApiProvider),
        );
      });

  static final appAdditionalInterceptorsProvider = Provider<List<Interceptor>>((
    ref,
  ) {
    return [];
  });

  // app dio setup

  static final appDioBaseOptionsProvider = Provider<BaseOptions>((ref) {
    return BaseOptions(
      baseUrl: ApiConstants.baseUrl,
      connectTimeout: const Duration(seconds: 5),
      receiveTimeout: const Duration(seconds: 5),
      sendTimeout: const Duration(seconds: 5),
    );
  });

  static final appDioProvider = Provider<Dio>((ref) {
    return Dio(ref.watch(appDioBaseOptionsProvider));
  });

  static final appDioClientProvider = Provider<DioClient>((ref) {
    return DioClient(
      dio: ref.watch(appDioProvider),
      interceptors: [
        ...ref.watch(appAdditionalInterceptorsProvider),
        ref.watch(appRetryInterceptorProvider),
        ref.watch(appRefreshTokenInterceptorProvider),
        ref.watch(appAuthInterceptorProvider),
      ],
    );
  });

  // refresh token dio setup

  static final refreshTokenAdditionalInterceptorsProvider =
      Provider<List<Interceptor>>((ref) {
        return [];
      });

  static final refreshTokenDioBaseOptionsProvider = Provider<BaseOptions>((
    ref,
  ) {
    return ref.watch(appDioBaseOptionsProvider);
  });

  static final refreshTokenDioProvider = Provider<Dio>((ref) {
    return Dio(ref.watch(refreshTokenDioBaseOptionsProvider));
  });

  static final refreshTokenDioRetryInterceptorProvider =
      Provider<RetryInterceptor>((ref) {
        return RetryInterceptor(
          dio: ref.watch(refreshTokenDioProvider),
          retryDelays: const [
            Duration(milliseconds: 1000),
            Duration(milliseconds: 2000),
            Duration(milliseconds: 3000),
          ],
        );
      });

  // refresh token dio client setup
  static final refreshTokenDioClientProvider = Provider<DioClient>((ref) {
    return DioClient(
      dio: ref.watch(refreshTokenDioProvider),
      interceptors: [
        ...ref.watch(refreshTokenAdditionalInterceptorsProvider),
        ref.watch(refreshTokenDioRetryInterceptorProvider),
      ],
    );
  });

  static final refreshTokenApiProvider = Provider<RefreshTokenApi>((ref) {
    return RefreshTokenApi(
      dioClient: ref.watch(refreshTokenDioClientProvider),
      cancelTokenManager: ref.watch(cancelTokenManagerProvider),
    );
  });
}
