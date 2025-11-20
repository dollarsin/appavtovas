import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../shared/base_page_manager/base_page_state/base_page_state.dart';
import '../../../shared/service/network/cancel_token_manager/cacnel_token_creator.dart';
import '../../../shared/service/network/cancel_token_manager/cancel_token_manager.dart';
import '../../../shared/service/network/di/network_module_providers.dart';
import '../../../shared/utils/extensions.dart';
import '../data/api/passenger_document_types_list_api.dart';
import '../domain/managers/passenger_document_types_list_page_manager.dart';
import '../domain/models/passenger_document_types_list_page_state.dart';

final class PassengerDocumentTypesProviders {
  const PassengerDocumentTypesProviders._();

  static final cancelTokenManagerProvider = Provider.autoDispose<
    CancelTokenManager
  >((ref) => CancelTokenManager(cancelTokenCreator: CancelTokenCreatorImpl()));

  static final documentTypesListApiProvider =
      Provider.autoDispose<PassengerDocumentTypesListApi>(
        (ref) => PassengerDocumentTypesListApi(
          cancelTokenManager: ref.watch(cancelTokenManagerProvider),
          dioClient: ref.watch(NetworkModuleProviders.appDioClientProvider),
        ),
      );

  static final documentTypesListManagerProvider =
      StateNotifierProvider.autoDispose<
        PassengerDocumentTypesListManager,
        BasePageState<PassengerDocumentTypesListPageState>
      >((ref) {
        return PassengerDocumentTypesListManager(
            api: ref.watch(documentTypesListApiProvider),
          )
          ..onInit()
          ..also((manager) => ref.onDispose(() => manager.onDispose()));
      });
}
