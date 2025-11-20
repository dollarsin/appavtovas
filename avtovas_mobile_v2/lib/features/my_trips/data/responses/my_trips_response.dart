import 'package:freezed_annotation/freezed_annotation.dart';

import '../models/my_trip_model.dart';

part 'my_trips_response.freezed.dart';
part 'my_trips_response.g.dart';

@Freezed(copyWith: false, fromJson: true)
abstract class MyTripsResponse with _$MyTripsResponse {
  const factory MyTripsResponse({
    @JsonKey(name: 'trips') @Default([]) List<MyTripModel> trips,
  }) = _MyTripsResponse;

  factory MyTripsResponse.fromJson(Map<String, dynamic> json) =>
      _$MyTripsResponseFromJson(json);
}
