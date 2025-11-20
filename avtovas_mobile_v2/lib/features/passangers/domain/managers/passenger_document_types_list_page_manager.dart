import 'dart:async';

import 'package:dio/dio.dart';
import 'package:rxdart/rxdart.dart';

import '../../../../shared/base_page_manager/base_page_manager.dart';
import '../../../../shared/base_page_manager/base_page_state/base_page_state.dart';
import '../../../../shared/riverpod/async_lifecycle.dart';
import '../../data/api/passenger_document_types_list_api.dart';
import '../../data/models/passanger_document/passenger_document_types_list_query_params.dart';
import '../models/passenger_document_types_list_page_state.dart';

class PassengerDocumentTypesListManager
    extends BasePageManager<PassengerDocumentTypesListPageState>
    implements AsyncLifecycle {
  PassengerDocumentTypesListManager({
    required PassengerDocumentTypesListApi api,
  }) : _api = api,
       super(initialState: const BasePageState.initial());

  final PassengerDocumentTypesListApi _api;

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
          PassengerDocumentTypesListPageState(query: query),
    );
  }

  Future<void> onPageOpen() async {
    if (!state.isInitial) {
      return;
    }

    state = BasePageState.loading(
      data:
          state.data?.copyWith(query: '') ??
          const PassengerDocumentTypesListPageState(query: ''),
    );
    await _fetchData(query: state.data?.query ?? '');
  }

  Future<void> _fetchData({String query = ''}) async {
    try {
      _api.cancelGetRequest();
      final response = await _api.get(
        queryParameters:
            PassengerDocumentTypesListQueryParams(
              query: query.trim().isNotEmpty ? query : null,
            ).toJson(),
      );

      state = BasePageState.data(
        data:
            state.data?.copyWith(
              passengerDocumentTypes: response.passengersDocuments,
            ) ??
            PassengerDocumentTypesListPageState(
              passengerDocumentTypes: response.passengersDocuments,
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
