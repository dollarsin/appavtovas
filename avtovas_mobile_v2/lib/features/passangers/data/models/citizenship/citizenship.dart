import 'package:freezed_annotation/freezed_annotation.dart';

part 'citizenship.freezed.dart';

part 'citizenship.g.dart';

@freezed
abstract class Citizenship with _$Citizenship {
  const factory Citizenship({
    @JsonKey(name: 'id') required String id,
    @JsonKey(name: 'name') required String name,
  }) = _Citizenship;

  factory Citizenship.fromJson(Map<String, dynamic> json) =>
      _$CitizenshipFromJson(json);
}
