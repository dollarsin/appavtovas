import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../../localization/localizations_ext.dart';
import '../../app_dimensions.dart';
import '../../app_fonts.dart';
import '../../avtovas_theme.dart';
import '../input_fild/input_field.dart';
import '../vector_image/avtovas_vector_image.dart';
import 'selectable_menu_item.dart';

class SelectableMenu<T> extends StatelessWidget {
  const SelectableMenu({
    required this.currentLabel,
    required this.svgAssetPath,
    required this.backgroundColor,
    required this.menuItems,
    this.isScrollable,
    this.fieldTitle,
    this.onSearchChanged,
    super.key,
  });

  final String? fieldTitle;
  final ValueChanged<String>? onSearchChanged;
  final String currentLabel;
  final String svgAssetPath;
  final Color backgroundColor;
  final List<SelectableMenuItem<T>> menuItems;
  final bool? isScrollable;

  void _showDialog(BuildContext context) {
    showCupertinoDialog<void>(
      context: context,
      builder:
          (context) => _DialogContent(
            menuItems: menuItems,
            onSearchChanged: onSearchChanged,
            isScrollable: isScrollable,
          ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (fieldTitle != null) ...[
          Text(
            fieldTitle!,
            style: context.themeData.textTheme.titleSmall?.copyWith(
              color: context.theme.secondaryTextColor,
            ),
          ),
          const SizedBox(height: AppDimensions.extraSmall),
        ],
        InkWell(
          onTap: () => _showDialog(context),
          child: Container(
            width: double.infinity,
            padding: const EdgeInsets.all(AppDimensions.large),
            decoration: BoxDecoration(
              color: backgroundColor,
              borderRadius: const BorderRadius.all(
                Radius.circular(AppDimensions.medium),
              ),
            ),
            child: Row(
              children: [
                Text(
                  currentLabel,
                  style: context.themeData.textTheme.headlineSmall?.copyWith(
                    fontWeight: AppFonts.weightRegular,
                  ),
                ),
                const Spacer(),
                AvtovasVectorImage(svgAssetPath: svgAssetPath),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

final class _DialogContent<T> extends StatefulWidget {
  const _DialogContent({
    required this.menuItems,
    this.onSearchChanged,
    this.isScrollable,
  });

  final List<SelectableMenuItem<T>> menuItems;
  final ValueChanged<String>? onSearchChanged;
  final bool? isScrollable;

  @override
  State<_DialogContent<T>> createState() => _DialogContentState<T>();
}

class _DialogContentState<T> extends State<_DialogContent<T>> {
  late List<SelectableMenuItem<T>> _menuItems;

  @override
  void initState() {
    super.initState();

    _menuItems = widget.menuItems;
  }

  @override
  Widget build(BuildContext context) {
    const lengthForScrolling = 10;

    return Theme(
      data: context.themeData.copyWith(
        colorScheme: ColorScheme.dark(
          primary: context.theme.containerBackgroundColor,
        ),
      ),
      child: AlertDialog(
        content:
            widget.isScrollable ?? _menuItems.length > lengthForScrolling
                ? SizedBox(
                  width: double.maxFinite,
                  child: Column(
                    children: [
                      InputField(
                        hintText: context.locale.search,
                        onChanged: (value) {
                          setState(() {
                            _menuItems =
                                value.isEmpty
                                    ? widget.menuItems
                                    : widget.menuItems
                                        .where(
                                          (item) => item.itemLabel
                                              .toLowerCase()
                                              .contains(value.toLowerCase()),
                                        )
                                        .toList();
                          });
                        },
                      ),
                      Divider(color: context.theme.dividerColor),
                      Expanded(
                        child: ListView.builder(
                          itemCount: _menuItems.length,
                          itemBuilder: (_, index) {
                            return _menuItems[index];
                          },
                        ),
                      ),
                    ],
                  ),
                )
                : Column(
                  mainAxisSize: MainAxisSize.min,
                  children: widget.menuItems,
                ),
      ),
    );
  }
}
