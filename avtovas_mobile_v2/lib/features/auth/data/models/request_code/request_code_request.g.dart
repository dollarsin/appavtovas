// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'request_code_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_RequestCodeRequest _$RequestCodeRequestFromJson(Map<String, dynamic> json) =>
    _RequestCodeRequest(
      phone: json['phone_number'] as String,
      method: $enumDecode(_$RequestCodeMethodEnumMap, json['method']),
    );

Map<String, dynamic> _$RequestCodeRequestToJson(_RequestCodeRequest instance) =>
    <String, dynamic>{
      'phone_number': instance.phone,
      'method': _$RequestCodeMethodEnumMap[instance.method]!,
    };

const _$RequestCodeMethodEnumMap = {
  RequestCodeMethod.phoneCall: 'phone_call',
  RequestCodeMethod.sms: 'sms',
};
