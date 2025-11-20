import 'package:freezed_annotation/freezed_annotation.dart';

import 'passenger.dart';

part 'passenger_list_response.freezed.dart';

part 'passenger_list_response.g.dart';

@freezed
abstract class PassengerListResponse with _$PassengerListResponse {
  const factory PassengerListResponse({
    @JsonKey(name: 'passengers') @Default([]) List<Passenger> passengers,
  }) = _PassengerListResponse;

  factory PassengerListResponse.fromJson(Map<String, dynamic> json) =>
      _$PassengerListResponseFromJson(json);
}
