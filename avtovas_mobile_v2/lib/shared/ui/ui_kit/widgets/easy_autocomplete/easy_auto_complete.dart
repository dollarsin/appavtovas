import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:rxdart/rxdart.dart';

import '../../app_dimensions.dart';
import '../../app_fonts.dart';
import '../../avtovas_theme.dart';

class EasyAutocomplete<T> extends StatefulWidget {
  /// Creates a autocomplete widget to help you manage your suggestions
  const EasyAutocomplete({
    required this.itemBuilder,
    required this.items,
    required this.isLoading,
    required this.getSelectedItemText,
    required this.onItemSelected,
    required this.progressIndicatorBuilder,
    required this.placeholderBuilder,
    this.controller,
    this.onChanged,
    this.onSubmitted,
    this.hintText,
    this.inputFormatter = const [],
    this.initialValue,
    this.autofocus = false,
    this.prefix,
    this.textCapitalization = TextCapitalization.sentences,
    this.keyboardType = TextInputType.text,
    this.focusNode,
    this.cursorColor,
    this.onSuggestionsClose,
    this.inputTextStyle,
    this.backgroundColor,
    this.onFieldClearButtonTap,
    this.validator,
    super.key,
  });

  final Widget Function(BuildContext context) progressIndicatorBuilder;
  final Widget Function(BuildContext context) placeholderBuilder;

  final bool isLoading;

  /// The list of suggestions to be displayed
  final List<T> items;

  /// Text editing controller
  final TextEditingController? controller;
  final ValueChanged<T> onItemSelected;

  /// Function that handles the changes to the input
  final void Function(String)? onChanged;

  /// Function that handles the changes to the input
  final String Function(T item) getSelectedItemText;

  /// Function that handles the submission of the input
  final void Function(String)? onSubmitted;

  /// Can be used to set custom inputFormatters to field
  final List<TextInputFormatter> inputFormatter;

  /// Can be used to set the textfield initial value
  final String? initialValue;

  /// Can be used to set the text capitalization type
  final TextCapitalization textCapitalization;

  /// Determines if should gain focus on screen open
  final bool autofocus;

  /// Can be used to set different keyboardTypes to your field
  final TextInputType keyboardType;

  /// Can be used to manage TextField focus
  final FocusNode? focusNode;

  /// Can be used to set a custom color to the input cursor
  final Color? cursorColor;

  /// Can be used to set custom style to the suggestions textfield
  final TextStyle? inputTextStyle;

  /// Can be used to set custom background color to suggestions list
  final Color? backgroundColor;

  /// Can be used to customize suggestion items
  final Widget Function(BuildContext context, T item) itemBuilder;

  final Widget? prefix;

  final String? hintText;

  /// Can be used to validate field value
  final String? Function(String?)? validator;

  final VoidCallback? onFieldClearButtonTap;

  final VoidCallback? onSuggestionsClose;

  @override
  State<EasyAutocomplete<T>> createState() => _EasyAutocompleteState<T>();
}

class _EasyAutocompleteState<T> extends State<EasyAutocomplete<T>>
    with WidgetsBindingObserver {
  final LayerLink _layerLink = LayerLink();

  late final OverlayPortalController _overlayController;

  late final TextEditingController _controller;
  late final FocusScopeNode _focusScopeNode;

  late final GlobalKey _fieldKey;

  late final BehaviorSubject<bool> _overlayStatusesSubject;

  T? _selectedItem;

  @override
  void initState() {
    super.initState();

    WidgetsBinding.instance.addObserver(this);
    _focusScopeNode = FocusScopeNode()..unfocus();
    _controller =
        widget.controller ??
        TextEditingController(text: widget.initialValue ?? '');

    _overlayController = OverlayPortalController();
    _fieldKey = GlobalKey();

    _focusScopeNode.addListener(() {
      if (_focusScopeNode.hasFocus) {
        if (_selectedItem == null) {
          widget.onChanged?.call(_controller.text);
        }
        _openOverlay();
      } else {
        final item = _selectedItem ?? widget.items.firstOrNull;
        if (item != null) {
          final value = widget.getSelectedItemText(item);
          _controller.value = TextEditingValue(
            text: value,
            selection: TextSelection.collapsed(offset: value.length),
          );
          widget.onItemSelected(item);
        }
        _closeOverlay();
      }
    });

    _overlayStatusesSubject = BehaviorSubject.seeded(false);
  }

  @override
  Widget build(BuildContext context) {
    return FocusScope(
      node: _focusScopeNode,
      parentNode: widget.focusNode,
      child: OverlayPortal(
        controller: _overlayController,
        overlayChildBuilder:
            (context) => Positioned(
              width: _layerLink.leaderSize?.width,
              child: CompositedTransformFollower(
                link: _layerLink,
                showWhenUnlinked: false,
                targetAnchor: Alignment.bottomLeft,
                offset: const Offset(0, 10),
                child: Theme(
                  data: context.themeData.copyWith(
                    scrollbarTheme: ScrollbarThemeData(
                      thumbVisibility: WidgetStateProperty.all(true),
                      thumbColor: WidgetStateProperty.all(
                        context.theme.mainAppColor,
                      ),
                    ),
                  ),
                  child: FilterableList(
                    overlayStatusStream: _overlayStatusesSubject,
                    isLoading: widget.isLoading,
                    itemBuilder: widget.itemBuilder,
                    items: widget.items,
                    backgroundColor: widget.backgroundColor,
                    onItemTapped: (item) {
                      _selectedItem = item;
                      _focusScopeNode.unfocus();
                    },
                    progressIndicatorBuilder: widget.progressIndicatorBuilder,
                    placeholderBuilder: widget.placeholderBuilder,
                  ),
                ),
              ),
            ),
        child: CompositedTransformTarget(
          link: _layerLink,
          child: SizedBox(
            key: _fieldKey,
            height: 50,
            width: MediaQuery.sizeOf(context).width,
            child: CupertinoTextField(
              padding: const EdgeInsets.symmetric(
                horizontal: CommonDimensions.large,
              ),
              prefix: widget.prefix,
              placeholder: widget.hintText,
              placeholderStyle: context.themeData.textTheme.bodyLarge!.copyWith(
                color: context.theme.fivefoldTextColor,
                fontWeight: FontWeight.normal,
                fontSize: AppFonts.sizeHeadlineMedium,
              ),
              textAlignVertical: TextAlignVertical.center,
              decoration: BoxDecoration(
                color: context.theme.dividerColor,
                borderRadius: const BorderRadius.all(Radius.circular(8)),
              ),
              controller: _controller,
              inputFormatters: widget.inputFormatter,
              autofocus: widget.autofocus,
              textCapitalization: widget.textCapitalization,
              keyboardType: widget.keyboardType,
              cursorColor: widget.cursorColor,
              style:
                  widget.inputTextStyle ??
                  context.themeData.textTheme.bodyLarge!.copyWith(
                    color: context.theme.defaultIconColor,
                    fontWeight: FontWeight.normal,
                  ),
              onChanged: (value) {
                _selectedItem = null;
                widget.onChanged?.call(value);
              },
              onSubmitted: (value) {
                _focusScopeNode.unfocus();
                widget.onSubmitted?.call(value);
              },
              onEditingComplete: _closeOverlay,
            ),
          ),
        ),
      ),
    );
  }

  var _isDisposed = false;

  @override
  void dispose() {
    _isDisposed = true;

    WidgetsBinding.instance.removeObserver(this);
    _overlayStatusesSubject.close();

    if (widget.controller == null) {
      _controller.dispose();
    }
    _focusScopeNode.dispose();

    super.dispose();
  }

  void _openOverlay() {
    if (_isDisposed) return;

    if (!_overlayController.isShowing) {
      _overlayController.show();
    }

    _overlayStatusesSubject.add(true);
  }

  void _closeOverlay() {
    widget.onSuggestionsClose?.call();

    // _overlayController.hide();

    _overlayStatusesSubject.add(false);
  }
}

class FilterableList<T> extends StatefulWidget {
  const FilterableList({
    required this.items,
    required this.itemBuilder,
    required this.onItemTapped,
    required this.overlayStatusStream,
    required this.isLoading,
    required this.progressIndicatorBuilder,
    required this.placeholderBuilder,
    this.elevation = 5,
    this.maxListHeight = 250,
    this.backgroundColor,
    super.key,
  });

  final bool isLoading;
  final List<T> items;
  final ValueChanged<T> onItemTapped;
  final double elevation;
  final double maxListHeight;
  final Color? backgroundColor;
  final Widget Function(BuildContext, T) itemBuilder;
  final Stream<bool> overlayStatusStream;
  final Widget Function(BuildContext context) progressIndicatorBuilder;
  final Widget Function(BuildContext context) placeholderBuilder;

  @override
  State<FilterableList<T>> createState() => _FilterableListState<T>();
}

class _FilterableListState<T> extends State<FilterableList<T>>
    with SingleTickerProviderStateMixin {
  late final AnimationController _suggestionsController;
  late final Animation<double> _sizeAnimation;

  late final StreamSubscription<bool> _overlayStatusSubscription;

  @override
  void initState() {
    super.initState();

    _suggestionsController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 200),
      value: 1,
    );

    _sizeAnimation = CurvedAnimation(
      parent: _suggestionsController,
      curve: Curves.decelerate,
    );

    _overlayStatusSubscription = widget.overlayStatusStream.distinct().listen((
      status,
    ) {
      if (status) {
        _suggestionsController.forward();
      } else {
        _suggestionsController.reverse();
      }
    });
  }

  @override
  void dispose() {
    _suggestionsController.dispose();

    _overlayStatusSubscription.cancel();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final items = widget.items;
    final itemBuilder = widget.itemBuilder;

    return ClipRRect(
      borderRadius: const BorderRadius.all(
        Radius.circular(CommonDimensions.mediumLarge),
      ),
      child: SizeTransition(
        sizeFactor: _sizeAnimation,
        child: Material(
          borderRadius: const BorderRadius.all(
            Radius.circular(CommonDimensions.mediumLarge),
          ),
          color: widget.backgroundColor,
          child: Container(
            constraints: BoxConstraints(maxHeight: widget.maxListHeight),
            decoration: BoxDecoration(
              borderRadius: const BorderRadius.all(
                Radius.circular(CommonDimensions.mediumLarge),
              ),
              border:
                  items.isNotEmpty || widget.isLoading
                      ? Border.fromBorderSide(
                        BorderSide(color: context.theme.dividerColor),
                      )
                      : null,
            ),
            child: AnimatedSize(
              duration: const Duration(milliseconds: 200),
              curve: Curves.fastOutSlowIn,
              child: ListView.builder(
                shrinkWrap: true,
                padding: EdgeInsets.zero,
                itemCount: widget.isLoading || items.isEmpty ? 1 : items.length,
                itemBuilder: (context, index) {
                  if (widget.isLoading) {
                    return Container(
                      alignment: Alignment.center,
                      padding: const EdgeInsets.all(10),
                      child: widget.progressIndicatorBuilder(context),
                    );
                  }

                  if (items.isEmpty) {
                    return Container(
                      alignment: Alignment.center,
                      padding: const EdgeInsets.all(10),
                      child: widget.placeholderBuilder(context),
                    );
                  }

                  final item = items[index];

                  return InkWell(
                    borderRadius: const BorderRadius.all(
                      Radius.circular(CommonDimensions.mediumLarge),
                    ),
                    child: itemBuilder(context, item),
                    onTap: () => widget.onItemTapped(items[index]),
                  );
                },
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class ClearButton extends StatelessWidget {
  const ClearButton({required this.onTap, super.key});

  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: CommonDimensions.mediumLarge),
      child: Material(
        color: context.theme.dividerColor,
        borderRadius: const BorderRadius.all(
          Radius.circular(CommonDimensions.extraLarge),
        ),
        child: InkWell(
          onTap: onTap,
          borderRadius: const BorderRadius.all(
            Radius.circular(CommonDimensions.extraLarge),
          ),
          child: const Icon(Icons.close),
        ),
      ),
    );
  }
}
