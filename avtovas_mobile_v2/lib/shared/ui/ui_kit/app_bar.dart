import 'package:flutter/material.dart';

import 'app_fonts.dart';
import 'avtovas_theme.dart';

class AvtovasAppBar extends StatelessWidget implements PreferredSizeWidget {
  const AvtovasAppBar({this.title, super.key});

  final String? title;

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    final title = this.title;
    return ColoredBox(
      color: context.theme.mainAppColor,
      child: Builder(
        builder: (context) {
          return AppBar(
            surfaceTintColor: context.theme.transparent,
            backgroundColor: context.theme.mainAppColor,
            title:
                title != null
                    ? Text(
                      title,
                      style: context.themeData.textTheme.displaySmall?.copyWith(
                        color: context.theme.containerBackgroundColor,
                        fontWeight: AppFonts.weightRegular,
                        fontSize: AppFonts.appBarFontSize,
                      ),
                    )
                    : null,
          );
        },
      ),
    );
  }
}
