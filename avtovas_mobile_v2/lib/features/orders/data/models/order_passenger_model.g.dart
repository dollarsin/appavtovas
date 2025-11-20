// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order_passenger_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_OrderPassengerModel _$OrderPassengerModelFromJson(Map<String, dynamic> json) =>
    _OrderPassengerModel(
      id: json['id'] as String,
      passengerId: json['passenger_id'] as String,
      orderId: json['order_id'] as String,
      price: (json['price'] as num).toDouble(),
      seatNumber: json['seat_number'] as String?,
    );

Map<String, dynamic> _$OrderPassengerModelToJson(
  _OrderPassengerModel instance,
) => <String, dynamic>{
  'id': instance.id,
  'passenger_id': instance.passengerId,
  'order_id': instance.orderId,
  'price': instance.price,
  'seat_number': instance.seatNumber,
};
