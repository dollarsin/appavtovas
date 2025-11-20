import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../../../shared/ui/ui_kit/widgets/selectable_overlay.dart';
import '../../../../data/models/passanger_document/passenger_document_type.dart';
import '../../../../shared/passenger_document_types_providers.dart';

typedef _Providers = PassengerDocumentTypesProviders;

final class PassengerDocumentsTypesSheet extends ConsumerStatefulWidget {
  const PassengerDocumentsTypesSheet({
    required this.onDocumentTypeChanged,
    required this.selectedDocumentType,
    super.key,
  });

  final ValueChanged<PassengerDocumentType> onDocumentTypeChanged;
  final PassengerDocumentType? selectedDocumentType;

  @override
  ConsumerState<PassengerDocumentsTypesSheet> createState() =>
      _PassengerDocumentsTypesSheetState();
}

class _PassengerDocumentsTypesSheetState
    extends ConsumerState<PassengerDocumentsTypesSheet> {
  @override
  void initState() {
    super.initState();
    ref.read(_Providers.documentTypesListManagerProvider.notifier).onPageOpen();
  }

  @override
  Widget build(BuildContext context) {
    final manager = ref.watch(
      _Providers.documentTypesListManagerProvider.notifier,
    );
    final isLoading = ref.watch(
      _Providers.documentTypesListManagerProvider.select(
        (value) => value.isLoading,
      ),
    );

    final documentTypes = ref.watch(
      _Providers.documentTypesListManagerProvider.select(
        (state) => state.data?.passengerDocumentTypes ?? [],
      ),
    );

    final initialQuery = ref.read(
      _Providers.documentTypesListManagerProvider.select(
        (state) => state.data?.query ?? '',
      ),
    );

    return SelectableOverlay(
      onQueryChanged: manager.onQueryUpdate,
      needScroll: true,
      items: [
        if (isLoading) ...[
          const SelectableOverlayItemPlaceholder(),
          const SelectableOverlayItemPlaceholder(),
          const SelectableOverlayItemPlaceholder(),
        ] else
          for (final documentType in documentTypes)
            SelectableOverlayItem(
              onItemTap: () => widget.onDocumentTypeChanged(documentType),
              itemLabel: documentType.name,
              isSelected: widget.selectedDocumentType?.id == documentType.id,
            ),
      ],
      initialQuery: initialQuery,
      withSearchField: true,
    );
  }
}
