import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../data/models/my_trip_model.dart';

part 'my_trips_page_state.freezed.dart';

@freezed
abstract class MyTripsPageState with _$MyTripsPageState {
  const factory MyTripsPageState({@Default([]) List<MyTripModel> trips}) =
      _MyTripsPageState;
}
