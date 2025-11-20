import 'package:flutter/material.dart';
import 'package:flutter_keyboard_visibility/flutter_keyboard_visibility.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:scroll_to_index/scroll_to_index.dart';

import '../../../shared/localization/localizations_ext.dart';
import '../../../shared/riverpod/widgets/async_lifecycle_wrapper.dart';
import '../../../shared/ui/ui_kit/app_assets.dart';
import '../../../shared/ui/ui_kit/app_dimensions.dart';
import '../../../shared/ui/ui_kit/app_fonts.dart';
import '../../../shared/ui/ui_kit/avtovas_theme.dart';
import '../../../shared/ui/ui_kit/widgets/avtovas_button/avtovas_button.dart';
import '../../../shared/ui/ui_kit/widgets/vector_image/avtovas_vector_image.dart';
import '../../../shared/utils/date_time_extension.dart';
import '../shared/di/select_points_providers.dart';
import 'widgets/search_trip_vertical.dart';

class PointsPage extends ConsumerStatefulWidget {
  const PointsPage({super.key});

  @override
  ConsumerState<PointsPage> createState() => _PointsPageState();
}

class _PointsPageState extends ConsumerState<PointsPage> {
  late final AutoScrollController _scrollController;
  late final TextEditingController _departureController;
  late final TextEditingController _arrivalController;

  late final KeyboardVisibilityController _keyboardVisibilityController;

  @override
  void initState() {
    super.initState();
    _departureController = TextEditingController();
    _arrivalController = TextEditingController();
    _scrollController = AutoScrollController();
    _keyboardVisibilityController =
        KeyboardVisibilityController()
          ..onChange.listen((visible) {
            if (visible) {
              _scrollToPosition();
            }
          });
  }

  @override
  Widget build(BuildContext context) {
    final asyncQueue = ref.watch(SelectPointsProviders.asyncObserverProvider);
    final manager = ref.watch(
      SelectPointsProviders.pointsPageManagerProvider.notifier,
    );
    return AsyncLifecycleWrapper(
      asyncLifecycle: asyncQueue,
      builder: (context) {
        return KeyboardVisibilityProvider(
          controller: _keyboardVisibilityController,
          child: Stack(
            fit: StackFit.expand,
            children: [
              Positioned.fill(
                child: Image.asset(
                  AppAssets.mainSearchBackground,
                  fit: BoxFit.cover,
                  color: context.theme.backgroundOpacityColor,
                  colorBlendMode: BlendMode.darken,
                ),
              ),
              ListView(
                controller: _scrollController,
                physics: const ClampingScrollPhysics(),
                children: [
                  const SizedBox(height: kToolbarHeight),
                  const AvtovasVectorImage(
                    svgAssetPath: AppAssets.mainActovasLogo,
                  ),
                  const SizedBox(height: AppDimensions.extraLarge * 1.5),
                  Text(
                    context.locale.mainSearchTitle,
                    style: context.themeData.textTheme.headlineLarge?.copyWith(
                      color: context.theme.whiteTextColor,
                      fontSize: AppFonts.mainTitleSize,
                      fontWeight: FontWeight.normal,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: AppDimensions.extraLarge * 1.5),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: AppDimensions.extraLarge,
                    ),
                    child: AutoScrollTag(
                      key: const ValueKey<int>(0),
                      index: 0,
                      controller: _scrollController,
                      child: SearchTripVertical(
                        destinationController: _arrivalController,
                        departureController: _departureController,
                        onDepartureSubmitted: manager.setDeparture,
                        onDestinationSubmitted: manager.setDestination,
                      ),
                    ),
                  ),
                  const SizedBox(height: AppDimensions.large),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: AppDimensions.extraLarge,
                    ),
                    child: SizedBox(
                      width: context.availableWidth,
                      child: Row(
                        children: [
                          Consumer(
                            builder: (context, ref, child) {
                              final date = ref.watch(
                                SelectPointsProviders.pointsPageManagerProvider
                                    .select((state) => state.date),
                              );
                              return AvtovasButton.icon(
                                buttonColor:
                                    context.theme.containerBackgroundColor,
                                borderColor: context.theme.mainAppColor,
                                buttonText: date.yMMMdFormat(
                                  context.locale.localeName,
                                ),
                                textStyle: context
                                    .themeData
                                    .textTheme
                                    .titleLarge
                                    ?.copyWith(
                                      color: context.theme.mainAppColor,
                                    ),
                                svgPath: AppAssets.searchCalendarIcon,
                                sizeBetween: AppDimensions.medium,
                                iconColor: context.theme.mainAppColor,
                                onTap: () => _showDatePicker(context),
                                // _showDatePicker(context, cubit),
                              );
                            },
                          ),
                          const SizedBox(width: AppDimensions.large),
                          Consumer(
                            builder: (context, ref, child) {
                              final isEnabled = ref.watch(
                                SelectPointsProviders.pointsPageManagerProvider
                                    .select(
                                      (state) =>
                                          state.departure != null &&
                                          state.destination != null,
                                    ),
                              );
                              return Expanded(
                                child: AvtovasButton.text(
                                  isActive: isEnabled,
                                  buttonText: context.locale.findTrip,
                                  onTap: () => manager.onSearchTap(),
                                ),
                              );
                            },
                          ),
                        ],
                      ),
                    ),
                  ),
                  const IgnorePointer(child: SizedBox(height: 150)),
                ],
              ),
            ],
          ),
        );
      },
      placeholder: (context) {
        return const Center(child: CircularProgressIndicator());
      },
    );
  }

  @override
  void dispose() {
    _scrollController.dispose();

    super.dispose();
  }

  Future<void> _showDatePicker(BuildContext context) async {
    final manager = ref.read(
      SelectPointsProviders.pointsPageManagerProvider.notifier,
    );
    final state = ref.read(SelectPointsProviders.pointsPageManagerProvider);

    final now = DateTime.now();
    final tripDate = await showDatePicker(
      context: context,
      initialDate: state.date,
      firstDate: now,
      lastDate: now.copyWith(month: now.month + 1),
      locale: Locale(context.locale.localeName),
      confirmText: context.locale.ok,
      builder: (context, child) {
        return Theme(
          data: context.themeData.copyWith(
            datePickerTheme: DatePickerThemeData(
              dividerColor: context.theme.mainAppColor,
              shape: const OutlineInputBorder(
                borderSide: BorderSide.none,
                borderRadius: BorderRadius.all(
                  Radius.circular(AppDimensions.mediumLarge),
                ),
              ),
              headerForegroundColor: context.theme.whiteTextColor,
              headerBackgroundColor: context.theme.mainAppColor,
              dayOverlayColor: WidgetStateProperty.all(
                context.theme.mainAppColor.withAlpha(25),
              ),
              yearOverlayColor: WidgetStateProperty.all(
                context.theme.mainAppColor.withAlpha(25),
              ),
              confirmButtonStyle: ElevatedButton.styleFrom(
                backgroundColor: context.theme.mainAppColor,
                foregroundColor: context.theme.whiteTextColor,
                textStyle: context.themeData.textTheme.bodyLarge?.copyWith(
                  color: context.theme.whiteTextColor,
                ),
              ),
            ),
            colorScheme: ColorScheme.light(primary: context.theme.mainAppColor),
          ),
          child: child!,
        );
      },
    );

    if (tripDate != null) {
      manager.setDate(tripDate);
    }
  }

  void _scrollToPosition() {
    _scrollController.scrollToIndex(
      0,
      duration: const Duration(milliseconds: 400),
      preferPosition: AutoScrollPosition.begin,
    );
  }
}
