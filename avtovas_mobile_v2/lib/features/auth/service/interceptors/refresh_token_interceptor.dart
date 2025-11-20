import 'dart:async';

import 'package:dio/dio.dart';
import 'package:dio_smart_retry/dio_smart_retry.dart';

import '../../data/api/refresh_token_api.dart';
import '../../domain/repositories/auth_repository.dart';

class RefreshTokenInterceptor extends QueuedInterceptor {
  RefreshTokenInterceptor({
    required AuthRepository authRepository,
    required RefreshTokenApi refreshTokenApi,
  }) : _authRepository = authRepository,
       _refreshTokenApi = refreshTokenApi;

  final AuthRepository _authRepository;
  final RefreshTokenApi _refreshTokenApi;

  @override
  Future<void> onError(
    DioException err,
    ErrorInterceptorHandler handler,
  ) async {
    final status = err.response?.statusCode;
    final authData = _authRepository.state;

    if (status == status401Unauthorized && authData != null) {
      try {
        final response = await _refreshTokenApi.post();
        await _authRepository.updateAuthData(
          authData.copyWith(accessToken: response.accessToken),
        );
      } on DioException catch (_) {
        err.requestOptions.disableRetry = true;
        await _authRepository.clearAuthData();
      }
    }

    if (status == status401Unauthorized && authData == null) {
      err.requestOptions.disableRetry = true;
    }

    super.onError(err, handler);
  }
}
