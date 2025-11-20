import 'package:freezed_annotation/freezed_annotation.dart';

part 'passenger_document_type.freezed.dart';
part 'passenger_document_type.g.dart';

@freezed
abstract class PassengerDocumentType with _$PassengerDocumentType {
  const factory PassengerDocumentType({
    @JsonKey(name: 'id') required String id,
    @JsonKey(name: 'name') required String name,
    @JsonKey(name: 'mask') required String mask,
    @JsonKey(name: 'hint') required String hint,
  }) = _PassengerDocumentType;

  factory PassengerDocumentType.fromJson(Map<String, dynamic> json) =>
      _$PassengerDocumentTypeFromJson(json);
}
