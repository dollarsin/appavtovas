import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../shared/navigation/navigation_manager.dart';
import '../../../schedule/domain/models/tour_list_page_data.dart';
import '../../data/models/points_list/trip_point.dart';
import '../models/points_page_state.dart';

class PointsPageManager extends StateNotifier<PointsPageState> {
  PointsPageManager({required NavigationManager navigationManager})
    : _navigationManager = navigationManager,
      super(PointsPageState(date: DateTime.now()));

  final NavigationManager _navigationManager;

  void setDestination(TripPoint? destination) {
    state = state.copyWith(destination: destination);
  }

  void setDeparture(TripPoint? departure) {
    state = state.copyWith(departure: departure);
  }

  void setDate(DateTime date) {
    state = state.copyWith(date: date);
  }

  void onSearchTap() {
    final departure = state.departure;
    final destination = state.destination;
    final date = state.date;
    if (departure == null || destination == null) {
      return;
    }
    _navigationManager.goNamed(
      AppRoutesNames.tours,
      params:
          TourListPageData(
            departureId: departure.id,
            departureName: departure.name,
            destinationId: destination.id,
            destinationName: destination.name,
            date: date,
          ).toJson(),
    );
  }
}
