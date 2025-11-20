import 'package:flutter/widgets.dart';

import '../async_lifecycle.dart';

class AsyncLifecycleWrapper extends StatefulWidget {
  const AsyncLifecycleWrapper({
    required this.asyncLifecycle,
    required this.builder,
    this.placeholder,
    super.key,
  });

  factory AsyncLifecycleWrapper.withPlaceholder({
    required AsyncLifecycle asyncLifecycle,
    required WidgetBuilder builder,
    required WidgetBuilder placeholder,
    Key? key,
  }) => AsyncLifecycleWrapper(
    asyncLifecycle: asyncLifecycle,
    builder: builder,
    placeholder: placeholder,
    key: key,
  );

  final WidgetBuilder builder;
  final WidgetBuilder? placeholder;

  final AsyncLifecycle asyncLifecycle;

  @override
  State<AsyncLifecycleWrapper> createState() => _AsyncLifecycleWrapperState();
}

class _AsyncLifecycleWrapperState extends State<AsyncLifecycleWrapper> {
  Object? _activeCallbackIdentity;
  bool _isInitialized = false;

  @override
  void initState() {
    super.initState();
    _startInit(widget.asyncLifecycle);
  }

  @override
  void didUpdateWidget(covariant AsyncLifecycleWrapper oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (oldWidget.asyncLifecycle != widget.asyncLifecycle) {
      _startDispose(oldWidget.asyncLifecycle);
      _startInit(widget.asyncLifecycle);
    }
  }

  @override
  void dispose() {
    _startDispose(widget.asyncLifecycle);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final placeholder = widget.placeholder;
    final isInitialized = _isInitialized;

    if (placeholder != null && !isInitialized) {
      return placeholder(context);
    }

    return widget.builder(context);
  }

  void _startInit(AsyncLifecycle asyncLifecycle) {
    final activeCallbackIdentity = Object();
    _activeCallbackIdentity = activeCallbackIdentity;
    asyncLifecycle.onInit().then((_) {
      if (activeCallbackIdentity == _activeCallbackIdentity) {
        setState(() {
          _isInitialized = true;
        });
      }
    });
  }

  void _startDispose(AsyncLifecycle asyncLifecycle) {
    widget.asyncLifecycle.onDispose();
  }
}
