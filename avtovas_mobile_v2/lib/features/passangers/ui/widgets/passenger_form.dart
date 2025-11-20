import 'package:flutter/material.dart';

import '../../domain/models/passenger_model.dart';
import 'passenger_container.dart';

class PassengerForm extends StatefulWidget {
  const PassengerForm({super.key});

  @override
  State<PassengerForm> createState() => _PassengerFormState();
}

// TODO(lmepol): Implement the PassengerForm widget
class _PassengerFormState extends State<PassengerForm> {
  final ValueNotifier<PassengerCreateModel> _passengerNotifier = ValueNotifier(
    const PassengerCreateModel(),
  );

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: PassengerContainer(
        onFirstNameChanged: (value) {
          _passengerNotifier.value = _passengerNotifier.value.copyWith(
            firstName: value,
          );
        },
        onLastNameChanged: (value) {
          _passengerNotifier.value = _passengerNotifier.value.copyWith(
            lastName: value,
          );
        },
        onPatronymicChanged: (value) {
          _passengerNotifier.value = _passengerNotifier.value.copyWith(
            patronymic: value,
          );
        },
        onBirthdayDateChanged: (value) {
          _passengerNotifier.value = _passengerNotifier.value.copyWith(
            birthDate: value,
          );
        },
        onDocumentTypeChanged: (value) {
          _passengerNotifier.value = _passengerNotifier.value.copyWith(
            documentType: value,
          );
        },
        onDocumentNumberChanged: (value) {
          _passengerNotifier.value = _passengerNotifier.value.copyWith(
            documentNumber: value,
          );
        },
        onGenderChanged: (value) {
          _passengerNotifier.value = _passengerNotifier.value.copyWith(
            gender: value,
          );
        },
        onCitizenshipChanged: (value) {
          _passengerNotifier.value = _passengerNotifier.value.copyWith(
            citizenship: value,
          );
        },
        onSubmitTap: () {},
        onDeleteTap: () {},
        passengerNotifier: _passengerNotifier,
      ),
    );
  }
}
