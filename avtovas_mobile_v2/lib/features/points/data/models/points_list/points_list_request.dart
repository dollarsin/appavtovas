// @dart=3.8
import 'package:freezed_annotation/freezed_annotation.dart';

part 'points_list_request.freezed.dart';

part 'points_list_request.g.dart';

@freezed
abstract class PointsListRequest with _$PointsListRequest {
  const factory PointsListRequest({
    @JsonKey(name: 'type') required PointsListType type,
    @JsonKey(name: 'query', includeIfNull: false) String? query,
  }) = _PointsListRequest;

  factory PointsListRequest.fromJson(Map<String, dynamic> json) =>
      _$PointsListRequestFromJson(json);
}

enum PointsListType {
  @JsonValue('departure')
  departure,
  @JsonValue('destination')
  destination,
}
