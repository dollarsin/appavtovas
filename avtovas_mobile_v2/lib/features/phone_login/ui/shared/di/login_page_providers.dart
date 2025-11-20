import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../../shared/base_page_manager/base_page_state/base_page_state.dart';
import '../../../../../shared/di/app_providers.dart';
import '../../../../auth/shared/auth_providers.dart';
import '../../../domain/managers/login_code_page_manager.dart';
import '../../../domain/managers/login_phone_page_manager.dart';
import '../../../domain/models/data/login_code_body_data.dart';
import '../../../domain/models/states/login_code_body_state.dart';
import '../../../domain/models/states/login_phone_body_state.dart';

typedef LoginPhoneProviderKey = String;

abstract final class LoginPageProviders {
  LoginPageProviders._();

  static final loginPhoneBodyManagerProvider = StateNotifierProvider.autoDispose
      .family<
        LoginPhonePageManager,
        BasePageState<LoginPhoneBodyState>,
        LoginPhoneProviderKey
      >((ref, _) {
        return LoginPhonePageManager(
          phoneOptAuthInteractor: ref.watch(
            AuthProviders.phoneOptAuthInteractorProvider,
          ),
          navigationManager: ref.watch(
            AppProviders.appNavigationManagerProvider,
          ),
        );
      });

  static final loginCodeBodyManagerProvider = StateNotifierProvider.autoDispose
      .family<
        LoginCodePageManager,
        BasePageState<LoginCodeBodyState>,
        LoginCodeBodyData
      >((ref, data) {
        return LoginCodePageManager(
          phoneOptAuthInteractor: ref.watch(
            AuthProviders.phoneOptAuthInteractorProvider,
          ),
          data: data,
        );
      });
}
