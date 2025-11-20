import 'package:flutter/material.dart';

import '../../../../localization/localizations_ext.dart';
import '../../app_dimensions.dart';
import '../../avtovas_theme.dart';
import '../avtovas_button/avtovas_button.dart';

final class ExpandedTripInformation extends StatelessWidget {
  const ExpandedTripInformation({
    required this.ticketPrice,
    required this.freePlaces,
    required this.isSmart,
    required this.onBuyTap,
    required this.canTapOnBuy,
    super.key,
  });

  final String ticketPrice;
  final String freePlaces;
  final bool isSmart;
  final VoidCallback onBuyTap;
  final bool canTapOnBuy;

  @override
  Widget build(BuildContext context) {
    final noFreePlaces = (int.tryParse(freePlaces) ?? 1) == 0;
    final buyTicket =
        canTapOnBuy ? context.locale.buyTicket : 'Продажа запрещена';

    return !isSmart
        ? Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            if (canTapOnBuy) TicketPriceText(ticketPrice: ticketPrice),
            FreePlacesBody(freePlaces: freePlaces),
            const SizedBox(
              height: CommonDimensions.extraLarge + CommonDimensions.extraSmall,
            ),
            AvtovasButton.text(
              isActive: canTapOnBuy,
              buttonText: buyTicket,
              onTap: onBuyTap,
            ),
          ],
        )
        : Row(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                if (canTapOnBuy) TicketPriceText(ticketPrice: ticketPrice),
                FreePlacesBody(freePlaces: freePlaces),
              ],
            ),
            const Spacer(),
            AvtovasButton.text(
              isActive: !noFreePlaces && canTapOnBuy,
              buttonText:
                  noFreePlaces ? context.locale.noFreePlaces : buyTicket,
              buttonColor:
                  noFreePlaces ? context.theme.fivefoldTextColor : null,
              textStyle: TextStyle(color: context.theme.whiteTextColor),
              onTap: noFreePlaces ? null : onBuyTap,
            ),
          ],
        );
  }
}

final class TicketPriceText extends StatelessWidget {
  const TicketPriceText({required this.ticketPrice, super.key});

  final String ticketPrice;

  @override
  Widget build(BuildContext context) {
    return Text(
      ticketPrice,
      style: context.themeData.textTheme.headlineLarge?.copyWith(
        fontWeight: FontWeight.bold,
      ),
    );
  }
}

final class FreePlacesBody extends StatelessWidget {
  const FreePlacesBody({required this.freePlaces, super.key});

  final String freePlaces;

  @override
  Widget build(BuildContext context) {
    final textTheme = context.themeData.textTheme.bodyLarge;

    return Text.rich(
      TextSpan(
        children: [
          TextSpan(
            text:
                "${context.locale.placesLeft} ${(int.tryParse(freePlaces) ?? 1) == 0 ? "0" : ""}",
            style: textTheme,
          ),
          if (freePlaces != '0')
            TextSpan(
              text: context.locale.freePlaces(int.tryParse(freePlaces) ?? 0),
              style: textTheme?.copyWith(color: context.theme.mainAppColor),
            ),
        ],
      ),
    );
  }
}
