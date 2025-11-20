// lib/features/orders/data/models/payment_model.dart
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../shared/utils/convertors/utc_date_time_converter.dart';
import 'payment_status.dart';

part 'payment_model.freezed.dart';
part 'payment_model.g.dart';

@freezed
class PaymentModel with _$PaymentModel {
  const factory PaymentModel({
    @JsonKey(name: 'id') required String id,
    @JsonKey(name: 'order_id') required String orderId,
    @JsonKey(name: 'amount') required double amount,
    @JsonKey(name: 'status') required PaymentStatus status,
    @JsonKey(name: 'processed_at') @UTCDateTimeConverter() required DateTime processedAt,
    @JsonKey(name: 'method') @Default('') String method,
    @JsonKey(name: 'transaction_id') String? transactionId,
  }) = _PaymentModel;

  factory PaymentModel.fromJson(Map<String, dynamic> json) =>
      _$PaymentModelFromJson(json);
}