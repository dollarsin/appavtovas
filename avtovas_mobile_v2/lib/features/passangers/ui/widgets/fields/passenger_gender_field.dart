import 'package:flutter/material.dart';

import '../../../../../shared/localization/localizations_ext.dart';
import '../../../../../shared/ui/ui_kit/app_dimensions.dart';
import '../../../../../shared/ui/ui_kit/avtovas_theme.dart';
import '../../../data/models/passenger/passenger.dart';

final class PassengerGenderField extends FormField<Gender> {
  PassengerGenderField({
    required super.initialValue,
    void Function(Gender value)? onChanged,
    super.enabled,
    super.validator,
    super.autovalidateMode,
    super.forceErrorText,
    super.restorationId,
    super.key,
  }) : super(
         builder:
             (state) => Column(
               crossAxisAlignment: CrossAxisAlignment.start,
               mainAxisSize: MainAxisSize.min,
               children: [
                 Text(state.context.locale.gender),
                 const SizedBox(height: CommonDimensions.small),
                 Row(
                   children: [
                     Expanded(
                       child: _SwitcherElement(
                         onGenderChanged: (gender) {
                           state.didChange(gender);
                           onChanged?.call(gender);
                         },
                         selectedGender: state.value,
                         gender: Gender.male,
                         isError: state.hasError,
                       ),
                     ),
                     const SizedBox(width: CommonDimensions.medium),
                     Expanded(
                       child: _SwitcherElement(
                         onGenderChanged: (gender) {
                           state.didChange(gender);
                           onChanged?.call(gender);
                         },
                         selectedGender: state.value,
                         gender: Gender.female,
                         isError: state.hasError,
                       ),
                     ),
                   ],
                 ),
               ],
             ),
       );
}

final class _SwitcherElement extends StatefulWidget {
  const _SwitcherElement({
    required this.onGenderChanged,
    required this.selectedGender,
    required this.gender,
    required this.isError,
  });
  final ValueChanged<Gender> onGenderChanged;
  final Gender? selectedGender;
  final Gender gender;
  final bool isError;

  @override
  State<_SwitcherElement> createState() => _SwitcherElementState();
}

class _SwitcherElementState extends State<_SwitcherElement> {
  String _genderByType(BuildContext context) => switch (widget.gender) {
    Gender.male => context.locale.male,
    Gender.female => context.locale.female,
  };

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => widget.onGenderChanged(widget.gender),
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 200),
        curve: Curves.fastOutSlowIn,
        padding: const EdgeInsets.symmetric(
          horizontal: CommonDimensions.extraLarge,
          vertical: CommonDimensions.large,
        ),
        decoration: BoxDecoration(
          border:
              widget.isError
                  ? Border.fromBorderSide(
                    BorderSide(color: context.theme.errorColor),
                  )
                  : null,
          color:
              widget.selectedGender == widget.gender
                  ? const Color(0xFFDADADA)
                  : context.theme.containerBackgroundColor,
          borderRadius: const BorderRadius.all(
            Radius.circular(CommonDimensions.medium),
          ),
        ),
        child: Center(child: Text(_genderByType(context))),
      ),
    );
  }
}
