import 'dart:async';

import 'package:dio/dio.dart';
import 'package:rxdart/rxdart.dart';

import '../../../../shared/base_page_manager/base_page_manager.dart';
import '../../../../shared/base_page_manager/base_page_state/base_page_state.dart';
import '../../../../shared/riverpod/async_lifecycle.dart';
import '../../data/api/points_list_api.dart';
import '../../data/models/points_list/points_list_request.dart';
import '../models/points_list_state.dart';

class PointsListManager extends BasePageManager<PointsListState>
    implements AsyncLifecycle {
  PointsListManager({required PointsListType type, required PointsListApi api})
    : _type = type,
      _api = api,
      super(initialState: const BasePageState.initial());
  final PointsListType _type;

  final PointsListApi _api;

  final _subs = CompositeSubscription();

  @override
  Future<void> onInit() async {
    stream
        .map((e) => e.data?.query ?? '')
        .distinct()
        .debounceTime(const Duration(milliseconds: 400))
        .listen((query) => _fetchData(query: query))
        .addTo(_subs);
  }

  Future<void> onStartEdit() async {
    if (state.isInitial) {
      await onQueryUpdate('');
    }
  }

  Future<void> onQueryUpdate(String query) async {
    if (query == state.data?.query) {
      return;
    }

    final cachedState = state;
    state = BasePageState.loading(
      data:
          cachedState.data?.copyWith(query: query) ??
          PointsListState(query: query),
    );
  }

  Future<void> _fetchData({String query = ''}) async {
    try {
      _api.cancelGetRequest();
      final response = await _api.get(
        queryParameters:
            PointsListRequest(
              type: _type,
              query: query.trim().isNotEmpty ? query : null,
            ).toJson(),
      );

      state = BasePageState.data(
        data:
            state.data?.copyWith(points: response.tripPoints) ??
            PointsListState(points: response.tripPoints, query: query),
      );
    } on DioException catch (e) {
      if (e.type == DioExceptionType.cancel) {}
    }
  }

  @override
  Future<void> onDispose() async {
    await _subs.clear();
    _api.cancelGetRequest();
  }
}
