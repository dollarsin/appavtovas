import 'package:freezed_annotation/freezed_annotation.dart';

part 'tour_details_request.freezed.dart';

part 'tour_details_request.g.dart';

@freezed
abstract class TourDetailsRequest with _$TourDetailsRequest {
  const factory TourDetailsRequest({
    @JsonKey(name: 'tour_id') required String tourId,
  }) = _TourDetailsRequest;

  factory TourDetailsRequest.fromJson(Map<String, dynamic> json) =>
      _$TourDetailsRequestFromJson(json);
}
