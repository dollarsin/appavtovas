import 'package:flutter/material.dart';

import '../../../../../../shared/localization/localizations_ext.dart';
import '../../../../../../shared/navigation/bottom_sheet_manager.dart';
import '../../../../../../shared/utils/date_time_extension.dart';
import '../passenger_input_field.dart';
import 'passenger_date_picker_sheet.dart';

class PassengerDatePickerField extends StatelessWidget {
  const PassengerDatePickerField({
    required this.controller,
    required this.onChange,
    this.selectedDate,
    super.key,
  });

  final TextEditingController controller;
  final ValueChanged<DateTime> onChange;
  final DateTime? selectedDate;

  @override
  Widget build(BuildContext context) {
    return PassengerValidatorInputField(
      controller: controller,
      fieldTitle: context.locale.birthdayDate,
      readOnly: true,
      onTap:
          () => BottomSheetHelper.showBottomSheet(
            context,
            useCloseButton: false,
            builder:
                (context) => PassengerDatePickerSheet(
                  onBirthdayDateChanged: (value) {
                    controller.text = value.viewDateFormat();
                    onChange(value);
                  },
                  selectedDate: selectedDate,
                ),
          ),
    );
  }
}
