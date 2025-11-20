import 'package:flutter/material.dart';

import '../../../../shared/localization/localizations_ext.dart';
import '../../../../shared/ui/ui_kit/app_assets.dart';
import '../../../../shared/ui/ui_kit/avtovas_theme.dart';
import '../../../../shared/ui/ui_kit/widgets/selectable_menu/selectable_menu.dart';
import '../../../../shared/ui/ui_kit/widgets/selectable_menu/selectable_menu_item.dart';
import '../../domain/models/tours_sort_options.dart';

class ToursSortOptionsSelector extends StatelessWidget {
  const ToursSortOptionsSelector({
    required this.selectedOption,
    required this.onSortOptionChanged,
    super.key,
  });
  final ToursSortOptions selectedOption;
  final ValueChanged<ToursSortOptions> onSortOptionChanged;

  String _getSortOptionLabel(
    BuildContext context,
    ToursSortOptions sortOption,
  ) => switch (sortOption) {
    ToursSortOptions.byPrice => context.locale.sortByPrice,
    ToursSortOptions.byTime => context.locale.sortByTime,
  };

  @override
  Widget build(BuildContext context) {
    return SelectableMenu<ToursSortOptions>(
      currentLabel: _getSortOptionLabel(context, selectedOption),
      svgAssetPath: AppAssets.downArrowIcon,
      backgroundColor: context.theme.detailsBackgroundColor,
      menuItems: [
        for (final sortOption in ToursSortOptions.values)
          SelectableMenuItem<ToursSortOptions>(
            itemLabel: _getSortOptionLabel(context, sortOption),
            currentValue: selectedOption,
            itemValue: sortOption,
            onTap: () => onSortOptionChanged(sortOption),
            onChanged: (value) => onSortOptionChanged,
          ),
      ],
    );
  }
}
