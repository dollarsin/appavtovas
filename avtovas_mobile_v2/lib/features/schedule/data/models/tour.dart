import 'package:freezed_annotation/freezed_annotation.dart';

import 'tour_point.dart';
import 'tour_route.dart';

part 'tour.freezed.dart';

part 'tour.g.dart';

@freezed
abstract class Tour with _$Tour {
  const factory Tour({
    @JsonKey(name: 'id') required String id,
    @JsonKey(name: 'departure') required TourPoint departure,
    @JsonKey(name: 'destination') required TourPoint destination,
    @JsonKey(name: 'route') required TourRoute route,
    @JsonKey(name: 'base_cost') required double baseCoast,
    @JsonKey(name: 'free_seats') required int freeSeats,
  }) = _Tour;

  factory Tour.fromJson(Map<String, dynamic> json) => _$TourFromJson(json);
}

extension TourX on Tour {
  Duration get duration => destination.time.difference(departure.time);
}
