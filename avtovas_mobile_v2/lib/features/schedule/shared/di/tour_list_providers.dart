import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../shared/base_page_manager/base_page_state/base_page_state.dart';
import '../../../../shared/di/app_providers.dart';
import '../../../../shared/service/network/cancel_token_manager/cacnel_token_creator.dart';
import '../../../../shared/service/network/cancel_token_manager/cancel_token_manager.dart';
import '../../../../shared/service/network/di/network_module_providers.dart';
import '../../data/api/tours_list_api.dart';
import '../../domain/managers/tour_list_page_manager.dart';
import '../../domain/models/tour_list_page_data.dart';
import '../../domain/models/tour_list_page_state.dart';

final class TourListProviders {
  const TourListProviders._();

  static final cancelTokenManagerProvider = Provider.autoDispose
      .family<CancelTokenManager, TourListPageData>((ref, _) {
        return CancelTokenManager(cancelTokenCreator: CancelTokenCreatorImpl());
      });

  static final tourListApiProvider = Provider.autoDispose
      .family<TourListApi, TourListPageData>(
        (ref, data) => TourListApi(
          cancelTokenManager: ref.watch(cancelTokenManagerProvider(data)),
          dioClient: ref.watch(NetworkModuleProviders.appDioClientProvider),
        ),
      );

  static final tourListPageManagerProvider = StateNotifierProvider.autoDispose
      .family<
        TourListPageManager,
        BasePageState<TourListPageState>,
        TourListPageData
      >((ref, data) {
        final api = ref.watch(tourListApiProvider(data));
        final result = TourListPageManager(
          api: api,
          navigationManager: ref.watch(
            AppProviders.appNavigationManagerProvider,
          ),
          departureId: data.departureId,
          destinationId: data.destinationId,
          departureName: data.departureName,
          destinationName: data.destinationName,
          date: data.date,
        )..onInit();
        ref.onDispose(() => result.onDispose());
        return result;
      });
}
