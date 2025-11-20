import 'package:avtovas_mobile/src/common/di/injector.dart';
import 'package:avtovas_mobile/src/features/local_auth/presentation/cubit/local_auth_cubit.dart';
import 'package:avtovas_mobile/src/features/local_auth/presentation/ui/widgets/local_auth_body.dart';
import 'package:avtovas_mobile/src/features/local_auth/presentation/ui/widgets/local_auth_loading_body.dart';
import 'package:common/avtovas_navigation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

final class LocalAuthPage extends StatelessWidget {
  final bool? fromEnableLocalAuth;

  const LocalAuthPage({this.fromEnableLocalAuth, super.key});

  @override
  Widget build(BuildContext context) {
    return PopScope(
      canPop: fromEnableLocalAuth ?? false,
      child: BlocProvider(
        create: (_) => i.get<LocalAuthCubit>()
          ..initPage(fromEnableLocalAuth: fromEnableLocalAuth ?? false),
        child: Scaffold(
          body: Stack(
            children: [
              LocalAuthBody(fromEnableLocalAuth: fromEnableLocalAuth ?? false),
              const LocalAuthLoadingBody(),
            ],
          ),
        ),
      ),
    );
  }
}

final class LocalAuthArguments extends PageArguments {
  final bool? fromEnableLocalAuth;

  LocalAuthArguments({
    this.fromEnableLocalAuth,
  });

  @override
  List<Object?> get props => [fromEnableLocalAuth];
}
