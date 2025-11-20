import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:pinput/pinput.dart';

import '../../../../shared/ui/ui_kit/app_dimensions.dart';
import '../../../../shared/ui/ui_kit/avtovas_theme.dart';

final class CodeAuthenticator extends StatefulWidget {
  const CodeAuthenticator({
    required this.forceErrorState,
    this.controller,
    this.onCompleted,
    this.onChanged,
    this.onSubmitted,
    super.key,
  });

  final TextEditingController? controller;

  /// Fires when user completes pin input
  final ValueChanged<String>? onCompleted;

  /// Called every time input value changes.
  final ValueChanged<String>? onChanged;

  /// See [EditableText.onSubmitted]
  final ValueChanged<String>? onSubmitted;

  final bool forceErrorState;

  @override
  State<CodeAuthenticator> createState() => _CodeAuthenticatorState();
}

class _CodeAuthenticatorState extends State<CodeAuthenticator> {
  late final FocusNode _focusNode = FocusNode();

  @override
  void initState() {
    super.initState();
    _focusNode.requestFocus();
  }

  @override
  Widget build(BuildContext context) {
    final defaultTheme = PinTheme(
      margin: const EdgeInsets.symmetric(horizontal: CommonDimensions.small),
      width: CommonDimensions.codeFieldSize,
      height: CommonDimensions.codeFieldSize,
      decoration: BoxDecoration(
        color: context.theme.codeFieldColor,
        borderRadius: const BorderRadius.all(
          Radius.circular(CommonDimensions.medium),
        ),
      ),
    );

    final errorTheme = defaultTheme.copyWith(
      decoration: defaultTheme.decoration?.copyWith(
        border: Border.fromBorderSide(
          BorderSide(color: context.theme.errorColor),
        ),
      ),
    );
    return Pinput(
      forceErrorState: widget.forceErrorState,
      defaultPinTheme: defaultTheme,
      errorPinTheme: errorTheme,
      focusNode: _focusNode,
      onCompleted: widget.onCompleted,
      onChanged: widget.onChanged,
      onSubmitted: widget.onSubmitted,
      separatorBuilder: (_) => const SizedBox(width: CommonDimensions.medium),
      inputFormatters: [FilteringTextInputFormatter.digitsOnly],
    );
  }

  @override
  void dispose() {
    _focusNode.dispose();
    super.dispose();
  }
}
