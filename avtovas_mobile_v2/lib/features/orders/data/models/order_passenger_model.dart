// lib/features/orders/data/models/order_passenger_model.dart
import 'package:freezed_annotation/freezed_annotation.dart';

part 'order_passenger_model.freezed.dart';
part 'order_passenger_model.g.dart';

@freezed
class OrderPassengerModel with _$OrderPassengerModel {
  const factory OrderPassengerModel({
    @JsonKey(name: 'id') required String id,
    @JsonKey(name: 'passenger_id') required String passengerId,
    @JsonKey(name: 'order_id') required String orderId,
    @JsonKey(name: 'price') required double price,
    @JsonKey(name: 'seat_number') String? seatNumber,
  }) = _OrderPassengerModel;

  factory OrderPassengerModel.fromJson(Map<String, dynamic> json) =>
      _$OrderPassengerModelFromJson(json);
}