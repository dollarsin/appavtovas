// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auth_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_AuthData _$AuthDataFromJson(Map<String, dynamic> json) => _AuthData(
  accessToken: json['access_token'] as String,
  isNewUser: json['is_new_user'] as bool,
  expiresAt: DateTime.parse(json['expires_at'] as String),
);

Map<String, dynamic> _$AuthDataToJson(_AuthData instance) => <String, dynamic>{
  'access_token': instance.accessToken,
  'is_new_user': instance.isNewUser,
  'expires_at': instance.expiresAt.toIso8601String(),
};
