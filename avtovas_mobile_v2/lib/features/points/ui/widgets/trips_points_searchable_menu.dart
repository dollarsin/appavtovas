import 'package:flutter/material.dart';

import '../../../../shared/ui/ui_kit/app_dimensions.dart';
import '../../../../shared/ui/ui_kit/app_fonts.dart';
import '../../../../shared/ui/ui_kit/avtovas_theme.dart';
import '../../../../shared/ui/ui_kit/widgets/base_shimmer/base_shimmer.dart';
import '../../../../shared/ui/ui_kit/widgets/easy_autocomplete/easy_auto_complete.dart';
import '../../data/models/points_list/trip_point.dart';
import 'searchable_menu_suggestion_item.dart';

class TripPointsSearchableMenu extends StatefulWidget {
  const TripPointsSearchableMenu({
    required this.controller,
    required this.items,
    required this.onItemTap,
    required this.isLoading,
    this.onChanged,
    this.onSubmitted,
    this.focusNode,
    this.hintText,
    super.key,
  });

  final List<TripPoint> items;
  final bool isLoading;
  final ValueChanged<TripPoint> onItemTap;
  final TextEditingController controller;
  final FocusNode? focusNode;
  final ValueChanged<String>? onChanged;
  final ValueChanged<String>? onSubmitted;
  final String? hintText;

  @override
  State<TripPointsSearchableMenu> createState() =>
      _TripPointsSearchableMenuState();
}

class _TripPointsSearchableMenuState extends State<TripPointsSearchableMenu> {
  @override
  Widget build(BuildContext context) {
    final colorPath = context.theme;
    final themeStyle = context.themeData.textTheme.headlineMedium!.copyWith(
      fontWeight: AppFonts.weightRegular,
      color: colorPath.secondaryTextColor,
    );

    return EasyAutocomplete(
      items: widget.items,
      isLoading: widget.isLoading,
      itemBuilder:
          (context, item) => DropdownMenuItem<void>(
            child: SearchableMenuSuggestionItem(
              name: item.name,
              district: item.district,
              region: item.region,
            ),
          ),
      focusNode: widget.focusNode,
      controller: widget.controller,
      cursorColor: colorPath.mainAppColor,
      inputTextStyle: themeStyle,
      onSubmitted: (wok) => widget.onSubmitted?.call(wok),
      hintText: widget.hintText,
      onChanged: (char) => widget.onChanged?.call(char),
      getSelectedItemText: (item) => item.name,
      progressIndicatorBuilder: (context) => const _ProgressIndicatorBuilder(),
      onItemSelected: (value) => widget.onItemTap(value),
      placeholderBuilder: (context) => const _PlaceholderBuilder(),
    );
  }
}

class _PlaceholderBuilder extends StatelessWidget {
  const _PlaceholderBuilder();

  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      height: 150,
      child: Center(child: Text('Ничего не\u{00A0}найдено')),
    );
  }
}

class _ProgressIndicatorBuilder extends StatelessWidget {
  const _ProgressIndicatorBuilder();

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _ProgressIndicatorBuilderShimmerItem(),
            SizedBox(height: CommonDimensions.large),
            _ProgressIndicatorBuilderShimmerItem(),
            SizedBox(height: CommonDimensions.large),
            _ProgressIndicatorBuilderShimmerItem(),
          ],
        ),
      ],
    );
  }
}

class _ProgressIndicatorBuilderShimmerItem extends StatelessWidget {
  const _ProgressIndicatorBuilderShimmerItem();

  @override
  Widget build(BuildContext context) {
    const smallShimmerHeight = 14.0;
    const bigShimmerHeight = 12.0;
    const smallShimmerWidth = 120.0;
    const bigShimmerWidth = 160.0;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        BaseShimmer(
          margin: const EdgeInsets.symmetric(
            horizontal: CommonDimensions.medium,
          ),
          baseColor: context.theme.darkShimmerColor,
          radius: CommonDimensions.extraSmall,
          shimmerHeight: smallShimmerHeight,
          shimmerWidth: smallShimmerWidth,
        ),
        const SizedBox(height: CommonDimensions.medium),
        const BaseShimmer(
          margin: EdgeInsets.symmetric(horizontal: CommonDimensions.medium),
          radius: CommonDimensions.extraSmall,
          shimmerHeight: bigShimmerHeight,
          shimmerWidth: bigShimmerWidth,
        ),
      ],
    );
  }
}
