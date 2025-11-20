import 'package:freezed_annotation/freezed_annotation.dart';

import 'formatter_model.dart';

part 'country_code_model.freezed.dart';

part 'country_code_model.g.dart';

@Freezed(fromJson: true, toJson: true, copyWith: false)
abstract class CountryCodeModel with _$CountryCodeModel {
  const factory CountryCodeModel({
    @JsonKey(name: 'name') required String name,
    @JsonKey(name: 'code') required String code,
    @JsonKey(name: 'dial_code') required String dialCode,
    @JsonKey(name: 'phone_hint') required String phoneHint,
    @JsonKey(name: 'formatter') required FormatterModel formatter,
  }) = _CountryCodeModel;

  factory CountryCodeModel.fromJson(Map<String, dynamic> json) =>
      _$CountryCodeModelFromJson(json);
}
