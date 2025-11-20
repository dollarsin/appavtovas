// @dart=3.8
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../shared/utils/convertors/utc_date_time_converter.dart';

part 'tour_list_page_data.freezed.dart';

part 'tour_list_page_data.g.dart';

@Freezed(copyWith: false)
abstract class TourListPageData with _$TourListPageData {
  const factory TourListPageData({
    @JsonKey(name: 'departure_id', includeIfNull: false) String? departureId,
    @JsonKey(name: 'departure_name', includeIfNull: false)
    String? departureName,
    @JsonKey(name: 'destination_id', includeIfNull: false)
    String? destinationId,
    @JsonKey(name: 'destination_name', includeIfNull: false)
    String? destinationName,
    @JsonKey(name: 'date', includeIfNull: false)
    @UTCDateTimeConverter()
    DateTime? date,
  }) = _TourListPageData;

  factory TourListPageData.fromJson(Map<String, dynamic> json) =>
      _$TourListPageDataFromJson(json);
}
