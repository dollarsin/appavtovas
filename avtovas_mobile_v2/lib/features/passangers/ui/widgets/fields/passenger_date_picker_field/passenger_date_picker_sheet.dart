import 'package:flutter/cupertino.dart';

import '../../../../../../shared/ui/ui_kit/app_dimensions.dart';
import '../../../../../../shared/ui/ui_kit/widgets/avtovas_button/avtovas_button.dart';
import '../../../../../../shared/utils/date_time_extension.dart';

final class PassengerDatePickerSheet extends StatefulWidget {
  const PassengerDatePickerSheet({
    required this.onBirthdayDateChanged,
    required this.selectedDate,
    super.key,
  });

  final ValueChanged<DateTime> onBirthdayDateChanged;
  final DateTime? selectedDate;

  @override
  State<PassengerDatePickerSheet> createState() =>
      _PassengerDatePickerSheetState();
}

class _PassengerDatePickerSheetState extends State<PassengerDatePickerSheet> {
  late DateTime _selectedDate;

  @override
  void initState() {
    super.initState();
    _selectedDate = (widget.selectedDate ?? DateTime.now()).leaveDateOnly();
  }

  @override
  Widget build(BuildContext context) {
    final now = DateTime.now();

    return PopScope(
      onPopInvokedWithResult: (didPop, _) {
        if (widget.selectedDate != _selectedDate) {
          widget.onBirthdayDateChanged(_selectedDate);
        }
      },
      child: ClipRRect(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: CommonDimensions.large,
            vertical: CommonDimensions.medium,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              SizedBox(
                width: 300,
                height: MediaQuery.sizeOf(context).height * 0.3,
                child: CupertinoDatePicker(
                  initialDateTime: _selectedDate,
                  mode: CupertinoDatePickerMode.date,
                  maximumDate: now.leaveDateOnly(),
                  minimumDate:
                      now.copyWith(year: now.year - 120).leaveDateOnly(),
                  onDateTimeChanged: (value) => _selectedDate = value,
                ),
              ),
              const SizedBox(height: CommonDimensions.medium),
              Row(
                children: [
                  const Spacer(),
                  AvtovasButton.text(
                    buttonText: 'Готово',
                    onTap: () => Navigator.pop(context),
                  ),
                ],
              ),
              const SizedBox(height: CommonDimensions.medium),
            ],
          ),
        ),
      ),
    );
  }
}
