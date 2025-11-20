import 'package:country_code_picker/country_code_picker.dart';
import 'package:flutter/material.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

import '../../../../localization/localizations_ext.dart';
import '../../app_dimensions.dart';
import '../../app_fonts.dart';
import '../../avtovas_theme.dart';
import '../input_fild/input_field.dart';
import 'models/country_code_model.dart';

final class PhoneInputField extends StatefulWidget {
  const PhoneInputField({
    required this.onPhoneChanged,
    required this.countryCodes,
    required this.onCountryCodeChanged,
    required this.countryCode,
    super.key,
  });

  final ValueChanged<String> onPhoneChanged;
  final ValueChanged<CountryCodeModel> onCountryCodeChanged;
  final List<CountryCodeModel> countryCodes;
  final CountryCodeModel countryCode;

  @override
  State<PhoneInputField> createState() => _PhoneInputFieldState();
}

class _PhoneInputFieldState extends State<PhoneInputField> {
  late Map<String, CountryCodeModel> _countryCodesTable;
  late MaskTextInputFormatter _formatter;

  @override
  void initState() {
    super.initState();
    _countryCodesTable = Map.fromEntries(
      widget.countryCodes.map(
        (countryCode) => MapEntry(countryCode.dialCode, countryCode),
      ),
    );
    _formatter = MaskTextInputFormatter(
      mask: widget.countryCode.formatter.mask,
      filter: widget.countryCode.formatter.filters.map(
        (key, value) => MapEntry(key, RegExp(value)),
      ),
    );
  }

  @override
  void didUpdateWidget(covariant PhoneInputField oldWidget) {
    if (oldWidget.countryCodes != widget.countryCodes) {
      _countryCodesTable = Map.fromEntries(
        widget.countryCodes.map(
          (countryCode) => MapEntry(countryCode.dialCode, countryCode),
        ),
      );
    }

    if (oldWidget.countryCode != widget.countryCode) {
      _formatter = MaskTextInputFormatter(
        mask: widget.countryCode.formatter.mask,
        filter: widget.countryCode.formatter.filters.map(
          (key, value) => MapEntry(key, RegExp(value)),
        ),
      );
    }

    super.didUpdateWidget(oldWidget);
  }

  @override
  Widget build(BuildContext context) {
    return InputField(
      onChanged: (value) {
        widget.onPhoneChanged(_formatter.getUnmaskedText());
      },
      formatters: [_formatter],
      keyboardType: TextInputType.phone,
      maxLines: 1,
      inputDecoration: InputDecoration(
        prefixIcon: CountryCodePicker(
          countryList: _toCountryList(widget.countryCodes),
          textStyle: context.themeData.textTheme.headlineMedium?.copyWith(
            color: context.theme.secondaryTextColor,
            fontWeight: AppFonts.weightRegular,
          ),
          searchDecoration: InputDecoration(
            border: const OutlineInputBorder(),
            hintText: context.locale.search,
            contentPadding: const EdgeInsets.all(CommonDimensions.medium),
          ),
          initialSelection: context.locale.localeName,
          onChanged: (code) {
            final countryCode = _countryCodesTable[code.dialCode];
            if (countryCode != null) {
              widget.onCountryCodeChanged(countryCode);
            }
          },
        ),
        contentPadding: const EdgeInsets.symmetric(
          vertical: CommonDimensions.medium,
          horizontal: CommonDimensions.large,
        ),
        hintText: widget.countryCode.phoneHint,
        enabledBorder: const OutlineInputBorder(),
        border: const OutlineInputBorder(),
      ),
    );
  }

  List<Map<String, String>> _toCountryList(
    List<CountryCodeModel> countryCodes,
  ) {
    return countryCodes.map((e) {
      final a = e.toJson();

      return a.map((key, value) => MapEntry(key, value.toString()));
    }).toList();
  }
}
