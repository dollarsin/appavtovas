import 'dart:async';

import '../../../../shared/base_page_manager/base_page_manager.dart';
import '../../../../shared/base_page_manager/base_page_state/base_page_state.dart';
import '../../../../shared/navigation/navigation_manager.dart';
import '../../../../shared/riverpod/async_lifecycle.dart';
import '../../../points/data/models/points_list/trip_point.dart';
import '../../../tour_details/domain/models/tour_details_page_data.dart';
import '../../data/api/tours_list_api.dart';
import '../../data/models/tour.dart';
import '../../data/models/tour_list_request.dart';
import '../models/tour_list_page_data.dart';
import '../models/tour_list_page_state.dart';
import '../models/tours_sort_options.dart';

class TourListPageManager extends BasePageManager<TourListPageState>
    implements AsyncLifecycle {
  TourListPageManager({
    required TourListApi api,
    required NavigationManager navigationManager,
    String? departureId,
    String? destinationId,
    String? departureName,
    String? destinationName,
    DateTime? date,
  }) : _api = api,
       _navigationManager = navigationManager,
       super(
         initialState: BasePageLoadingState(
           data: TourListPageState(
             departureId: departureId,
             destinationId: destinationId,
             departureName: departureName,
             destinationName: destinationName,
             date: date ?? DateTime.now(),
           ),
         ),
       );

  final TourListApi _api;

  final NavigationManager _navigationManager;

  @override
  Future<void> onInit() async {
    unawaited(_init());
  }

  Future<void> _init() async {
    final departureId = state.requireData.departureId;
    final destinationId = state.requireData.destinationId;
    final date = state.requireData.date;

    if (departureId == null || destinationId == null) {
      state = BasePageDataState(data: state.requireData);
      return;
    }

    await _fetch(
      departureId: departureId,
      destinationId: destinationId,
      date: date,
    );
  }

  @override
  Future<void> onDispose() async {
    _api.cancelGetRequest();
  }

  void onDepartureSubmitted(TripPoint? departure) {
    state = state.copyWith(
      data: state.requireData.copyWith(
        departureId: departure?.id,
        departureName: departure?.name,
      ),
    );
  }

  void onDestinationSubmitted(TripPoint? destination) {
    state = state.copyWith(
      data: state.requireData.copyWith(
        destinationId: destination?.id,
        destinationName: destination?.name,
      ),
    );
  }

  void onTripDateChanged(DateTime date) {
    state = state.copyWith(data: state.requireData.copyWith(date: date));
  }

  void onSearchTap() {
    final departureId = state.requireData.departureId;
    final destinationId = state.requireData.destinationId;
    final departureName = state.requireData.departureName;
    final destinationName = state.requireData.destinationName;
    final date = state.requireData.date;
    if (departureId == null ||
        destinationId == null ||
        departureName == null ||
        destinationName == null) {
      return;
    }
    _navigationManager.goNamed(
      AppRoutesNames.tours,
      params:
          TourListPageData(
            departureId: departureId,
            departureName: departureName,
            destinationId: destinationId,
            destinationName: destinationName,
            date: date,
          ).toJson(),
    );
  }

  void onSortOptionChanged(ToursSortOptions sortOption) {
    final data = state.requireData;
    if (data.sortOption == sortOption) {
      return;
    }

    final tours = data.tours;
    state = state.copyWith(
      data: data.copyWith(
        sortOption: sortOption,
        tours: _getSortedTours(sortOption, tours),
      ),
    );
  }

  List<Tour> _getSortedTours(ToursSortOptions sortOption, List<Tour> tours) {
    return switch (sortOption) {
      ToursSortOptions.byTime => [...tours]
        ..sort((a, b) => a.departure.time.compareTo(b.departure.time)),
      ToursSortOptions.byPrice => [...tours]
        ..sort((a, b) => a.baseCoast.compareTo(b.baseCoast)),
    };
  }

  Future<TourListPageState> _fetchTours({
    required String departureId,
    required String destinationId,
    required DateTime date,
  }) async {
    final response = await _api.get(
      queryParameters:
          TourListRequest(
            pointFrom: departureId,
            pointTo: destinationId,
            dateTime: date,
          ).toJson(),
    );

    return state.requireData.copyWith(
      tours: _getSortedTours(state.requireData.sortOption, response.tours),
    );
  }

  BasePageState<TourListPageState> _handleError(
    BasePageState<TourListPageState> state,
    Object error,
  ) {
    return BasePageErrorState(data: state.requireData, error: error);
  }

  Future<void> _fetch({
    required String departureId,
    required String destinationId,
    required DateTime date,
  }) async {
    await fetchData(
      () => _fetchTours(
        departureId: departureId,
        destinationId: destinationId,
        date: date,
      ),
      _handleError,
    );
  }

  void onTourTap(Tour tour) {
    _navigationManager.goNamed(
      AppRoutesNames.tourDetails,
      pathParams: TourDetailsPageData(
        tourId: tour.id,
      ).toJson().map((k, v) => MapEntry(k, v as String)),
      params:
          TourListPageData(
            destinationName: state.requireData.destinationName,
            destinationId: state.requireData.destinationId,
            departureName: state.requireData.departureName,
            departureId: state.requireData.departureId,
            date: state.requireData.date,
          ).toJson(),
    );
  }
}
