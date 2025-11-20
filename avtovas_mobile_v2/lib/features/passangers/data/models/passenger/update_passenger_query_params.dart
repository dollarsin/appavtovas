import 'package:freezed_annotation/freezed_annotation.dart';

part 'update_passenger_query_params.freezed.dart';
part 'update_passenger_query_params.g.dart';

@freezed
abstract class UpdatePassengerQueryParams with _$UpdatePassengerQueryParams {
  const factory UpdatePassengerQueryParams({
    @JsonKey(name: 'passenger_id') required String id,
  }) = _UpdatePassengerQueryParams;

  factory UpdatePassengerQueryParams.fromJson(Map<String, dynamic> json) =>
      _$UpdatePassengerQueryParamsFromJson(json);
}
