import 'package:freezed_annotation/freezed_annotation.dart';

import 'trip_point.dart';

part 'points_list_response.freezed.dart';

part 'points_list_response.g.dart';

@freezed
abstract class PointsListResponse with _$PointsListResponse {
  const factory PointsListResponse({
    @JsonKey(name: 'points') required List<TripPoint> tripPoints,
  }) = _PointsListResponse;

  factory PointsListResponse.fromJson(Map<String, dynamic> json) =>
      _$PointsListResponseFromJson(json);
}
