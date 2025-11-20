// order_status.dart
enum OrderStatus {
  pending,
  confirmed,
  paid,
  processing,
  completed,
  cancelled,
  refunded;

  String get jsonValue => name;
}