import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../shared/base_page_manager/base_page_state/base_page_state.dart';
import '../../../shared/service/network/cancel_token_manager/cacnel_token_creator.dart';
import '../../../shared/service/network/cancel_token_manager/cancel_token_manager.dart';
import '../../../shared/service/network/di/network_module_providers.dart';
import '../../../shared/utils/extensions.dart';
import '../data/api/citizenships_list_api.dart';
import '../domain/managers/citizenships_list_page_manager.dart';
import '../domain/models/citizenships_list_page_state.dart';

final class PassengerCitizenshipProviders {
  const PassengerCitizenshipProviders._();

  static final cancelTokenManagerProvider = Provider.autoDispose<
    CancelTokenManager
  >((ref) => CancelTokenManager(cancelTokenCreator: CancelTokenCreatorImpl()));

  static final citizenshipsListApiProvider =
      Provider.autoDispose<CitizenshipsListApi>(
        (ref) => CitizenshipsListApi(
          cancelTokenManager: ref.watch(cancelTokenManagerProvider),
          dioClient: ref.watch(NetworkModuleProviders.appDioClientProvider),
        ),
      );

  static final citizenshipsListManagerProvider =
      StateNotifierProvider.autoDispose<
        CitizenshipsListManager,
        BasePageState<CitizenshipsListPageState>
      >((ref) {
        return CitizenshipsListManager(
            api: ref.watch(citizenshipsListApiProvider),
          )
          ..onInit()
          ..also((manager) => ref.onDispose(() => manager.onDispose()));
      });
}
