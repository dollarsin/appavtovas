import 'package:flutter/foundation.dart';

class _StreamValueListenable<T> extends ValueNotifier<T> {
  _StreamValueListenable({required T initialState, required Stream<T> updates})
    : super(initialState) {
    updates.listen((data) => value = data);
  }
}

extension StreamValueListenableExt<T> on Stream<T> {
  ValueListenable<T> toValueListenable({required T initialState}) {
    return _StreamValueListenable(initialState: initialState, updates: this);
  }
}
