import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../shared/service/network/di/network_module_providers.dart';
import '../../data/api/my_trips_api.dart';
import '../../domain/managers/my_trips_page_state_manager.dart';

class MyTripsProviders {
  const MyTripsProviders._();

  static final cancelTokenManager = Provider.autoDispose(
    (ref) => ref.watch(NetworkModuleProviders.cancelTokenManagerProvider),
  );

  static final dioClient = Provider.autoDispose(
    (ref) => ref.watch(NetworkModuleProviders.appDioClientProvider),
  );

  static final myTripsApiProvider = Provider.autoDispose(
    (ref) => MyTripsApi(
      dioClient: ref.watch(dioClient),
      cancelTokenManager: ref.watch(cancelTokenManager),
    ),
  );

  static final pageStateManagerProvider = StateNotifierProvider.autoDispose((
    ref,
  ) {
    final pageStateManager = MyTripsPageStateManager(
      myTripsApi: ref.watch(myTripsApiProvider),
    )..onInit();

    ref.onDispose(() => pageStateManager.dispose());
    return pageStateManager;
  });
}
