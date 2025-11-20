import 'package:freezed_annotation/freezed_annotation.dart';

part 'delete_passenger_query_params.freezed.dart';

part 'delete_passenger_query_params.g.dart';

@freezed
abstract class DeletePassengerQueryParams with _$DeletePassengerQueryParams {
  const factory DeletePassengerQueryParams({
    @JsonKey(name: 'passenger_id') required String id,
  }) = _DeletePassengerQueryParams;

  factory DeletePassengerQueryParams.fromJson(Map<String, dynamic> json) =>
      _$DeletePassengerQueryParamsFromJson(json);
}
