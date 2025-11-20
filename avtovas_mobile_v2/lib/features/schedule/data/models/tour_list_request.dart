import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../shared/utils/convertors/utc_date_time_converter.dart';

part 'tour_list_request.freezed.dart';

part 'tour_list_request.g.dart';

@freezed
abstract class TourListRequest with _$TourListRequest {
  const factory TourListRequest({
    @JsonKey(name: 'point_from') required String pointFrom,
    @JsonKey(name: 'point_to') required String pointTo,
    @JsonKey(name: 'date_time')
    @UTCDateTimeConverter()
    required DateTime dateTime,
  }) = _TourListRequest;

  factory TourListRequest.fromJson(Map<String, dynamic> json) =>
      _$TourListRequestFromJson(json);
}
