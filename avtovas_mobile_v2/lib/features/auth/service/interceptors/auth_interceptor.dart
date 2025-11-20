import 'package:dio/dio.dart';

import '../../../../shared/utils/state_readable.dart';
import '../../data/models/auth_data.dart';

class AuthInterceptor extends QueuedInterceptor {
  AuthInterceptor({required StateReadable<AuthData?> authDataProvider})
    : _authDataProvider = authDataProvider;

  final StateReadable<AuthData?> _authDataProvider;

  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    final token = _authDataProvider.state?.accessToken;
    if (token != null && token.isNotEmpty) {
      options.headers['Authorization'] = 'Bearer $token';
    }
    super.onRequest(options, handler);
  }
}
