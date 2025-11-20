import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../shared/utils/convertors/utc_date_time_converter.dart';

part 'tour_point.freezed.dart';

part 'tour_point.g.dart';

@freezed
abstract class TourPoint with _$TourPoint {
  const factory TourPoint({
    @JsonKey(name: 'name') required String name,
    @JsonKey(name: 'time') @UTCDateTimeConverter() required DateTime time,
  }) = _TourPoint;

  factory TourPoint.fromJson(Map<String, dynamic> json) =>
      _$TourPointFromJson(json);
}
