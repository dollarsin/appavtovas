import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../shared/utils/convertors/utc_date_time_converter.dart';
import '../citizenship/citizenship.dart';
import '../passanger_document/passenger_document_type.dart';

part 'passenger.freezed.dart';

part 'passenger.g.dart';

@freezed
abstract class Passenger with _$Passenger {
  const factory Passenger({
    @JsonKey(name: 'id') required String id,
    @JsonKey(name: 'first_name') required String firstName,
    @JsonKey(name: 'last_name') required String lastName,
    @JsonKey(name: 'gender') required Gender gender,
    @JsonKey(name: 'birthdate')
    @UTCDateTimeConverter()
    required DateTime birthDate,
    @JsonKey(name: 'citizenship') required Citizenship citizenship,
    @JsonKey(name: 'document_type') required PassengerDocumentType documentType,
    @JsonKey(name: 'document_number') required String documentNumber,
    @JsonKey(name: 'patronymic') String? patronymic,
  }) = _Passenger;

  factory Passenger.fromJson(Map<String, dynamic> json) =>
      _$PassengerFromJson(json);
}

enum Gender {
  @JsonValue('Мужской')
  male,
  @JsonValue('Женский')
  female,
}
