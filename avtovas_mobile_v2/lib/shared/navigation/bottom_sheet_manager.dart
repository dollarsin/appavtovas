import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../ui/ui_kit/app_assets.dart';
import '../ui/ui_kit/app_dimensions.dart';
import '../ui/ui_kit/avtovas_platform.dart';
import '../ui/ui_kit/avtovas_theme.dart';
import '../ui/ui_kit/widgets/vector_button/avtovas_vector_button.dart';

final class BottomSheetHelper {
  const BottomSheetHelper._();

  static Future<void> showBottomSheet(
    BuildContext context, {
    required WidgetBuilder builder,
    BoxConstraints? constraints,
    String? sheetTitle,
    TextStyle? titleStyle,
    bool useCloseButton = true,
    bool useRootNavigator = false,
    Color barrierColor = kCupertinoModalBarrierColor,
  }) async {
    final sheetBody = Builder(
      builder: (context) {
        return Material(
          borderRadius: const BorderRadius.all(
            Radius.circular(CommonDimensions.large),
          ),
          child: SizedBox(
            width: MediaQuery.sizeOf(context).width,
            child: Padding(
              padding: const EdgeInsets.all(CommonDimensions.large),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  if (sheetTitle != null || useCloseButton) ...[
                    Row(
                      children: [
                        if (sheetTitle != null)
                          Text(
                            sheetTitle,
                            style:
                                titleStyle ??
                                context.themeData.textTheme.displaySmall,
                          ),
                        const Spacer(),
                        if (useCloseButton)
                          AvtovasVectorButton(
                            onTap:
                                () =>
                                    Navigator.canPop(context)
                                        ? Navigator.pop(context)
                                        : throw Exception(),
                            svgAssetPath: AppAssets.crossIcon,
                          ),
                      ],
                    ),
                    const SizedBox(height: CommonDimensions.medium),
                  ],
                  Builder(
                    builder: (context) {
                      return builder(context);
                    },
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
    final availableWidth = MediaQuery.sizeOf(context).width;

    return showModalBottomSheet(
      context: context,
      constraints:
          AvtovasPlatform.isWeb
              ? constraints ??
                  BoxConstraints(
                    maxWidth:
                        availableWidth >= 1000
                            ? availableWidth * 0.7
                            : availableWidth * 0.95,
                    maxHeight: MediaQuery.sizeOf(context).height * 0.7,
                  )
              : constraints,
      backgroundColor: context.theme.transparent,
      useRootNavigator: useRootNavigator,
      barrierColor: barrierColor,
      builder: (_) {
        Widget result = sheetBody;

        if (AvtovasPlatform.isWeb) {
          result = Padding(
            padding: const EdgeInsets.only(bottom: CommonDimensions.large),
            child: result,
          );
        } else {
          result = Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: CommonDimensions.large,
              vertical: CommonDimensions.extraLarge,
            ),
            child: result,
          );
        }

        return result;
      },
    );
  }
}
