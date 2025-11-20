import 'dart:ui';

import 'package:avtovas_mobile/src/common/constants/app_dimensions.dart';
import 'package:avtovas_mobile/src/common/cubit_scope/cubit_scope.dart';
import 'package:avtovas_mobile/src/common/di/injector.dart';
import 'package:avtovas_mobile/src/common/navigation/app_router.dart';
import 'package:avtovas_mobile/src/common/navigation/configurations.dart';
import 'package:avtovas_mobile/src/common/navigation/routes.dart';
import 'package:avtovas_mobile/src/common/shared_cubit/app_overlay/app_overlay_cubit.dart';
import 'package:avtovas_mobile/src/common/shared_cubit/navigation_panel/app_configuration_cubit.dart';
import 'package:avtovas_mobile/src/common/utils/theme_type.dart';
import 'package:avtovas_mobile/src/features/app/presentation/cubit/app_cubit.dart';
import 'package:avtovas_mobile/src/features/local_auth/presentation/ui/local_auth_page.dart';
import 'package:common/avtovas_common.dart';
import 'package:country_code_picker/country_code_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

final class App extends StatefulWidget {
  const App({super.key});

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  final _appConfigurationCubit = i.get<AppConfigurationCubit>();
  final AppOverlayCubit _overlayCubit = i.get<AppOverlayCubit>();
  late final GoRouter _router;

  @override
  void initState() {
    super.initState();

    _overlayCubit.applyStyle(
      _calculateSystemOverlay(),
    );

    final initialConfig = mainConfig();

    _router = AppRouter.router(
      initialLocation: initialConfig.path,
      initialExtra: initialConfig.args,
    );

    _appConfigurationCubit.internetConnectionStatusSubscribe();
  }

  AvtovasTheme _avtovasTheme(AppState state) {
    return switch (state.themeType) {
      ThemeType.light => lightTheme,
      ThemeType.dark => throw UnimplementedError(),
    };
  }

  SystemUiOverlayStyle _calculateSystemOverlay([ThemeType? themeType]) {
    final lightStyle = SystemUiOverlayStyle.light.copyWith(
      statusBarColor: Colors.transparent,
      statusBarIconBrightness: Brightness.light,
      systemNavigationBarColor: Colors.white,
      systemNavigationBarIconBrightness: Brightness.dark,
    );
    const darkStyle = SystemUiOverlayStyle.dark;

    if (themeType != null) {
      return switch (themeType) {
        ThemeType.light => lightStyle,
        ThemeType.dark => darkStyle,
      };
    }

    return lightStyle;
  }

  void _overlayListener(
    ThemeType themeType,
    AppOverlayState state,
  ) {
    if (state.shouldReset) {
      _overlayCubit.reset(
        _calculateSystemOverlay(themeType),
      );
    } else if (state.shouldUpdateRoot) {
      _overlayCubit.replaceRoot(
        _calculateSystemOverlay(themeType),
      );
      SystemChrome.setSystemUIOverlayStyle(
        state.style!,
      );
    } else {
      SystemChrome.setSystemUIOverlayStyle(
        state.style!,
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    const avtovasTitle = 'Вокзал21';

    return CubitScope<AppOverlayCubit>(
      child: CubitScope<AppCubit>(
        child: CubitScope<AppConfigurationCubit>(
          child: BlocBuilder<AppCubit, AppState>(
            builder: (context, appState) {
              final theme = _avtovasTheme(appState);
              return ThemeProvider(
                theme: theme,
                themeData: generateThemeData(theme),
                child: BlocConsumer<AppOverlayCubit, AppOverlayState>(
                  bloc: _overlayCubit,
                  listener: (context, state) => _overlayListener(
                    appState.themeType,
                    state,
                  ),
                  builder: (context, state) {
                    return MaterialApp.router(
                      debugShowCheckedModeBanner: false,
                      title: avtovasTitle,
                      routerDelegate: _router.routerDelegate,
                      routeInformationParser: _router.routeInformationParser,
                      routeInformationProvider:
                          _router.routeInformationProvider,
                      backButtonDispatcher: RootBackButtonDispatcher(),
                      localizationsDelegates: const [
                        CountryLocalizations.delegate,
                        ...AvtovasLocalization.localizationsDelegates,
                      ],
                      supportedLocales: AvtovasLocalization.supportedLocales,
                      theme: context.themeData,
                      builder: (context, child) {
                        return Stack(
                          children: [
                            child!,
                            const _LocalAuthMessageConfigurator(),
                            const _LocalAuthBlurScreen(),
                          ],
                        );
                      },
                    );
                  },
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}

final class _LocalAuthBlurScreen extends StatefulWidget {
  const _LocalAuthBlurScreen();

  @override
  State<_LocalAuthBlurScreen> createState() => _LocalAuthBlurScreenState();
}

class _LocalAuthBlurScreenState extends State<_LocalAuthBlurScreen>
    with WidgetsBindingObserver {
  @override
  void initState() {
    super.initState();

    WidgetsBinding.instance.addObserver(this);
  }

  var _needBlurScreen = false;

  void _setSecureScreen(bool secure) {
    setState(() => _needBlurScreen = secure);
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    super.didChangeAppLifecycleState(state);

    if (state == AppLifecycleState.inactive) {
      _setSecureScreen(true);
      print('123');
    } else if (state == AppLifecycleState.resumed) {
      if (context.mounted) {
        context.read<AppCubit>().startLocalAuthProcess();
      }

      _setSecureScreen(false);
    }
  }

  @override
  void dispose() {
    WidgetsBinding.instance.removeObserver(this);

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocSelector<AppCubit, AppState, bool>(
      selector: (state) => state.localAuthStatus,
      builder: (context, localAuthStatus) {
        return AnimatedSwitcher(
          duration: const Duration(milliseconds: 150),
          switchOutCurve: Curves.fastOutSlowIn,
          switchInCurve: Curves.fastOutSlowIn,
          child: _needBlurScreen && localAuthStatus
              ? BackdropFilter(
                  filter: ImageFilter.blur(
                    sigmaX: 30,
                    sigmaY: 30,
                  ),
                  child: SizedBox(
                    width: context.availableWidth,
                    height: context.availableHeight,
                  ),
                )
              : null,
        );
      },
    );
  }
}

final class _LocalAuthMessageConfigurator extends StatelessWidget {
  const _LocalAuthMessageConfigurator();

  @override
  Widget build(BuildContext context) {
    return Positioned.fill(
      child: BlocSelector<AppCubit, AppState, bool>(
        selector: (state) => state.needShowLocalAuthMessage,
        builder: (context, needShowLocalAuthMessage) {
          return AnimatedSwitcher(
            duration: const Duration(milliseconds: 200),
            switchInCurve: Curves.fastOutSlowIn,
            switchOutCurve: Curves.fastOutSlowIn,
            child: needShowLocalAuthMessage
                ? const ColoredBox(
                    color: Colors.black38,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        _LocalAuthMessageDialog(),
                      ],
                    ),
                  )
                : null,
          );
        },
      ),
    );
  }
}

final class _LocalAuthMessageDialog extends StatefulWidget {
  const _LocalAuthMessageDialog();

  @override
  State<_LocalAuthMessageDialog> createState() =>
      _LocalAuthMessageDialogState();
}

class _LocalAuthMessageDialogState extends State<_LocalAuthMessageDialog> {
  var _notShowMore = false;

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: AppDimensions.large),
        padding: const EdgeInsets.all(AppDimensions.large),
        decoration: BoxDecoration(
          color: context.theme.whiteTextColor,
          borderRadius: const BorderRadius.all(
            Radius.circular(AppDimensions.medium),
          ),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Row(
              children: [
                Icon(
                  Icons.info_outline,
                  color: context.theme.primaryTextColor,
                  size: AppDimensions.extraLarge,
                ),
                const SizedBox(width: AppDimensions.medium),
                Expanded(
                  child: Text(
                    'Вход в приложение',
                    style: context.themeData.textTheme.headlineMedium?.copyWith(
                      fontSize: 20,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: AppDimensions.large),
            Text(
              'Вы можете защитить свои данные, включив функцию входа в приложение'
              ' с использованием биометрических данных',
              style: context.themeData.textTheme.headlineMedium?.copyWith(
                fontWeight: FontWeight.normal,
              ),
            ),
            const SizedBox(height: AppDimensions.large),
            AvtovasCheckbox(
              onChanged: (value) => setState(
                () => _notShowMore = !_notShowMore,
              ),
              value: _notShowMore,
              checkboxText: 'Больше не показывать',
            ),
            const SizedBox(height: AppDimensions.large),
            Row(
              children: [
                Expanded(
                  child: AvtovasButton.text(
                    buttonText: 'Позже',
                    padding: const EdgeInsets.symmetric(
                      vertical: AppDimensions.mediumLarge,
                    ),
                    borderColor: context.theme.mainAppColor,
                    buttonColor: context.theme.transparent,
                    backgroundOpacity: 0,
                    textStyle:
                        context.themeData.textTheme.headlineSmall?.copyWith(
                      fontWeight: FontWeight.normal,
                      color: Colors.black,
                    ),
                    onTap: () => context
                        .read<AppCubit>()
                        .updateLocalAuthMessageReadStatus(
                          notShowMore: _notShowMore,
                        ),
                  ),
                ),
                const SizedBox(width: AppDimensions.large),
                Expanded(
                  child: AvtovasButton.text(
                    buttonText: 'Включить',
                    padding: const EdgeInsets.symmetric(
                      vertical: AppDimensions.mediumLarge,
                    ),
                    onTap: () {
                      context.read<AppCubit>().updateLocalAuthMessageReadStatus(
                            notShowMore: _notShowMore,
                          );
                      AppRouter.appRouter.push(
                        Routes.localAuth.route,
                        extra: LocalAuthArguments(fromEnableLocalAuth: true),
                      );
                    },
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
