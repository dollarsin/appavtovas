// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'country_code_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_CountryCodeModel _$CountryCodeModelFromJson(Map<String, dynamic> json) =>
    _CountryCodeModel(
      name: json['name'] as String,
      code: json['code'] as String,
      dialCode: json['dial_code'] as String,
      phoneHint: json['phone_hint'] as String,
      formatter: FormatterModel.fromJson(
        json['formatter'] as Map<String, dynamic>,
      ),
    );

Map<String, dynamic> _$CountryCodeModelToJson(_CountryCodeModel instance) =>
    <String, dynamic>{
      'name': instance.name,
      'code': instance.code,
      'dial_code': instance.dialCode,
      'phone_hint': instance.phoneHint,
      'formatter': instance.formatter,
    };
