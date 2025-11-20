import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../../../../../shared/localization/localizations_ext.dart';
import '../../../../../../shared/utils/extensions.dart';
import '../../../../data/models/passanger_document/passenger_document_type.dart';
import '../passenger_input_field.dart';

class PassengerDocumentField extends StatefulWidget {
  const PassengerDocumentField({
    required this.controller,
    required this.onDocumentChanged,
    this.documentType,
    super.key,
  });

  final TextEditingController controller;
  final PassengerDocumentType? documentType;
  final ValueChanged<String> onDocumentChanged;

  @override
  State<PassengerDocumentField> createState() => _PassengerDocumentFieldState();
}

class _PassengerDocumentFieldState extends State<PassengerDocumentField> {
  _MaskInputFormatter? _formatter;

  @override
  void initState() {
    super.initState();
    final documentType = widget.documentType;
    if (documentType != null) {
      _formatter = _MaskInputFormatter(mask: documentType.mask);
    } else {
      _formatter = null;
    }
  }

  @override
  void didUpdateWidget(covariant PassengerDocumentField oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (widget.documentType?.mask != oldWidget.documentType?.mask) {
      _formatter = widget.documentType?.mask.let(
        (mask) => _MaskInputFormatter(mask: mask),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    final formatter = _formatter;
    return PassengerValidatorInputField(
      controller: widget.controller,
      fieldTitle: widget.documentType?.name ?? context.locale.number,
      hintText: widget.documentType?.hint,
      onValueChanged: (value) => widget.onDocumentChanged(value),
      formatters: [
        TextInputFormatter.withFunction(
          (oldValue, newValue) => TextEditingValue(
            text: newValue.text.toUpperCase(),
            selection: newValue.selection,
          ),
        ),
        if (formatter != null) formatter,
      ],
    );
  }
}

class _MaskInputFormatter implements TextInputFormatter {
  _MaskInputFormatter({required String mask, String? initialText})
    : mask = mask.replaceAll(RegExp('R+'), 'R'),
      filter = _buildRegexFilters(mask) {
    if (initialText != null) {
      _updateMask(TextEditingValue(text: initialText));
    }
  }

  final String mask;
  final Map<String, (RegExp, bool)> filter;

  String _maskedText = '';

  bool _isFilled = false;

  bool get isFilled => _isFilled;

  String get maskedText => _maskedText;

  @override
  TextEditingValue formatEditUpdate(
    TextEditingValue oldValue,
    TextEditingValue newValue,
  ) {
    return _updateMask(newValue);
  }

  TextEditingValue _updateMask(TextEditingValue newValue) {
    var tempText = newValue.text;
    var offset = newValue.selection.baseOffset;
    _maskedText = '';
    _isFilled = true;
    for (final c in mask.split('')) {
      final (rule, ruleSkippable) = filter[c]!;

      final match = rule.firstMatch(tempText);
      if (match != null) {
        _maskedText += match.group(0)!;
        tempText = tempText.replaceFirst(match.group(0)!, '');
      } else {
        if (ruleSkippable && tempText.isNotEmpty) {
          _maskedText += c;
          offset++;
        } else {
          _isFilled = false;
          break;
        }
      }
    }

    return TextEditingValue(
      text: _maskedText,
      selection: TextSelection.collapsed(
        offset: min(_maskedText.length, offset),
      ),
    );
  }
}

final _maskTable = {
  'R': (RegExp('([IVXLC1УХЛС]+)'), false),
  '*': (RegExp('.?'), false),
  '9': (RegExp(r'\d'), false),
  '0': (RegExp(r'\d?'), false),
  'U': (RegExp('[A-Z]'), false),
  'Б': (RegExp('[А-ЯETOPAHKXCBM]'), false),
};

Map<String, (RegExp, bool)> _buildRegexFilters(String mask) {
  final filters = <String, (RegExp, bool)>{};
  for (final c in mask.split('')) {
    filters[c] = _maskTable[c] ?? (RegExp(RegExp.escape(c)), true);
  }
  return filters;
}
