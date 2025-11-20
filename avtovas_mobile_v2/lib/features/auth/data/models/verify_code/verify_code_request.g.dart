// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'verify_code_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_VerifyCodeRequest _$VerifyCodeRequestFromJson(Map<String, dynamic> json) =>
    _VerifyCodeRequest(
      phoneNumber: json['phone_number'] as String,
      code: (json['code'] as num).toInt(),
    );

Map<String, dynamic> _$VerifyCodeRequestToJson(_VerifyCodeRequest instance) =>
    <String, dynamic>{
      'phone_number': instance.phoneNumber,
      'code': instance.code,
    };
