// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'verify_code_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_VerifyCodeResponse _$VerifyCodeResponseFromJson(Map<String, dynamic> json) =>
    _VerifyCodeResponse(
      accessToken: json['access_token'] as String,
      expiresIn: (json['expires_in'] as num).toInt(),
      isNewUser: json['is_new_user'] as bool,
    );

Map<String, dynamic> _$VerifyCodeResponseToJson(_VerifyCodeResponse instance) =>
    <String, dynamic>{
      'access_token': instance.accessToken,
      'expires_in': instance.expiresIn,
      'is_new_user': instance.isNewUser,
    };
