import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../../../shared/ui/ui_kit/widgets/selectable_overlay.dart';
import '../../../../data/models/citizenship/citizenship.dart';
import '../../../../shared/passenger_citezenship_providers.dart';

typedef _Providers = PassengerCitizenshipProviders;

final class PassengerCitizenshipSheet extends ConsumerStatefulWidget {
  const PassengerCitizenshipSheet({
    required this.onCitizenshipChanged,
    required this.selectedCitizenship,
    super.key,
  });

  final ValueChanged<Citizenship> onCitizenshipChanged;
  final Citizenship? selectedCitizenship;

  @override
  ConsumerState<PassengerCitizenshipSheet> createState() =>
      _PassengerCitizenshipSheetState();
}

class _PassengerCitizenshipSheetState
    extends ConsumerState<PassengerCitizenshipSheet> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final manager = ref.watch(
      _Providers.citizenshipsListManagerProvider.notifier,
    );
    final isLoading = ref.watch(
      _Providers.citizenshipsListManagerProvider.select(
        (value) => value.isLoading,
      ),
    );

    final citizenships = ref.watch(
      _Providers.citizenshipsListManagerProvider.select(
        (state) => state.data?.citizenships ?? [],
      ),
    );

    final initialQuery = ref.read(
      _Providers.citizenshipsListManagerProvider.select(
        (state) => state.data?.query ?? '',
      ),
    );

    return SelectableOverlay(
      onQueryChanged: manager.onQueryUpdate,
      separatedIndex: 8,
      needScroll: true,
      items: [
        if (isLoading) ...[
          const SelectableOverlayItemPlaceholder(),
          const SelectableOverlayItemPlaceholder(),
          const SelectableOverlayItemPlaceholder(),
        ] else
          for (final citizenship in citizenships)
            SelectableOverlayItem(
              onItemTap: () => widget.onCitizenshipChanged(citizenship),
              itemLabel: citizenship.name,
              isSelected: widget.selectedCitizenship?.id == citizenship.id,
            ),
      ],
      initialQuery: initialQuery,
      withSearchField: true,
    );
  }
}
