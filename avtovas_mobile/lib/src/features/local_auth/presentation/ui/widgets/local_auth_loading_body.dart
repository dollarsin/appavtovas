import 'dart:ui';

import 'package:avtovas_mobile/src/features/local_auth/presentation/cubit/local_auth_cubit.dart';
import 'package:common/avtovas_utils.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

final class LocalAuthLoadingBody extends StatelessWidget {
  const LocalAuthLoadingBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Builder(
      builder: (context) {
        return BlocSelector<LocalAuthCubit, LocalAuthState, bool>(
          selector: (state) => state.needPageLoading,
          builder: (_, needPageLoading) {
            return AnimatedSwitcher(
              duration: const Duration(milliseconds: 300),
              switchInCurve: Curves.fastOutSlowIn,
              switchOutCurve: Curves.fastOutSlowIn,
              child: needPageLoading
                  ? BackdropFilter(
                      filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
                      child: SizedBox(
                        width: context.availableWidth,
                        height: context.availableHeight,
                        child: const ColoredBox(
                          color: Colors.black54,
                          child: CupertinoActivityIndicator(
                            color: Colors.white,
                          ),
                        ),
                      ),
                    )
                  : null,
            );
          },
        );
      },
    );
  }
}
