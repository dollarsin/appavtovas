import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../shared/base_page_manager/base_page_state/base_page_state.dart';
import '../../../shared/di/app_providers.dart';
import '../../../shared/service/network/cancel_token_manager/cacnel_token_creator.dart';
import '../../../shared/service/network/cancel_token_manager/cancel_token_manager.dart';
import '../../../shared/service/network/di/network_module_providers.dart';
import '../data/api/tours_details_api.dart';
import '../domain/managers/tour_details_page_manager.dart';
import '../domain/models/tour_details_page_data.dart';
import '../domain/models/tour_details_page_state.dart';

final class TourDetailsProviders {
  TourDetailsProviders._();

  static final cancelTokenManager = Provider.family
      .autoDispose<CancelTokenManager, Object>(
        (ref, _) =>
            CancelTokenManager(cancelTokenCreator: CancelTokenCreatorImpl()),
      );

  static final tourDetailsApiProvider = Provider.family
      .autoDispose<ToursDetailsApi, Object>(
        (ref, data) => ToursDetailsApi(
          cancelTokenManager: ref.watch(cancelTokenManager(data)),
          dioClient: ref.watch(NetworkModuleProviders.appDioClientProvider),
        ),
      );

  static final tourDetailsPageManagerProvider = StateNotifierProvider.family
      .autoDispose<
        TourDetailsPageManager,
        BasePageState<TourDetailsPageState>,
        TourDetailsPageData
      >((ref, pageData) {
        final manager = TourDetailsPageManager(
          pageData: pageData,
          api: ref.watch(tourDetailsApiProvider(pageData)),
          navigationManager: ref.watch(
            AppProviders.appNavigationManagerProvider,
          ),
        )..onInit();

        ref.onDispose(() {
          manager.onDispose();
        });
        return manager;
      });
}
