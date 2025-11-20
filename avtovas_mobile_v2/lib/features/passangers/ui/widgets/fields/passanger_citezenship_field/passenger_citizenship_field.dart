import 'package:flutter/material.dart';

import '../../../../../../shared/localization/localizations_ext.dart';
import '../../../../../../shared/navigation/bottom_sheet_manager.dart';
import '../../../../data/models/citizenship/citizenship.dart';
import '../passenger_input_field.dart';
import 'passenger_citizenship_sheet.dart';

final class PassengerCitizenshipField extends StatelessWidget {
  const PassengerCitizenshipField({
    required this.controller,
    required this.onCitizenshipChanged,
    this.selectedCitizenship,
    this.initialCitizenship,
    super.key,
  });

  final TextEditingController controller;
  final ValueChanged<Citizenship> onCitizenshipChanged;
  final Citizenship? selectedCitizenship;
  final Citizenship? initialCitizenship;

  @override
  Widget build(BuildContext context) {
    return PassengerValidatorInputField(
      controller: controller,
      fieldTitle: context.locale.citizenship,
      readOnly: true,
      enableInteractiveSelection: false,
      onTap: () {
        BottomSheetHelper.showBottomSheet(
          context,
          sheetTitle: context.locale.citizenship,
          builder: (context) {
            return PassengerCitizenshipSheet(
              onCitizenshipChanged: (value) {
                controller.text = value.name;
                onCitizenshipChanged(value);
              },
              selectedCitizenship: selectedCitizenship,
            );
          },
        );
      },
    );
  }
}
