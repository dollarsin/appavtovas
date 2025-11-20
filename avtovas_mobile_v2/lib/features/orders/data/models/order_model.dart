// lib/features/orders/data/models/order_model.dart
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../shared/utils/convertors/utc_date_time_converter.dart';
import 'order_passenger_model.dart';
import 'order_status.dart';

part 'order_model.freezed.dart';
part 'order_model.g.dart';

@freezed
class OrderModel with _$OrderModel {
  const factory OrderModel({
    @JsonKey(name: 'id') required String id,
    @JsonKey(name: 'trip_id') required String tripId,
    @JsonKey(name: 'total_amount') required double totalAmount,
    @JsonKey(name: 'status') required OrderStatus status,
    @JsonKey(name: 'created_at') @UTCDateTimeConverter() required DateTime createdAt,
    @JsonKey(name: 'updated_at') @UTCDateTimeConverter() DateTime? updatedAt,
    @JsonKey(name: 'passengers') @Default([]) List<OrderPassengerModel> passengers,
  }) = _OrderModel;

  factory OrderModel.fromJson(Map<String, dynamic> json) =>
      _$OrderModelFromJson(json);
}