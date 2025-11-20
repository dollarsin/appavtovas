import 'package:flutter/material.dart';

import '../../../../shared/ui/ui_kit/app_dimensions.dart';
import '../../../../shared/ui/ui_kit/app_fonts.dart';
import '../../../../shared/ui/ui_kit/avtovas_theme.dart';

class SearchableMenuSuggestionItem extends StatelessWidget {
  const SearchableMenuSuggestionItem({
    required this.name,
    required this.district,
    required this.region,
    super.key,
  });

  final String name;
  final String? district;
  final String? region;

  @override
  Widget build(BuildContext context) {
    final subTitleTextTheme = context.themeData.textTheme.titleMedium?.copyWith(
      fontWeight: AppFonts.weightRegular,
      color: context.theme.quaternaryTextColor,
    );
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: CommonDimensions.large),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(name),
          const SizedBox(height: CommonDimensions.extraSmall),
          if (district != null && region != null)
            Text('$district $region', style: subTitleTextTheme),
          if (district == null && region != null)
            Text('$region', style: subTitleTextTheme),
          if (district != null && region == null)
            Text('$district', style: subTitleTextTheme),
        ],
      ),
    );
  }
}
