import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../shared/utils/convertors/utc_date_time_converter.dart';

part 'tour_details_point.freezed.dart';

part 'tour_details_point.g.dart';

@freezed
abstract class TourDetailsPoint with _$TourDetailsPoint {
  const factory TourDetailsPoint({
    @JsonKey(name: 'name') required String name,
    @UTCDateTimeConverter() @JsonKey(name: 'time') required DateTime time,
    @JsonKey(name: 'address') String? address,
  }) = _TourDetailsPoint;

  factory TourDetailsPoint.fromJson(Map<String, dynamic> json) =>
      _$TourDetailsPointFromJson(json);
}
