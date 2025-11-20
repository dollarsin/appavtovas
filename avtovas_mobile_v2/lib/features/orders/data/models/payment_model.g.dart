// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'payment_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_PaymentModel _$PaymentModelFromJson(Map<String, dynamic> json) =>
    _PaymentModel(
      id: json['id'] as String,
      orderId: json['order_id'] as String,
      amount: (json['amount'] as num).toDouble(),
      status: $enumDecode(_$PaymentStatusEnumMap, json['status']),
      processedAt: const UTCDateTimeConverter().fromJson(
        json['processed_at'] as String,
      ),
      method: json['method'] as String? ?? '',
      transactionId: json['transaction_id'] as String?,
    );

Map<String, dynamic> _$PaymentModelToJson(_PaymentModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'order_id': instance.orderId,
      'amount': instance.amount,
      'status': _$PaymentStatusEnumMap[instance.status]!,
      'processed_at': const UTCDateTimeConverter().toJson(instance.processedAt),
      'method': instance.method,
      'transaction_id': instance.transactionId,
    };

const _$PaymentStatusEnumMap = {
  PaymentStatus.pending: 'pending',
  PaymentStatus.processing: 'processing',
  PaymentStatus.completed: 'completed',
  PaymentStatus.failed: 'failed',
  PaymentStatus.cancelled: 'cancelled',
  PaymentStatus.refunded: 'refunded',
};
