import 'package:avtovas_mobile/src/common/constants/app_assets.dart';
import 'package:avtovas_mobile/src/common/navigation/app_router.dart';
import 'package:avtovas_mobile/src/common/widgets/avtovas_app_bar/avtovas_app_bar.dart';
import 'package:avtovas_mobile/src/features/cards_control/presentation/ui/widgets/bodies/cards_control_body.dart';
import 'package:flutter/material.dart';

final class CardsControlPage extends StatelessWidget {
  const CardsControlPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AvtovasAppBar(
        title: 'Отвязать карту',
        onTap: AppRouter.appRouter.pop,
        svgAssetPath: AppAssets.backArrowIcon,
      ),
      body: const CardsControlBody(),
    );
  }
}
