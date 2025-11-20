import 'package:freezed_annotation/freezed_annotation.dart';

part 'tour_route.freezed.dart';

part 'tour_route.g.dart';

@freezed
abstract class TourRoute with _$TourRoute {
  const factory TourRoute({
    @JsonKey(name: 'name') required String name,
    @JsonKey(name: 'number') required String number,
  }) = _TourRoute;

  factory TourRoute.fromJson(Map<String, dynamic> json) =>
      _$TourRouteFromJson(json);
}
