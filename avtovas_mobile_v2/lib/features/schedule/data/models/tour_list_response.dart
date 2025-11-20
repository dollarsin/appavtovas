import 'package:freezed_annotation/freezed_annotation.dart';

import 'tour.dart';

part 'tour_list_response.freezed.dart';

part 'tour_list_response.g.dart';

@freezed
abstract class TourListResponse with _$TourListResponse {
  const factory TourListResponse({
    @JsonKey(name: 'tours') required List<Tour> tours,
  }) = _TourListResponse;

  factory TourListResponse.fromJson(Map<String, dynamic> json) =>
      _$TourListResponseFromJson(json);
}
