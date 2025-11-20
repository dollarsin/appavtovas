import 'package:flutter/material.dart';

import '../../../../shared/localization/localizations_ext.dart';
import '../../../../shared/ui/ui_kit/app_dimensions.dart';
import '../../../../shared/ui/ui_kit/widgets/animated_sized_box.dart';
import '../../../../shared/ui/ui_kit/widgets/avtovas_alert_dialog/avtovas_alert_dialog.dart';
import '../../../../shared/ui/ui_kit/widgets/avtovas_button/avtovas_button.dart';
import '../../../../shared/ui/ui_kit/widgets/avtovas_checkbox/avtovas_checkbox.dart';
import '../../../../shared/utils/date_time_extension.dart';
import '../../../../shared/utils/list_extension.dart';
import '../../data/models/citizenship/citizenship.dart';
import '../../data/models/passanger_document/passenger_document_type.dart';
import '../../data/models/passenger/passenger.dart';
import '../../domain/models/passenger_model.dart';
import 'fields/passanger_citezenship_field/passenger_citizenship_field.dart';
import 'fields/passanger_document_type_field/passenger_document_type_field.dart';
import 'fields/passenger_date_picker_field/passenger_date_picker_field.dart';
import 'fields/passenger_document_field/passenger_document_field.dart';
import 'fields/passenger_gender_field.dart';
import 'fields/passenger_input_field.dart';
import 'ticketing_container.dart';

final class PassengerContainer extends StatefulWidget {
  const PassengerContainer({
    required this.onDeleteTap,
    required this.onFirstNameChanged,
    required this.onLastNameChanged,
    required this.onPatronymicChanged,
    required this.onBirthdayDateChanged,
    required this.onDocumentTypeChanged,
    required this.onDocumentNumberChanged,
    required this.onGenderChanged,
    required this.passengerNotifier,
    required this.onSubmitTap,
    required this.onCitizenshipChanged,
    super.key,
  });

  final VoidCallback onDeleteTap;
  final VoidCallback onSubmitTap;
  final ValueChanged<String> onFirstNameChanged;
  final ValueChanged<String> onLastNameChanged;
  final ValueChanged<String?> onPatronymicChanged;
  final ValueChanged<DateTime> onBirthdayDateChanged;
  final ValueChanged<PassengerDocumentType> onDocumentTypeChanged;
  final ValueChanged<Citizenship> onCitizenshipChanged;
  final ValueChanged<String?> onDocumentNumberChanged;
  final ValueChanged<Gender> onGenderChanged;
  final ValueNotifier<PassengerModel> passengerNotifier;

  @override
  State<PassengerContainer> createState() => _PassengerContainerState();
}

class _PassengerContainerState extends State<PassengerContainer> {
  late final TextEditingController _firstNameController;
  late final TextEditingController _lastNameController;
  late final TextEditingController _surnameController;
  late final TextEditingController _dateController;
  late final TextEditingController _citizenshipController;
  late final TextEditingController _documentTypeController;
  late final TextEditingController _documentNumberController;
  late final PassengerModel initialPassenger;
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  void initState() {
    super.initState();

    initialPassenger = widget.passengerNotifier.value;

    _firstNameController = TextEditingController(
      text: initialPassenger.firstName,
    );
    _lastNameController = TextEditingController(
      text: initialPassenger.lastName,
    );
    _surnameController = TextEditingController(
      text: initialPassenger.patronymic,
    );
    _dateController = TextEditingController(
      text: initialPassenger.birthDate?.viewDateFormat(),
    );
    _citizenshipController = TextEditingController(
      text: initialPassenger.citizenship?.name,
    );
    _documentTypeController = TextEditingController(
      text: initialPassenger.documentType?.name,
    );
    _documentNumberController = TextEditingController(
      text: initialPassenger.documentNumber,
    );
  }

  Future<void> _showDialog(
    BuildContext context,
    String dialogTitle,
    VoidCallback action,
  ) {
    return showDialog(
      context: context,
      builder: (context) {
        return AvtovasAlertDialog(title: dialogTitle, okayCallback: action);
      },
    );
  }

  void _onSubmitTap() {
    final isValid = _formKey.currentState?.validate() ?? false;
    if (isValid) {
      widget.onSubmitTap.call();
    }
  }

  @override
  void dispose() {
    _firstNameController.dispose();
    _lastNameController.dispose();
    _surnameController.dispose();
    _documentNumberController.dispose();
    _dateController.dispose();
    _citizenshipController.dispose();
    _documentTypeController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return TicketingContainer(
      margin: const EdgeInsets.all(AppDimensions.large),
      child: Form(
        key: _formKey,
        child: Column(
          children: <Widget>[
            PassengerValidatorInputField(
              controller: _lastNameController,
              fieldTitle: context.locale.lastName,
              onValueChanged: (value) => widget.onFirstNameChanged(value),
            ),
            PassengerValidatorInputField(
              controller: _firstNameController,
              fieldTitle: context.locale.firstName,
              onValueChanged: (value) => widget.onLastNameChanged(value),
            ),
            AnimatedBuilder(
              animation: widget.passengerNotifier,
              builder: (context, child) {
                final passenger = widget.passengerNotifier.value;
                return AnimatedSizedBox(
                  toHeight:
                      passenger.patronymic == null ? AppDimensions.none : null,
                  child: PassengerValidatorInputField(
                    enabled: passenger.patronymic != null,
                    controller: _surnameController,
                    isRequired: false,
                    validator: (value) {
                      final patronymic = passenger.patronymic;
                      if (patronymic != null && patronymic.isEmpty) {
                        return 'Поле должно быть заполнено';
                      }

                      return null;
                    },
                    fieldTitle: context.locale.surname,
                    onValueChanged:
                        (value) => widget.onPatronymicChanged(value),
                  ),
                );
              },
            ),
            AnimatedBuilder(
              animation: widget.passengerNotifier,
              builder: (context, child) {
                final passenger = widget.passengerNotifier.value;
                return AvtovasCheckbox(
                  onChanged: (value) {
                    if (value ?? false) {
                      _surnameController.clear();
                      widget.onPatronymicChanged(null);
                    } else {
                      widget.onPatronymicChanged('');
                    }
                  },
                  value: passenger.patronymic == null,
                  checkboxText: context.locale.noSurname,
                );
              },
            ),
            PassengerGenderField(
              autovalidateMode: AutovalidateMode.onUserInteraction,
              initialValue: initialPassenger.gender,
              onChanged: (value) => widget.onGenderChanged(value),
              validator: (value) {
                if (value == null) {
                  return 'Поле должно быть заполнено';
                }

                return null;
              },
            ),
            PassengerDatePickerField(
              controller: _dateController,
              selectedDate: initialPassenger.birthDate,
              onChange: (value) => widget.onBirthdayDateChanged(value),
            ),
            AnimatedBuilder(
              animation: widget.passengerNotifier,
              builder: (context, child) {
                final passenger = widget.passengerNotifier.value;
                return PassengerCitizenshipField(
                  initialCitizenship: initialPassenger.citizenship,
                  selectedCitizenship: passenger.citizenship,
                  controller: _citizenshipController,
                  onCitizenshipChanged:
                      (value) => widget.onCitizenshipChanged(value),
                );
              },
            ),
            AnimatedBuilder(
              animation: widget.passengerNotifier,
              builder: (context, child) {
                final passenger = widget.passengerNotifier.value;
                return PassengerDocumentTypeField(
                  controller: _documentTypeController,
                  initialDocumentType: initialPassenger.documentType,
                  selectedDocumentType: passenger.documentType,
                  onDocumentTypeChanged: (value) {
                    widget.onDocumentTypeChanged(value);
                  },
                );
              },
            ),
            AnimatedBuilder(
              animation: widget.passengerNotifier,
              builder: (context, child) {
                final passenger = widget.passengerNotifier.value;

                return PassengerDocumentField(
                  controller: _documentNumberController,
                  onDocumentChanged: widget.onDocumentNumberChanged,
                  documentType: passenger.documentType,
                );
              },
            ),
            const SizedBox(height: AppDimensions.medium),
            AnimatedBuilder(
              animation: widget.passengerNotifier,
              builder: (context, child) {
                final passenger = widget.passengerNotifier.value;
                return Row(
                  children: [
                    ...switch (passenger) {
                      PassengerCreateModel() => [
                        Expanded(
                          child: AvtovasButton.text(
                            buttonText: 'Добавить',
                            onTap:
                                () => _showDialog(
                                  context,
                                  'Вы уверены, что хотите добавить этого пассажира?',
                                  _onSubmitTap,
                                ),
                            padding: const EdgeInsets.all(
                              AppDimensions.mediumLarge,
                            ),
                          ),
                        ),
                      ],
                      PassengerUpdateModel() => [
                        Expanded(
                          child: AvtovasButton.text(
                            buttonText: 'Удалить',
                            onTap:
                                () => _showDialog(
                                  context,
                                  'Вы уверены, что хотите удалить этого пассажира?',
                                  () => widget.onDeleteTap.call(),
                                ),
                            padding: const EdgeInsets.all(
                              AppDimensions.mediumLarge,
                            ),
                          ),
                        ),
                        const SizedBox(width: AppDimensions.medium),
                        Expanded(
                          child: AvtovasButton.text(
                            buttonText: 'Сохранить',
                            onTap:
                                () => _showDialog(
                                  context,
                                  'Вы уверены, что хотите изменить этого пассажира?',
                                  _onSubmitTap,
                                ),
                            padding: const EdgeInsets.all(
                              AppDimensions.mediumLarge,
                            ),
                          ),
                        ),
                      ],
                    },
                  ],
                );
              },
            ),
          ].insertBetween(const SizedBox(height: AppDimensions.medium)),
        ),
      ),
    );
  }
}
