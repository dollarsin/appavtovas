import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'base_page_state/base_page_state.dart';

typedef BasePageLoadDataCallback<Data extends Object> = Future<Data> Function();
typedef BasePageOnErrorCallback<Data extends Object> =
    BasePageState<Data> Function(BasePageState<Data> state, Object error);

typedef BasePageSendDataCallback<Data extends Object> = Future<Data> Function();

abstract class BasePageManager<Data extends Object>
    extends StateNotifier<BasePageState<Data>> {
  BasePageManager({
    BasePageState<Data> initialState = const BasePageState.initial(),
  }) : super(initialState);

  Future<void> fetchData(
    BasePageLoadDataCallback<Data> loadDataCallback,
    BasePageOnErrorCallback<Data> handleErrorCallback,
  ) async {
    state = BasePageState<Data>.loading(data: state.data);
    try {
      final data = await loadDataCallback();
      state = BasePageState.data(data: data);
    } on Object catch (e) {
      state = handleErrorCallback(state, e);
    }
  }

  Future<void> sendData(
    BasePageSendDataCallback<Data> sendDataCallback,
    BasePageOnErrorCallback<Data> handleErrorCallback,
  ) async {
    state = BasePageState<Data>.loading(data: state.data);
    try {
      final data = await sendDataCallback();
      state = BasePageState.data(data: data);
    } on Object catch (e) {
      state = handleErrorCallback(state, e);
    }
  }
}
