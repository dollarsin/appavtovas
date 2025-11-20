import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_web_plugins/url_strategy.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

import 'shared/di/app_providers.dart';
import 'shared/di/pre_app_start_locator.dart';
import 'shared/localization/flutter_gen/avtovas_localizations.dart';
import 'shared/service/network/di/network_module_providers.dart';
import 'shared/ui/ui_kit/app_assets.dart';
import 'shared/ui/ui_kit/app_themes.dart';
import 'shared/ui/ui_kit/avtovas_theme.dart';
import 'shared/ui/ui_kit/widgets/vector_image/avtovas_vector_image.dart';

void main() {
  runZonedGuarded(
    () async {
      WidgetsFlutterBinding.ensureInitialized();
      await AppStartupLocator.initQueue.onInit();
      usePathUrlStrategy();

      runApp(
        ProviderScope(
          overrides: [
            NetworkModuleProviders.appAdditionalInterceptorsProvider
                .overrideWithValue([
                  PrettyDioLogger(requestHeader: true, requestBody: true),
                ]),
            ...AppStartupLocator.overrides,
          ],
          child: const App(),
        ),
      );
    },
    (onError, stackTrace) {
      // TODO(lmepol): добавить полноценное логирование ошибок
      if (kDebugMode) {
        print('Error: $onError; StackTrace: $stackTrace');
      }
    },
  );
}

class App extends ConsumerWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final navigationManager = ref.watch(
      AppProviders.appNavigationManagerProvider,
    );

    return MaterialApp.router(
      title: 'Вокзал21',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        actionIconTheme: ActionIconThemeData(
          backButtonIconBuilder:
              (context) => const AvtovasVectorImage(
                svgAssetPath: AppAssets.backArrowIcon,
              ),
        ),
      ),
      routerDelegate: navigationManager.routerDelegate,
      routeInformationParser: navigationManager.routeInformationParser,
      routeInformationProvider: navigationManager.routeInformationProvider,
      localizationsDelegates: const [
        ...AvtovasLocalization.localizationsDelegates,
      ],
      supportedLocales: AvtovasLocalization.supportedLocales,
      builder: (context, child) {
        const theme = lightTheme;

        return ThemeProvider(
          themeData: generateThemeData(theme),
          theme: theme,
          child: child ?? const SizedBox.shrink(),
        );
      },
    );
  }
}
