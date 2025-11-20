import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../shared/utils/convertors/utc_date_time_converter.dart';
import 'passenger.dart';

part 'passenger_create_params.freezed.dart';

part 'passenger_create_params.g.dart';

@freezed
abstract class PassengerCreateParams with _$PassengerCreateParams {
  const factory PassengerCreateParams({
    @JsonKey(name: 'first_name') required String firstName,
    @JsonKey(name: 'last_name') required String lastName,
    @JsonKey(name: 'gender') required Gender gender,
    @JsonKey(name: 'birthdate')
    @UTCDateTimeConverter()
    required DateTime birthDate,
    @JsonKey(name: 'citizenship_id') required String citizenshipId,
    @JsonKey(name: 'document_type_id') required String documentTypeId,
    @JsonKey(name: 'document_number') required String documentNumber,
    @JsonKey(name: 'patronymic') String? patronymic,
  }) = _PassengerCreateParams;

  factory PassengerCreateParams.fromJson(Map<String, dynamic> json) =>
      _$PassengerCreateParamsFromJson(json);
}
