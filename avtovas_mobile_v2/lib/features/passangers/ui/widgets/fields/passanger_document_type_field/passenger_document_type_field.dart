import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../../../shared/localization/localizations_ext.dart';
import '../../../../../../shared/navigation/bottom_sheet_manager.dart';
import '../../../../data/models/passanger_document/passenger_document_type.dart';
import '../../../../shared/passenger_document_types_providers.dart';
import '../passenger_input_field.dart';
import 'passenger_documents_types_list_sheet.dart';

typedef _Providers = PassengerDocumentTypesProviders;

final class PassengerDocumentTypeField extends ConsumerWidget {
  const PassengerDocumentTypeField({
    required this.controller,
    required this.onDocumentTypeChanged,
    this.selectedDocumentType,
    this.initialDocumentType,
    super.key,
  });

  final TextEditingController controller;
  final ValueChanged<PassengerDocumentType> onDocumentTypeChanged;
  final PassengerDocumentType? selectedDocumentType;
  final PassengerDocumentType? initialDocumentType;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    ref.watch(_Providers.documentTypesListManagerProvider.notifier);
    return PassengerValidatorInputField(
      controller: controller,
      fieldTitle: context.locale.document,
      readOnly: true,
      enableInteractiveSelection: false,
      onTap:
          () => BottomSheetHelper.showBottomSheet(
            context,
            sheetTitle: context.locale.document,
            builder: (context) {
              return PassengerDocumentsTypesSheet(
                onDocumentTypeChanged: (documentType) {
                  controller.text = documentType.name;
                  onDocumentTypeChanged(documentType);
                },
                selectedDocumentType: selectedDocumentType,
              );
            },
          ),
    );
  }
}
