import 'package:freezed_annotation/freezed_annotation.dart';

part 'tour_details_carrier.freezed.dart';

part 'tour_details_carrier.g.dart';

@freezed
abstract class TourDetailsCarrier with _$TourDetailsCarrier {
  const factory TourDetailsCarrier({
    @JsonKey(name: 'name') required String name,
    @JsonKey(name: 'bus') required String busName,
  }) = _TourDetailsCarrier;

  factory TourDetailsCarrier.fromJson(Map<String, dynamic> json) =>
      _$TourDetailsCarrierFromJson(json);
}
