// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'formatter_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_FormatterModel _$FormatterModelFromJson(Map<String, dynamic> json) =>
    _FormatterModel(
      mask: json['mask'] as String,
      filters:
          (json['filters'] as Map<String, dynamic>?)?.map(
            (k, e) => MapEntry(k, e as String),
          ) ??
          const {},
    );

Map<String, dynamic> _$FormatterModelToJson(_FormatterModel instance) =>
    <String, dynamic>{'mask': instance.mask, 'filters': instance.filters};
