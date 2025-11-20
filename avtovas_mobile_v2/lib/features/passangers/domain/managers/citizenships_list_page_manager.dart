import 'dart:async';

import 'package:dio/dio.dart';
import 'package:rxdart/rxdart.dart';

import '../../../../shared/base_page_manager/base_page_manager.dart';
import '../../../../shared/base_page_manager/base_page_state/base_page_state.dart';
import '../../../../shared/riverpod/async_lifecycle.dart';
import '../../data/api/citizenships_list_api.dart';
import '../../data/models/citizenship/citizenships_list_query_params.dart';
import '../models/citizenships_list_page_state.dart';

class CitizenshipsListManager extends BasePageManager<CitizenshipsListPageState>
    implements AsyncLifecycle {
  CitizenshipsListManager({required CitizenshipsListApi api})
    : _api = api,
      super(initialState: const BasePageState.loading());

  final CitizenshipsListApi _api;

  final _subs = CompositeSubscription();

  @override
  Future<void> onInit() async {
    stream
        .map((e) => e.data?.query ?? '')
        .startWith('')
        .distinct()
        .debounceTime(const Duration(milliseconds: 400))
        .listen((query) => _fetchData(query: query))
        .addTo(_subs);
  }

  Future<void> onQueryUpdate(String query) async {
    if (query == state.data?.query) {
      return;
    }

    final cachedState = state;
    state = BasePageState.loading(
      data:
          cachedState.data?.copyWith(query: query) ??
          CitizenshipsListPageState(query: query),
    );
  }

  Future<void> _fetchData({String query = ''}) async {
    try {
      _api.cancelGetRequest();
      final response = await _api.get(
        queryParameters:
            CitizenshipsListQueryParams(
              query: query.trim().isNotEmpty ? query : null,
            ).toJson(),
      );

      state = BasePageState.data(
        data:
            state.data?.copyWith(citizenships: response.citizenships) ??
            CitizenshipsListPageState(
              citizenships: response.citizenships,
              query: query,
            ),
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
