import 'package:freezed_annotation/freezed_annotation.dart';

part 'tour_details_route.freezed.dart';
part 'tour_details_route.g.dart';

@freezed
abstract class TourDetailsRoute with _$TourDetailsRoute {
  const factory TourDetailsRoute({
    @JsonKey(name: 'name') required String name,
    @JsonKey(name: 'number') required String number,
  }) = _TourDetailsRoute;

  factory TourDetailsRoute.fromJson(Map<String, dynamic> json) =>
      _$TourDetailsRouteFromJson(json);
}
