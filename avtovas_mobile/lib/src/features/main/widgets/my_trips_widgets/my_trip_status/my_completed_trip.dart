import 'dart:typed_data';

import 'package:another_flushbar/flushbar.dart';
import 'package:avtovas_mobile/src/common/constants/app_assets.dart';
import 'package:avtovas_mobile/src/common/constants/app_dimensions.dart';
import 'package:avtovas_mobile/src/common/constants/app_fonts.dart';
import 'package:avtovas_mobile/src/common/pdf_generation/pdf_generation.dart';
import 'package:avtovas_mobile/src/common/widgets/support_methods/support_methods.dart';
import 'package:common/avtovas_common.dart';
import 'package:core/avtovas_core.dart';
import 'package:flutter/material.dart';

class MyCompletedTrip extends StatelessWidget {
  final StatusedTrip trip;
  final ValueSetter<Uint8List> onSendTicketToEmailTap;
  final String userSavedEmail;
  final String orderNumber;

  const MyCompletedTrip({
    required this.trip,
    required this.onSendTicketToEmailTap,
    required this.userSavedEmail,
    required this.orderNumber,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final mainColorTextStyle = context.themeData.textTheme.titleLarge?.copyWith(
      color: context.theme.mainAppColor,
    );
    return DecoratedBox(
      decoration: BoxDecoration(
        color: context.theme.detailsBackgroundColor,
        borderRadius: const BorderRadius.all(
          Radius.circular(
            AppDimensions.medium,
          ),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(AppDimensions.large),
        child: ExpansionContainer(
          sizeBetweenElements: AppDimensions.large,
          arrowAlignment: ArrowAlignment.end,
          title: _CompletedTripTitles(
            orderNumber: '${context.locale.orderNum} ${trip.trip.routeNum}',
            arrivalDate: trip.trip.arrivalTime.formatHmdM(context),
            departurePlace: trip.trip.departure.name,
            arrivalPlace: trip.trip.destination.name,
          ),
          children: <Widget>[
            MyTripDetails(
              arrivalDateTime: trip.trip.arrivalTime,
              departureDateTime: trip.trip.departureTime,
              arrivalAddress: trip.trip.destination.address ?? '',
              departureAddress: trip.trip.departure.address ?? '',
              departurePlace: trip.trip.departure.name,
              arrivalPlace: trip.trip.destination.name,
              timeInRoad: trip.trip.duration.formatDuration(),
            ),
            // TODO(dev): todo.
            MyTripExpandedDetails(
              passengers: List.generate(
                trip.passengers.length,
                (index) => CommonPassenger(
                  fullName: _generatePassengerFullName(
                    trip.passengers[index],
                  ),
                ),
              ),
              seats: trip.places.join(', '),
              carrier: trip.trip.carrier,
              ticketPrice: context.locale.price(trip.saleCost),
              transport: trip.trip.carrierData.carrierPersonalData.first.name,
            ),
            MyTripChildren(
              children: [
                AvtovasButton.icon(
                  mainAxisAlignment: MainAxisAlignment.center,
                  padding: const EdgeInsets.all(AppDimensions.large),
                  svgPath: AppAssets.downloadIcon,
                  buttonColor: context.theme.detailsBackgroundColor,
                  borderColor: context.theme.mainAppColor,
                  buttonText: context.locale.downloadTicket,
                  textStyle: mainColorTextStyle,
                  onTap: () => PDFGenerator.generateAndShowTicketPDF(
                    statusedTrip: trip,
                    isEmailSending: false,
                    isReturnTicket: false,
                  ),
                ),
                AvtovasButton.icon(
                  mainAxisAlignment: MainAxisAlignment.center,
                  padding: const EdgeInsets.all(AppDimensions.large),
                  svgPath: AppAssets.moreInfoIcon,
                  buttonColor: context.theme.detailsBackgroundColor,
                  borderColor: context.theme.mainAppColor,
                  buttonText: context.locale.more,
                  textStyle: mainColorTextStyle,
                  onTap: () => _showBottomSheet(
                    context: context,
                    orderNumber: context.locale.orderNum + orderNumber,
                    textStyle: mainColorTextStyle,
                  ),
                ),
              ],
            ),
          ].insertBetween(
            const SizedBox(
              height: AppDimensions.extraLarge,
            ),
          ),
        ),
      ),
    );
  }

  String _generatePassengerFullName(Passenger passenger) {
    final lastNameFirstLetter =
        passenger.firstName.characters.characterAt(0).toUpperCase();

    final surnameFirstLetter =
        passenger.surname != null && passenger.surname!.isNotEmpty
            ? '${passenger.surname!.characters.characterAt(0).toUpperCase()}.'
            : '';

    return '${passenger.lastName} $lastNameFirstLetter. $surnameFirstLetter';
  }

  Future<void> _showBottomSheet({
    required BuildContext context,
    required String orderNumber,
    required TextStyle? textStyle,
  }) async {
    return SupportMethods.showAvtovasDialog(
      context: context,
      builder: (context) {
        return AvtovasAlertDialog(
          title: orderNumber,
          actions: [
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: AppDimensions.medium,
              ),
              child: PageOptionTile(
                title: context.locale.sendToEmail,
                textStyle: textStyle,
                onTap: () => _onSendTicketToEmailTap(context),
              ),
            ),
            SizedBox(),
            Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: AppDimensions.medium,
                ),
                child: PageOptionTile(
                  title: context.locale.cancel,
                  textStyle: textStyle,
                  onTap: () {
                    Navigator.pop(context);
                  },
                )),
          ],
        );
      },
    );
  }

  Future<void> _onSendTicketToEmailTap(BuildContext context) async {
    Navigator.pop(context);

    _showTicketEmailSendingFlushbar(context);

    final ticketBytes = await PDFGenerator.generatePdfBytesArray(
      statusedTrip: trip,
      isReturnTicket: false,
    );

    onSendTicketToEmailTap(ticketBytes);
  }

  Future<void> _showTicketEmailSendingFlushbar(BuildContext context) {
    return Flushbar(
      borderRadius: const BorderRadius.all(
        Radius.circular(AppDimensions.large),
      ),
      backgroundColor: context.theme.whiteTextColor,
      titleText: Text(
        'Билет успешно отправлен на электронную почту $userSavedEmail',
        style: context.themeData.textTheme.bodyLarge?.copyWith(
          fontWeight: FontWeight.bold,
          fontSize: AppFonts.appBarFontSize,
        ),
      ),
      isDismissible: false,
      duration: const Duration(seconds: 7),
      animationDuration: const Duration(milliseconds: 150),
      messageText: Text(
        'Спасибо, что продолжаете пользоваться нашей системой☺',
        style: context.themeData.textTheme.bodyLarge?.copyWith(
          fontSize: AppFonts.sizeHeadlineMedium,
        ),
      ),
    ).show(context);
  }
}

class _CompletedTripTitles extends StatelessWidget {
  final String orderNumber;
  final String departurePlace;
  final String arrivalPlace;
  final String arrivalDate;

  const _CompletedTripTitles({
    required this.orderNumber,
    required this.departurePlace,
    required this.arrivalPlace,
    required this.arrivalDate,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          orderNumber,
          style: context.themeData.textTheme.headlineMedium?.copyWith(
            fontWeight: AppFonts.weightRegular,
          ),
        ),
        FittedBox(
          fit: BoxFit.fitWidth,
          child: Text(
            '$departurePlace -\n$arrivalPlace',
            style: context.themeData.textTheme.headlineMedium?.copyWith(
              color: context.theme.mainAppColor,
              fontSize: AppFonts.detailsDescSize,
            ),
          ),
        ),
        Text(
          arrivalDate,
          style: context.themeData.textTheme.headlineSmall?.copyWith(
            fontWeight: AppFonts.weightRegular,
          ),
        ),
      ],
    );
  }
}
