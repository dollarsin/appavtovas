import 'package:freezed_annotation/freezed_annotation.dart';

part 'my_trip_model.freezed.dart';

part 'my_trip_model.g.dart';

@Freezed(copyWith: false, fromJson: true)
abstract class MyTripModel with _$MyTripModel {
  const factory MyTripModel({
    required String id,
    required String name,
    required String description,
    required DateTime startDate,
    required DateTime endDate,
  }) = _MyTripModel;

  factory MyTripModel.fromJson(Map<String, dynamic> json) =>
      _$MyTripModelFromJson(json);
}
