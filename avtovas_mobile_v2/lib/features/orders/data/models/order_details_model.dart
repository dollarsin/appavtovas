// lib/features/orders/data/models/order_details_model.dart
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../shared/utils/convertors/utc_date_time_converter.dart';
import 'order_passenger_model.dart';
import 'order_status.dart';
import 'payment_model.dart';

part 'order_details_model.freezed.dart';
part 'order_details_model.g.dart';

@freezed
class OrderDetailsModel with _$OrderDetailsModel {
  const factory OrderDetailsModel({
    @JsonKey(name: 'id') required String id,
    @JsonKey(name: 'trip_id') required String tripId,
    @JsonKey(name: 'total_amount') required double totalAmount,
    @JsonKey(name: 'status') required OrderStatus status,
    @JsonKey(name: 'items_description') required String itemsDescription,
    @JsonKey(name: 'created_at') @UTCDateTimeConverter() required DateTime createdAt,
    @JsonKey(name: 'updated_at') @UTCDateTimeConverter() DateTime? updatedAt,
    @JsonKey(name: 'passengers') @Default([]) List<OrderPassengerModel> passengers,
    @JsonKey(name: 'payments') @Default([]) List<PaymentModel> payments,
  }) = _OrderDetailsModel;

  factory OrderDetailsModel.fromJson(Map<String, dynamic> json) =>
      _$OrderDetailsModelFromJson(json);
}