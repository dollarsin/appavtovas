import 'package:freezed_annotation/freezed_annotation.dart';

import '../../data/models/citizenship/citizenship.dart';
import '../../data/models/passanger_document/passenger_document_type.dart';
import '../../data/models/passenger/passenger.dart';

part 'passenger_model.freezed.dart';

@freezed
sealed class PassengerModel with _$PassengerModel {
  const factory PassengerModel.create({
    String? firstName,
    String? lastName,
    Gender? gender,
    DateTime? birthDate,
    Citizenship? citizenship,
    PassengerDocumentType? documentType,
    String? documentNumber,
    @Default('') String? patronymic,
  }) = PassengerCreateModel;

  const factory PassengerModel.update({
    required String id,
    required Gender gender,
    required Citizenship citizenship,
    required PassengerDocumentType documentType,
    required DateTime birthDate,
    String? firstName,
    String? lastName,
    String? patronymic,
    String? documentNumber,
  }) = PassengerUpdateModel;
}
