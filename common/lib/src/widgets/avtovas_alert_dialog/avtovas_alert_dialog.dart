import 'package:common/avtovas_common.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AvtovasAlertDialog extends StatelessWidget {
  final String? title;
  final String? acceptText;
  final String? cancelText;
  final TextStyle? titleTextStyle;
  final VoidCallback? okayCallback;
  final VoidCallback? cancelCallback;
  final Widget? widget;
  final List<Widget>? actions;
  final bool withCancel;
  final bool shouldCloseOnOkTap;

  const AvtovasAlertDialog({
    this.title,
    this.acceptText,
    this.cancelText,
    this.titleTextStyle,
    this.okayCallback,
    this.cancelCallback,
    this.widget,
    this.actions,
    this.withCancel = true,
    this.shouldCloseOnOkTap = true,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: context.themeData.copyWith(
        colorScheme: ColorScheme.light(
          primary: context.theme.containerBackgroundColor,
        ),
      ),
      child: CupertinoAlertDialog(
        title: title != null
            ? Text(
                title!,
                style: titleTextStyle ??
                    context.themeData.textTheme.headlineMedium?.copyWith(
                      fontWeight: CommonFonts.weightRegular,
                    ),
              )
            : null,
        content: widget,
        actions: actions ??
            [
              if (withCancel)
                GestureDetector(
                  behavior: HitTestBehavior.translucent,
                  onTap: cancelCallback ?? () => Navigator.of(context).pop(),
                  child: Center(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                        vertical: CommonDimensions.mediumLarge,
                      ),
                      child: Text(
                        cancelText ?? context.locale.cancel.toUpperCase(),
                        style:
                            context.themeData.textTheme.headlineSmall?.copyWith(
                          color: context.theme.mainAppColor,
                        ),
                      ),
                    ),
                  ),
                ),
              GestureDetector(
                behavior: HitTestBehavior.translucent,
                onTap: () {
                  if (shouldCloseOnOkTap) Navigator.pop(context);
                  okayCallback?.call();
                },
                child: Center(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                      vertical: CommonDimensions.mediumLarge,
                    ),
                    child: Text(
                      acceptText ?? context.locale.ok,
                      style:
                          context.themeData.textTheme.headlineSmall?.copyWith(
                        color: context.theme.mainAppColor,
                      ),
                    ),
                  ),
                ),
              ),
            ],
      ),
    );
  }
}
