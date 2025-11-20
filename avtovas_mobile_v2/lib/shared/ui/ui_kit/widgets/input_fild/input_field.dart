import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../app_dimensions.dart';
import '../../app_fonts.dart';
import '../../avtovas_platform.dart';
import '../../avtovas_theme.dart';

final class InputField extends StatelessWidget {
  const InputField({
    this.hintText,
    this.keyboardType,
    this.validator,
    this.onChanged,
    this.controller,
    this.inputDecoration,
    this.onTap,
    this.readOnly,
    this.fieldTitle,
    this.formatters,
    this.focusNode,
    this.textCapitalization = TextCapitalization.sentences,
    this.minLines = CommonDimensions.defaultMinLines,
    this.maxLines = CommonDimensions.defaultMaxLines,
    this.initialValue,
    this.enableInteractiveSelection = true,
    this.autovalidateMode = AutovalidateMode.disabled,
    super.key,
    this.enabled,
  });

  final bool? enabled;

  final FormFieldValidator<String?>? validator;

  final String? hintText;

  // By default , value of {onChanged} is [null]
  final ValueChanged<String>? onChanged;

  // By default , value of {controller} is [null]
  final TextEditingController? controller;

  // By default, value of {fieldTitle} is [null]
  final String? fieldTitle;

  final VoidCallback? onTap;

  /// By default, the value of {focusNode} is [null]
  final FocusNode? focusNode;

  final bool? readOnly;

  /// By default, the value of {textCapitalization} is [TextCapitalization.sentences]
  final TextCapitalization textCapitalization;

  /// By default, the value of {minLines} is [1]
  final int minLines;

  final InputDecoration? inputDecoration;

  final TextInputType? keyboardType;

  /// By default, the value of {maxLines} is [2]
  final int maxLines;

  final String? initialValue;

  final List<TextInputFormatter>? formatters;

  final bool enableInteractiveSelection;

  final AutovalidateMode autovalidateMode;

  @override
  Widget build(BuildContext context) {
    final colorPath = context.theme;
    final themePath = context.themeData.textTheme;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (fieldTitle != null)
          Padding(
            padding: const EdgeInsets.only(bottom: CommonDimensions.extraSmall),
            child: Text(
              '$fieldTitle',
              style: themePath.titleSmall?.copyWith(
                color: context.theme.secondaryTextColor,
              ),
            ),
          ),
        TextFormField(
          enabled: enabled,
          enableInteractiveSelection: enableInteractiveSelection,
          autovalidateMode: autovalidateMode,
          initialValue: initialValue,
          onTap: onTap,
          readOnly: readOnly ?? false,
          minLines: minLines,
          maxLines: maxLines,
          keyboardType: keyboardType,
          inputFormatters: formatters,
          textCapitalization: textCapitalization,
          style: themePath.headlineMedium?.copyWith(
            color: colorPath.secondaryTextColor,
            fontWeight: AppFonts.weightRegular,
          ),
          controller: controller,
          validator: validator,
          cursorColor: colorPath.mainAppColor,
          focusNode: focusNode,
          decoration:
              inputDecoration ??
              InputDecoration(
                contentPadding: const EdgeInsets.symmetric(
                  vertical: CommonDimensions.medium,
                  horizontal: CommonDimensions.large,
                ),
                filled: true,
                fillColor: colorPath.containerBackgroundColor,
                border: InputBorder.none,
                enabledBorder: OutlineInputBorder(
                  borderSide:
                      AvtovasPlatform.isWeb
                          ? BorderSide(color: colorPath.assistiveTextColor)
                          : BorderSide(
                            color: colorPath.containerBackgroundColor,
                          ),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide:
                      AvtovasPlatform.isWeb
                          ? BorderSide(color: colorPath.assistiveTextColor)
                          : BorderSide(
                            color: colorPath.containerBackgroundColor,
                          ),
                ),
                errorBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: colorPath.errorColor),
                ),
                hintText: hintText,
                hintStyle: themePath.titleLarge?.copyWith(
                  color: context.theme.assistiveTextColor,
                  height: AppFonts.sizeFactorLarge,
                ),
              ),
          onChanged: onChanged,
        ),
      ],
    );
  }
}
