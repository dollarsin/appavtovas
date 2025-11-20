import 'package:freezed_annotation/freezed_annotation.dart';

part 'get_passenger_query_params.freezed.dart';
part 'get_passenger_query_params.g.dart';

@freezed
abstract class GetPassengerQueryParams with _$GetPassengerQueryParams {
  const factory GetPassengerQueryParams({
    @JsonKey(name: 'passenger_id') required String id,
  }) = _GetPassengerQueryParams;

  factory GetPassengerQueryParams.fromJson(Map<String, dynamic> json) =>
      _$GetPassengerQueryParamsFromJson(json);
}
