import 'package:freezed_annotation/freezed_annotation.dart';

import '../../data/models/points_list/trip_point.dart';

part 'points_page_state.freezed.dart';

@freezed
abstract class PointsPageState with _$PointsPageState {
  const factory PointsPageState({
    required DateTime date,
    TripPoint? destination,
    TripPoint? departure,
  }) = _PointsPageState;
}
