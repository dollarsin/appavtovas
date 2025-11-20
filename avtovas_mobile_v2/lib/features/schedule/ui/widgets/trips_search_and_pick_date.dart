import 'package:flutter/material.dart';

import '../../../../shared/ui/ui_kit/app_dimensions.dart';
import '../../../../shared/ui/ui_kit/avtovas_theme.dart';
import '../../../../shared/utils/date_time_extension.dart';
import '../../../points/data/models/points_list/trip_point.dart';
import '../../../points/ui/widgets/search_trip_vertical.dart';

class TripsSearchAndPickDate extends StatelessWidget {
  const TripsSearchAndPickDate({
    required this.onTripDateChanged,
    required this.destinationController,
    required this.departureController,
    required this.onDepartureSubmitted,
    required this.onDestinationSubmitted,
    required this.initialTripDate,
    required this.tripDate,
    super.key,
  });

  final ValueChanged<DateTime> onTripDateChanged;
  final TextEditingController destinationController;
  final TextEditingController departureController;
  final ValueChanged<TripPoint?> onDepartureSubmitted;
  final ValueChanged<TripPoint?> onDestinationSubmitted;
  final DateTime initialTripDate;
  final DateTime tripDate;

  // TODO(lmepol): переделать на общую реализацию
  Future<void> _selectDate(BuildContext context) async {
    final now = DateTime.now();

    final tripDate = await showDatePicker(
      context: context,
      initialDate: initialTripDate,
      firstDate: now,
      lastDate: now.copyWith(month: now.month + 1),
      builder: (context, child) {
        return Theme(
          data: context.themeData.copyWith(
            datePickerTheme: DatePickerThemeData(
              dividerColor: context.theme.mainAppColor,
              shape: const OutlineInputBorder(
                borderSide: BorderSide.none,
                borderRadius: BorderRadius.all(
                  Radius.circular(AppDimensions.mediumLarge),
                ),
              ),
              headerForegroundColor: context.theme.whiteTextColor,
              headerBackgroundColor: context.theme.mainAppColor,
              dayOverlayColor: WidgetStateProperty.all(
                context.theme.mainAppColor.withAlpha(25),
              ),
              yearOverlayColor: WidgetStateProperty.all(
                context.theme.mainAppColor.withAlpha(25),
              ),
              confirmButtonStyle: ElevatedButton.styleFrom(
                backgroundColor: context.theme.mainAppColor,
                foregroundColor: context.theme.whiteTextColor,
                textStyle: context.themeData.textTheme.bodyLarge?.copyWith(
                  color: context.theme.whiteTextColor,
                ),
              ),
            ),
            colorScheme: ColorScheme.light(primary: context.theme.mainAppColor),
          ),
          child: child!,
        );
      },
    );

    if (tripDate != null) {
      onTripDateChanged(tripDate);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(AppDimensions.large),
      width: double.infinity,
      decoration: BoxDecoration(
        color: context.theme.detailsBackgroundColor,
        borderRadius: const BorderRadius.all(
          Radius.circular(AppDimensions.medium),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SearchTripVertical(
            destinationController: destinationController,
            departureController: departureController,
            onDepartureSubmitted: onDepartureSubmitted,
            onDestinationSubmitted: onDestinationSubmitted,
          ),
          InkWell(
            onTap: () => _selectDate(context),
            child: Container(
              padding: const EdgeInsets.all(AppDimensions.medium),
              margin: const EdgeInsets.only(top: AppDimensions.medium),
              color: context.theme.containerBackgroundColor,
              child: Text(tripDate.formatDME(context)),
            ),
          ),
        ],
      ),
    );
  }
}
