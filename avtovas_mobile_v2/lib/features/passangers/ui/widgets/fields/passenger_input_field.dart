import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../../../../shared/ui/ui_kit/widgets/input_fild/input_field.dart';

class QueuedValidator<T> {
  QueuedValidator({required this.validators});

  final List<FormFieldValidator<T>> validators;

  String? call(T? value) {
    for (final validator in validators) {
      final validationResult = validator(value);
      if (validationResult != null) {
        return validationResult;
      }
    }

    return null;
  }
}

final class PassengerValidatorInputField extends StatelessWidget {
  const PassengerValidatorInputField({
    required this.fieldTitle,
    this.controller,
    this.readOnly = false,
    this.isRequired = true,
    this.enabled,
    this.validator,
    this.onTap,
    this.onValueChanged,
    super.key,
    this.formatters,
    this.enableInteractiveSelection = true,
    this.hintText,
  });

  final bool isRequired;
  final FormFieldValidator<String>? validator;
  final TextEditingController? controller;
  final bool readOnly;
  final String? fieldTitle;
  final VoidCallback? onTap;
  final ValueChanged<String>? onValueChanged;
  final List<TextInputFormatter>? formatters;
  final bool? enabled;
  final bool enableInteractiveSelection;
  final String? hintText;

  @override
  Widget build(BuildContext context) {
    final validator = this.validator;
    const maxLines = 1;

    return InputField(
      hintText: hintText,
      enableInteractiveSelection: enableInteractiveSelection,
      enabled: enabled,
      maxLines: maxLines,
      controller: controller,
      autovalidateMode: AutovalidateMode.onUserInteraction,
      formatters: formatters,
      validator: QueuedValidator<String>(
        validators: [
          if (isRequired)
            (value) {
              if (value != null && value.isEmpty) {
                return 'Поле должно быть заполнено!';
              }

              return null;
            },
          if (validator != null) validator,
        ],
      ),
      readOnly: readOnly,
      fieldTitle: fieldTitle,
      onTap: onTap,
      onChanged: onValueChanged,
    );
  }
}
