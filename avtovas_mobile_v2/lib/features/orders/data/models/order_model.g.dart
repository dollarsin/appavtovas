// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_OrderModel _$OrderModelFromJson(Map<String, dynamic> json) => _OrderModel(
  id: json['id'] as String,
  tripId: json['trip_id'] as String,
  totalAmount: (json['total_amount'] as num).toDouble(),
  status: $enumDecode(_$OrderStatusEnumMap, json['status']),
  createdAt: const UTCDateTimeConverter().fromJson(
    json['created_at'] as String,
  ),
  updatedAt: _$JsonConverterFromJson<String, DateTime>(
    json['updated_at'],
    const UTCDateTimeConverter().fromJson,
  ),
  passengers:
      (json['passengers'] as List<dynamic>?)
          ?.map((e) => OrderPassengerModel.fromJson(e as Map<String, dynamic>))
          .toList() ??
      const [],
);

Map<String, dynamic> _$OrderModelToJson(_OrderModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'trip_id': instance.tripId,
      'total_amount': instance.totalAmount,
      'status': _$OrderStatusEnumMap[instance.status]!,
      'created_at': const UTCDateTimeConverter().toJson(instance.createdAt),
      'updated_at': _$JsonConverterToJson<String, DateTime>(
        instance.updatedAt,
        const UTCDateTimeConverter().toJson,
      ),
      'passengers': instance.passengers,
    };

const _$OrderStatusEnumMap = {
  OrderStatus.pending: 'pending',
  OrderStatus.confirmed: 'confirmed',
  OrderStatus.paid: 'paid',
  OrderStatus.processing: 'processing',
  OrderStatus.completed: 'completed',
  OrderStatus.cancelled: 'cancelled',
  OrderStatus.refunded: 'refunded',
};

Value? _$JsonConverterFromJson<Json, Value>(
  Object? json,
  Value? Function(Json json) fromJson,
) => json == null ? null : fromJson(json as Json);

Json? _$JsonConverterToJson<Json, Value>(
  Value? value,
  Json? Function(Value value) toJson,
) => value == null ? null : toJson(value);
