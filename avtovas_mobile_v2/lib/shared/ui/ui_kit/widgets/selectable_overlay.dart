import 'package:flutter/material.dart';

import '../../../localization/localizations_ext.dart';
import '../app_assets.dart';
import '../app_dimensions.dart';
import '../app_fonts.dart';
import '../avtovas_theme.dart';
import 'avtovas_checkbox/avtovas_checkbox.dart';
import 'base_shimmer/base_shimmer.dart';
import 'input_fild/input_field.dart';
import 'vector_button/avtovas_vector_button.dart';

final class SelectableOverlay extends StatelessWidget {
  const SelectableOverlay({
    required this.items,
    required this.onQueryChanged,
    this.withCloseButton = false,
    this.withSearchField = false,
    this.separatedIndex,
    this.needScroll = false,
    this.initialQuery = '',
    super.key,
  });

  final List<Widget> items;
  final ValueChanged<String> onQueryChanged;
  final bool needScroll;
  final bool withCloseButton;
  final bool withSearchField;
  final int? separatedIndex;
  final String initialQuery;

  @override
  Widget build(BuildContext context) {
    final bottomInsets = MediaQuery.viewInsetsOf(context).bottom;

    final overlay = Column(
      children: [
        Row(
          children: [
            if (withCloseButton)
              AvtovasVectorButton(
                onTap:
                    () =>
                        Navigator.canPop(context)
                            ? Navigator.pop(context)
                            : throw Exception(
                              'This action is related to the Navigator, '
                              'the window must use any overlay to display '
                              'and have a path in the navigator context.',
                            ),
                svgAssetPath: AppAssets.crossIcon,
              ),
          ],
        ),
        const SizedBox(height: CommonDimensions.large),
        if (needScroll)
          Expanded(
            child: Theme(
              data: context.themeData.copyWith(
                scrollbarTheme: ScrollbarThemeData(
                  thumbVisibility: WidgetStateProperty.all(true),
                  thumbColor: WidgetStateProperty.all(
                    context.theme.mainAppColor,
                  ),
                  crossAxisMargin: -10,
                ),
              ),
              child: ListView.separated(
                padding: EdgeInsets.zero,
                shrinkWrap: true,
                itemCount: items.length,
                separatorBuilder: (context, index) {
                  if (separatedIndex != null && index == separatedIndex) {
                    return const Divider();
                  }

                  return const SizedBox();
                },
                itemBuilder: (_, index) {
                  return items[index];
                },
              ),
            ),
          )
        else
          Column(mainAxisSize: MainAxisSize.min, children: items),
        if (withSearchField) ...[
          const SizedBox(height: CommonDimensions.large),
          Padding(
            padding: EdgeInsets.only(
              bottom:
                  bottomInsets >= CommonDimensions.mediumLarge
                      ? bottomInsets - CommonDimensions.mediumLarge
                      : CommonDimensions.none,
            ),
            child: InputField(
              initialValue: initialQuery,
              onChanged: onQueryChanged,
              inputDecoration: InputDecoration(
                contentPadding: const EdgeInsets.all(CommonDimensions.medium),
                border: const OutlineInputBorder(),
                hintText: context.locale.search,
              ),
            ),
          ),
        ],
      ],
    );

    return needScroll ? Expanded(child: overlay) : overlay;
  }
}

final class SelectableOverlayItem extends StatelessWidget {
  const SelectableOverlayItem({
    required this.onItemTap,
    required this.itemLabel,
    required this.isSelected,
    super.key,
  });

  final VoidCallback onItemTap;
  final String itemLabel;
  final bool isSelected;

  @override
  Widget build(BuildContext context) {
    return Material(
      color: context.theme.transparent,
      child: InkWell(
        onTap: () {
          onItemTap();
          Navigator.canPop(context)
              ? Navigator.pop(context)
              : throw Exception(
                'This action is related to the Navigator, '
                'the window must use any overlay to display '
                'and have a path in the navigator context.',
              );
        },
        borderRadius: const BorderRadius.all(
          Radius.circular(CommonDimensions.medium),
        ),
        child: Padding(
          padding: const EdgeInsets.all(CommonDimensions.large),
          child: Row(
            children: [
              Expanded(
                child: Text(
                  itemLabel,
                  style: context.themeData.textTheme.titleLarge?.copyWith(
                    fontSize: AppFonts.sizeHeadlineMedium,
                  ),
                ),
              ),
              const SizedBox(width: CommonDimensions.medium),
              AvtovasCheckbox(onChanged: (_) => onItemTap(), value: isSelected),
            ],
          ),
        ),
      ),
    );
  }
}

final class SelectableOverlayItemPlaceholder extends StatelessWidget {
  const SelectableOverlayItemPlaceholder({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      color: context.theme.transparent,
      child: const InkWell(
        borderRadius: BorderRadius.all(
          Radius.circular(CommonDimensions.medium),
        ),
        child: Padding(
          padding: EdgeInsets.all(CommonDimensions.large),
          child: Row(
            children: [
              Expanded(
                child: BaseShimmer(
                  margin: EdgeInsets.symmetric(
                    horizontal: CommonDimensions.medium,
                  ),
                  radius: CommonDimensions.extraSmall,
                  shimmerHeight: CommonDimensions.mediumLarge,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
