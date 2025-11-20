import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../shared/ui/ui_kit/app_assets.dart';
import '../../shared/ui/ui_kit/avtovas_navigation_panel.dart';

class RootPage extends StatefulWidget {
  const RootPage({required this.shell, super.key});

  final StatefulNavigationShell shell;

  @override
  State<RootPage> createState() => _RootPageState();
}

class _RootPageState extends State<RootPage> {
  late final FocusNode _focusNode;
  @override
  void initState() {
    super.initState();
    _focusNode = FocusNode();
  }

  @override
  Widget build(BuildContext context) {
    return Focus(
      focusNode: _focusNode,

      child: GestureDetector(
        onTap: _focusNode.unfocus,
        child: Scaffold(
          body: widget.shell,
          resizeToAvoidBottomInset: true,
          bottomNavigationBar: AvtovasNavigationPanel(
            selectedIndex: widget.shell.currentIndex,
            onIndexChanged:
                (index) => widget.shell.goBranch(
                  index,
                  initialLocation: widget.shell.currentIndex == index,
                ),
            items: const [
              AvtovasNavigationItem(
                iconPath: AppAssets.searchIcon,
                title: 'Поиск',
              ),
              AvtovasNavigationItem(
                iconPath: AppAssets.tripsIcon,
                title: 'Мои поездки',
              ),
              AvtovasNavigationItem(
                iconPath: AppAssets.supportIcon,
                title: 'Поддержка',
              ),
              AvtovasNavigationItem(
                iconPath: AppAssets.profileIcon,
                title: 'Профиль',
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    _focusNode.dispose();
    super.dispose();
  }
}
