import '../../../../shared/base_page_manager/base_page_manager.dart';
import '../../../../shared/base_page_manager/base_page_state/base_page_state.dart';
import '../../../../shared/navigation/navigation_manager.dart';
import '../../../../shared/riverpod/async_lifecycle.dart';
import '../../data/api/tours_details_api.dart';
import '../../data/models/tour_details_request.dart';
import '../models/tour_details_page_data.dart';
import '../models/tour_details_page_state.dart';

class TourDetailsPageManager extends BasePageManager<TourDetailsPageState>
    implements AsyncLifecycle {
  TourDetailsPageManager({
    required TourDetailsPageData pageData,
    required ToursDetailsApi api,
    required NavigationManager navigationManager,
  }) : _pageData = pageData,
       _api = api,
       _navigationManager = navigationManager;

  final TourDetailsPageData _pageData;

  final ToursDetailsApi _api;
  final NavigationManager _navigationManager;

  @override
  Future<void> onInit() async {
    _initialFetch();
  }

  void _initialFetch() {
    fetchData(_initialFetchData, _handleInitialLoadingError);
  }

  Future<TourDetailsPageState> _initialFetchData() async {
    final result = await _api.get(
      queryParameters: TourDetailsRequest(tourId: _pageData.tourId).toJson(),
    );

    return TourDetailsPageState(data: result);
  }

  BasePageState<TourDetailsPageState> _handleInitialLoadingError(
    BasePageState<TourDetailsPageState> state,
    Object error,
  ) {
    return BasePageErrorState(error: error);
  }

  @override
  Future<void> onDispose() async {
    _api.cancelGetRequest();
  }

  void onReturnConditionsTap() {
    // TODO(lmepol): Implement onReturnConditionsTap
    throw UnimplementedError();
  }

  void onBuyButtonTap() {
    _navigationManager.goNamed(
      AppRoutesNames.tourReserve,
      pathParams: _pageData.toJson().map((k, v) => MapEntry(k, v as String)),
    );
  }
}
