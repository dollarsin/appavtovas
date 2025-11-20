import 'package:freezed_annotation/freezed_annotation.dart';

import 'tour_details_carrier.dart';
import 'tour_details_point.dart';
import 'tour_details_route.dart';

part 'tour_details_response.freezed.dart';

part 'tour_details_response.g.dart';

@freezed
abstract class TourDetailsResponse with _$TourDetailsResponse {
  const factory TourDetailsResponse({
    @JsonKey(name: 'id') required String id,
    @JsonKey(name: 'departure') required TourDetailsPoint departure,
    @JsonKey(name: 'destination') required TourDetailsPoint destination,
    @JsonKey(name: 'route') required TourDetailsRoute route,
    @JsonKey(name: 'base_cost') required double baseCost,
    @JsonKey(name: 'free_seats') required int freeSeats,
    @JsonKey(name: 'carrier') required TourDetailsCarrier carrier,
    @JsonKey(name: 'stopovers') @Default([]) List<TourDetailsPoint> stopovers,
  }) = _TourDetailsResponse;

  factory TourDetailsResponse.fromJson(Map<String, dynamic> json) =>
      _$TourDetailsResponseFromJson(json);
}
