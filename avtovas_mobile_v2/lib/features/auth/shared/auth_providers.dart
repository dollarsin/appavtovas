import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../shared/di/app_providers.dart';
import '../../../shared/service/network/di/network_module_providers.dart';
import '../data/api/request_code_api.dart';
import '../data/api/verify_code_api.dart';
import '../domain/interactors/phone_opt_auth_interactor.dart';

abstract final class AuthProviders {
  const AuthProviders._();

  static final requestCodeApiProvider = Provider<RequestCodeApi>((ref) {
    return RequestCodeApi(
      dioClient: ref.watch(NetworkModuleProviders.appDioClientProvider),
      cancelTokenManager: ref.watch(
        NetworkModuleProviders.cancelTokenManagerProvider,
      ),
    );
  });

  static final verifyCodeApiProvider = Provider<VerifyCodeApi>((ref) {
    return VerifyCodeApi(
      dioClient: ref.watch(NetworkModuleProviders.appDioClientProvider),

      cancelTokenManager: ref.watch(
        NetworkModuleProviders.cancelTokenManagerProvider,
      ),
    );
  });

  static final phoneOptAuthInteractorProvider =
      Provider<PhoneOptAuthInteractor>((ref) {
        return PhoneOptAuthInteractor(
          authRepository: ref.watch(AppProviders.authRepositoryProvider),
          requestCodeApi: ref.watch(requestCodeApiProvider),
          verifyCodeApi: ref.watch(verifyCodeApiProvider),
        );
      });
}
