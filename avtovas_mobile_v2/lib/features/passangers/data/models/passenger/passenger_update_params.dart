// @dart=3.8
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../shared/utils/convertors/utc_date_time_converter.dart';
import 'passenger.dart';

part 'passenger_update_params.freezed.dart';

part 'passenger_update_params.g.dart';

@freezed
abstract class PassengerUpdateParams with _$PassengerUpdateParams {
  const factory PassengerUpdateParams({
    @JsonKey(name: 'first_name', includeIfNull: false) String? firstName,
    @JsonKey(name: 'last_name', includeIfNull: false) String? lastName,
    @JsonKey(name: 'gender', includeIfNull: false) Gender? gender,
    @JsonKey(name: 'birthdate', includeIfNull: false)
    @UTCDateTimeConverter()
    DateTime? birthDate,
    @JsonKey(name: 'citizenship_id', includeIfNull: false)
    String? citizenshipId,
    @JsonKey(name: 'document_type_id', includeIfNull: false)
    String? documentTypeId,
    @JsonKey(name: 'document_number', includeIfNull: false)
    String? documentNumber,
    @JsonKey(name: 'patronymic', includeIfNull: false) String? patronymic,
  }) = _PassengerUpdateParams;

  factory PassengerUpdateParams.fromJson(Map<String, dynamic> json) =>
      _$PassengerUpdateParamsFromJson(json);
}
