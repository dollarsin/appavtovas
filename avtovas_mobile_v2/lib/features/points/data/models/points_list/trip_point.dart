import 'package:freezed_annotation/freezed_annotation.dart';

part 'trip_point.freezed.dart';

part 'trip_point.g.dart';

@freezed
abstract class TripPoint with _$TripPoint {
  const factory TripPoint({
    @JsonKey(name: 'id') required String id,
    @JsonKey(name: 'name') required String name,
    @JsonKey(name: 'region') required String region,
    @JsonKey(name: 'district') String? district,
  }) = _TripPoint;

  factory TripPoint.fromJson(Map<String, dynamic> json) =>
      _$TripPointFromJson(json);
}
