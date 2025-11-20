// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'request_code_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_RequestCodeResponse _$RequestCodeResponseFromJson(Map<String, dynamic> json) =>
    _RequestCodeResponse(
      phoneNumber: json['phone_number'] as String,
      method: $enumDecode(_$RequestCodeMethodEnumMap, json['method']),
      requestAfter: (json['request_after'] as num).toInt(),
    );

Map<String, dynamic> _$RequestCodeResponseToJson(
  _RequestCodeResponse instance,
) => <String, dynamic>{
  'phone_number': instance.phoneNumber,
  'method': _$RequestCodeMethodEnumMap[instance.method]!,
  'request_after': instance.requestAfter,
};

const _$RequestCodeMethodEnumMap = {
  RequestCodeMethod.phoneCall: 'phone_call',
  RequestCodeMethod.sms: 'sms',
};
