import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

// TODO(lmepol): додумать концепцию кастомных роутов
abstract class BaseRoute {
  /// Путь для маршрута
  String get path;

  String get parentPath;

  String get fullPath => '$parentPath$path';

  /// Виджет, который будет отображаться для данного маршрута
  Widget Function(BuildContext context, GoRouterState state)? get builder =>
      null;

  Page<dynamic> Function(BuildContext context, GoRouterState state)?
  get pageBuilder => null;

  /// Дочерние маршруты
  List<BaseRoute> Function(String parentPath) get children;

  /// Создание GoRoute на основе текущего маршрута
  GoRoute toGoRoute() {
    return GoRoute(
      path: path,
      builder: builder,
      pageBuilder: pageBuilder,
      routes: children(fullPath).map((child) => child.toGoRoute()).toList(),
    );
  }

  /// Навигация к текущему маршруту
  void navigate(
    BuildContext context, {
    Map<String, String>? params,
    Map<String, String>? queryParams,
  }) {
    context.go(fullPath, extra: params);
  }
}

abstract class SimpleBaseRoute extends BaseRoute {
  SimpleBaseRoute({
    required this.path,
    required this.parentPath,
    required this.children,
  });

  @override
  final String path;
  @override
  final String parentPath;
  @override
  final List<BaseRoute> Function(String parentPath) children;
}

class StatefullShellBaseRoute extends BaseRoute {
  StatefullShellBaseRoute({
    required this.path,
    required this.parentPath,
    required this.children,
    required this.initialPath,
  });

  @override
  final String path;
  @override
  final String parentPath;
  @override
  final List<BaseRoute> Function(String parentPath) children;

  final String initialPath;
}
