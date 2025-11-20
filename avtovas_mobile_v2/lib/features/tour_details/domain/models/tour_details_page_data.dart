import 'package:freezed_annotation/freezed_annotation.dart';

part 'tour_details_page_data.freezed.dart';
part 'tour_details_page_data.g.dart';

@freezed
abstract class TourDetailsPageData with _$TourDetailsPageData {
  const factory TourDetailsPageData({
    @JsonKey(name: 'tour_id') required String tourId,
  }) = _TourDetailsPageData;

  factory TourDetailsPageData.fromJson(Map<String, dynamic> json) =>
      _$TourDetailsPageDataFromJson(json);
}
