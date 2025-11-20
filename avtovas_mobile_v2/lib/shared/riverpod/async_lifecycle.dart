import 'package:flutter/foundation.dart';

abstract class AsyncLifecycle {
  Future<void> onInit();

  Future<void> onDispose();
}

class RawAsyncLifecycle implements AsyncLifecycle {
  RawAsyncLifecycle({
    required AsyncCallback onInit,
    required AsyncCallback onDispose,
  }) : _onInit = onInit,
       _onDispose = onDispose;

  final AsyncCallback _onInit;
  final AsyncCallback _onDispose;

  @override
  Future<void> onInit() => _onInit();

  @override
  Future<void> onDispose() => _onDispose();
}
