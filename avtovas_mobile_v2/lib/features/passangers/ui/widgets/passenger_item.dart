import 'package:flutter/material.dart';

import '../../../../shared/localization/localizations_ext.dart';
import '../../../../shared/ui/ui_kit/app_assets.dart';
import '../../../../shared/ui/ui_kit/app_dimensions.dart';
import '../../../../shared/ui/ui_kit/app_fonts.dart';
import '../../../../shared/ui/ui_kit/avtovas_theme.dart';
import '../../../../shared/ui/ui_kit/widgets/vector_image/avtovas_vector_image.dart';
import '../../../../shared/utils/date_time_extension.dart';
import '../../data/models/passenger/passenger.dart';

final class PassengerItem extends StatelessWidget {
  const PassengerItem({
    required this.onTap,
    required this.passengerFirstName,
    required this.passengerLastName,
    required this.passengerPatronymic,
    required this.passengerGender,
    required this.passengerBirthday,
    super.key,
  });

  final VoidCallback onTap;
  final String passengerFirstName;
  final String passengerLastName;
  final Gender passengerGender;
  final DateTime passengerBirthday;
  final String? passengerPatronymic;

  @override
  Widget build(BuildContext context) {
    final passengerGenderText = switch (passengerGender) {
      Gender.male => context.locale.male,
      Gender.female => context.locale.female,
    };
    final passengerBirthdayText = passengerBirthday.requestDateFormat();

    return InkWell(
      onTap: onTap,
      borderRadius: const BorderRadius.all(
        Radius.circular(CommonDimensions.medium),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: CommonDimensions.large,
          vertical: CommonDimensions.small,
        ),
        child: Row(
          children: [
            const _PassengerIcon(),
            const SizedBox(width: CommonDimensions.large),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  _passengerCollapesedFullName(),
                  style: context.themeData.textTheme.titleLarge?.copyWith(
                    fontSize: AppFonts.sizeHeadlineMedium,
                  ),
                ),
                Text(
                  '$passengerGenderText, $passengerBirthdayText',
                  style: context.themeData.textTheme.titleLarge?.copyWith(
                    fontSize: AppFonts.sizeHeadlineMedium,
                  ),
                ),
              ],
            ),
            const Spacer(),
            const AvtovasVectorImage(svgAssetPath: AppAssets.forwardArrowIcon),
          ],
        ),
      ),
    );
  }

  String _passengerCollapesedFullName() {
    final firstNameLetter = '${passengerFirstName.characters.characterAt(0)}.';
    final surnameLetter =
        passengerPatronymic == null
            ? ''
            : '${passengerPatronymic!.characters.characterAt(0)}.';

    return '$passengerLastName $firstNameLetter $surnameLetter';
  }
}

final class _PassengerIcon extends StatelessWidget {
  const _PassengerIcon();

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: CommonDimensions.checkBoxSize,
      backgroundColor: context.theme.dividerColor,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          AvtovasVectorImage(
            color: context.theme.defaultIconColor,
            svgAssetPath: AppAssets.passengerSmallIcon,
            width: CommonDimensions.checkBoxSize,
            height: CommonDimensions.checkBoxSize,
          ),
        ],
      ),
    );
  }
}
