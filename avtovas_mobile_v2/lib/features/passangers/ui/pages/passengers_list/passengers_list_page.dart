import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../../shared/localization/localizations_ext.dart';
import '../../../../../shared/ui/ui_kit/app_assets.dart';
import '../../../../../shared/ui/ui_kit/app_bar.dart';
import '../../../../../shared/ui/ui_kit/app_dimensions.dart';
import '../../../../../shared/ui/ui_kit/avtovas_theme.dart';
import '../../../../../shared/ui/ui_kit/widgets/avtovas_button/avtovas_button.dart';
import '../../../shared/passengers_list_providers.dart';
import '../../widgets/passenger_item.dart';

class PassengersListPage extends ConsumerWidget {
  const PassengersListPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final manager = ref.watch(
      PassengersListProviders.passengersListPageManagerProvider.notifier,
    );
    final state = ref.watch(
      PassengersListProviders.passengersListPageManagerProvider,
    );

    return Scaffold(
      appBar: AvtovasAppBar(title: context.locale.passengersTitle),
      body: SafeArea(
        child: Column(
          children: [
            if (state.isLoading) ...[
              const Center(child: CircularProgressIndicator()),
            ] else if (state.isError) ...[
              const Spacer(),
              // TODO(lmepol): Add error message from state
              const Text('Ошибка загрузки данных!'),
              const Spacer(),
            ] else if (state.hasData &&
                state.requireData.passengers.isEmpty) ...[
              const Spacer(),
              const Text('Вы ещё не добавили ни одного пассажира!'),
              const Spacer(),
            ] else
              Expanded(
                child: ListView.separated(
                  padding: const EdgeInsets.symmetric(
                    horizontal: AppDimensions.large,
                    vertical: AppDimensions.medium,
                  ),
                  separatorBuilder: (_, __) {
                    return Divider(
                      color: context.theme.dividerColor,
                      thickness: AppDimensions.dividerThickness,
                    );
                  },
                  itemCount: state.requireData.passengers.length,
                  itemBuilder: (_, index) {
                    final passenger = state.requireData.passengers[index];

                    return PassengerItem(
                      onTap: () => manager.onPassengerTap(passenger),
                      passengerFirstName: passenger.firstName,
                      passengerLastName: passenger.lastName,
                      passengerPatronymic: passenger.patronymic,
                      passengerGender: passenger.gender,
                      passengerBirthday: passenger.birthDate,
                    );
                  },
                ),
              ),
            AvtovasButton.icon(
              buttonText: context.locale.addPassenger,
              svgPath: AppAssets.passengerIcon,
              margin: const EdgeInsets.all(AppDimensions.medium),
              padding: const EdgeInsets.all(AppDimensions.mediumLarge),
              mainAxisAlignment: MainAxisAlignment.center,
              borderColor: context.theme.mainAppColor,
              buttonColor: context.theme.transparent,
              backgroundOpacity: 0,
              textStyle: context.themeData.textTheme.headlineMedium?.copyWith(
                fontWeight: FontWeight.normal,
                color: context.theme.primaryTextColor,
              ),
              onTap: () => manager.onAddPassengerTap(),
            ),
          ],
        ),
      ),
    );
  }
}
