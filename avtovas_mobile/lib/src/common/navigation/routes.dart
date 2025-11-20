import 'package:common/avtovas_navigation.dart';

enum Routes implements BaseRoutes {
  mainPath('/'),
  localAuth('/local-auth'),
  searchTripsPath('/search-trips'),
  tripDetailsPath('/trip-details'),
  ticketingPath('/ticketing'),
  passengersPath('/profile/passengers'),
  paymentsHistoryPath('/profile/payments-history'),
  notificationsPath('/profile/notifications'),
  cardsControlPath('/profile/cards-control'),
  referenceInformationPath('/profile/reference-information'),
  contactsPath('/contacts'),
  helpPage('/help-page'),
  helpReferenceInfoPath('/reference'),
  termsPath('/profile/terms'),
  aboutPath('/profile/about'),
  busStationContactsPath('/support/bus-station-contacts'),
  privacyPolicyPath('/terms/privacy-policy'),
  termsOfUsePath('/terms/terms-of-use'),
  contractOfferPath('/terms/contract-offer'),
  returnConditionsPath('/return-conditions'),
  authPath('/auth');

  final String route;

  const Routes(this.route);

  @override
  String get name => route;
}
