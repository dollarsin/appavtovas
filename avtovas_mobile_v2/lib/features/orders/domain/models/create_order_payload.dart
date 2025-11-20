class CreateOrderPayload {
  const CreateOrderPayload({
    required this.departurePointId,
    required this.destinationPointId,
    required this.passengerId,
    required this.travelDate,
    required this.paymentMethod,
  });

  final String departurePointId;
  final String destinationPointId;
  final String passengerId;
  final DateTime travelDate;
  final String paymentMethod;

  Map<String, dynamic> toJson() {
    return {
      'departurePointId': departurePointId,
      'destinationPointId': destinationPointId,
      'passengerId': passengerId,
      'travelDate': travelDate.toIso8601String(),
      'paymentMethod': paymentMethod,
    };
  }
}
