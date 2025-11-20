class ApiConstants {
  ApiConstants._();

  static const String baseUrl = 'https://avtovas.exise.ru';
  static const String authRequestCode = '/auth/request-code';
  static const String authVerifyCode = '/auth/verify-code';
  static const String authRefreshToken = '/auth/refresh';
  static const String authLogout = '/auth/logout';
  static const String myTripsEndpoint = '/my-trips';
  static const String pointListEndpoint = '/trips/points/list';
  static const String toursListEndpoint = '/trips/tours/list';
  static const String toursDetailsEndpoint = '/trips/tours/detail';
  static const String passengerDocumentTypesListEndpoint =
      '/passengers/documents/list';

  static const String citizenshipsListEndpoint =
      '/passengers/citizenships/list';
  static const String passengersGetOneEndpoint = '/passengers/get_one';
  static const String passengersCreateEndpoint = '/passengers/create';
  static const String passengersUpdateEndpoint = '/passengers/update';
  static const String passengersDeleteEndpoint = '/passengers/delete';
  static const String passengersGetAllEndpoint = '/passengers/get_all';

  // Orders endpoints
  static const String ordersListEndpoint = '/orders';
  static const String orderDetailsEndpoint = '/orders/detail';
  static const String createOrderEndpoint = '/orders/create';

  // Payments endpoints
  static const String initiatePaymentEndpoint = '/orders/payments/initiate';
  static const String confirmPaymentEndpoint = '/orders/payments/confirm';
  static const String ordersPaymentsHistoryEndpoint = '/orders/payments';
  static const String ordersPaymentStatusEndpoint = '/orders/payments/status';

  // Refunds endpoints
  static const String requestRefundEndpoint = '/orders/refunds/request';
  static const String refundsHistoryEndpoint = '/orders/refunds';
}
