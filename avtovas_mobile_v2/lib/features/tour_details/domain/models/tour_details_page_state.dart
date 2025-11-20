import 'package:freezed_annotation/freezed_annotation.dart';

import '../../data/models/tour_details_response.dart';

part 'tour_details_page_state.freezed.dart';

@freezed
abstract class TourDetailsPageState with _$TourDetailsPageState {
  const factory TourDetailsPageState({required TourDetailsResponse data}) =
      _TourDetailsPageState;
}
