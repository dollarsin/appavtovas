import 'package:freezed_annotation/freezed_annotation.dart';

import '../../data/models/tour.dart';
import 'tours_sort_options.dart';

part 'tour_list_page_state.freezed.dart';

@freezed
abstract class TourListPageState with _$TourListPageState {
  const factory TourListPageState({
    required DateTime date,
    String? departureId,
    String? destinationId,
    String? departureName,
    String? destinationName,
    @Default([]) List<Tour> tours,
    @Default(ToursSortOptions.byTime) ToursSortOptions sortOption,
  }) = _TourListPageState;
}
