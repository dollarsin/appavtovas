import 'package:freezed_annotation/freezed_annotation.dart';

import '../../data/models/points_list/trip_point.dart';

part 'points_list_state.freezed.dart';

@freezed
sealed class PointsListState with _$PointsListState {
  const factory PointsListState({
    required String query,
    @Default([]) List<TripPoint> points,
  }) = _PointsListState;
}
