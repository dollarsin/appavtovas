import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../shared/base_page_manager/base_page_state/base_page_state.dart';
import '../../../../shared/di/app_providers.dart';
import '../../../../shared/riverpod/async_queue_observer.dart';
import '../../../../shared/service/network/cancel_token_manager/cacnel_token_creator.dart';
import '../../../../shared/service/network/cancel_token_manager/cancel_token_manager.dart';
import '../../../../shared/service/network/di/network_module_providers.dart';
import '../../data/api/points_list_api.dart';
import '../../data/models/points_list/points_list_request.dart';
import '../../domain/managers/points_list_manager.dart';
import '../../domain/managers/points_page_manager.dart';
import '../../domain/models/points_list_state.dart';
import '../../domain/models/points_page_state.dart';

final class SelectPointsProviders {
  SelectPointsProviders._();

  static final asyncObserverProvider = Provider.autoDispose(
    (ref) => AsyncQueueObserver(
      initTasksQueue: [
        {
          ref.watch(departureTripPointsStateProvider.notifier),
          ref.watch(destinationTripPointsStateProvider.notifier),
        },
      ],
    ),
  );

  static final cancelTokenManagerProvider =
      Provider.family<CancelTokenManager, Object>((ref, _) {
        return CancelTokenManager(cancelTokenCreator: CancelTokenCreatorImpl());
      });

  static final pointsListApiProvider = Provider.autoDispose
      .family<PointsListApi, Object>(
        (ref, data) => PointsListApi(
          dioClient: ref.watch(NetworkModuleProviders.appDioClientProvider),
          cancelTokenManager: ref.watch(cancelTokenManagerProvider(data)),
        ),
      );

  static final departureTripPointsStateProvider =
      StateNotifierProvider.autoDispose<
        PointsListManager,
        BasePageState<PointsListState>
      >(
        (ref) => PointsListManager(
          type: PointsListType.departure,
          api: ref.watch(pointsListApiProvider(PointsListType.departure)),
        ),
      );

  static final destinationTripPointsStateProvider =
      StateNotifierProvider.autoDispose<
        PointsListManager,
        BasePageState<PointsListState>
      >(
        (ref) => PointsListManager(
          type: PointsListType.destination,
          api: ref.watch(pointsListApiProvider(PointsListType.departure)),
        ),
      );

  static final pointsPageManagerProvider =
      StateNotifierProvider.autoDispose<PointsPageManager, PointsPageState>(
        (ref) => PointsPageManager(
          navigationManager: ref.watch(
            AppProviders.appNavigationManagerProvider,
          ),
        ),
      );
}
