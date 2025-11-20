import 'dart:async';

import '../../../../shared/base_page_manager/base_page_manager.dart';
import '../../../../shared/base_page_manager/base_page_state/base_page_state.dart';
import '../../../../shared/riverpod/async_lifecycle.dart';
import '../../data/api/passenger_list_api.dart';
import '../../data/models/passenger/passenger.dart';
import '../models/passengers_list_page_state.dart';

class PassengersListPageManager extends BasePageManager<PassengersListPageState>
    implements AsyncLifecycle {
  PassengersListPageManager({required PassengerListApi api}) : _api = api;

  final PassengerListApi _api;

  @override
  Future<void> onInit() async {
    unawaited(_initialFetch());
  }

  @override
  Future<void> onDispose() async {
    _api.cancelGetRequest();
  }

  Future<void> onPassengerTap(Passenger passenger) async {
    // TODO(lmepol): implement onPassengerTap
    throw UnimplementedError();
  }

  Future<void> onAddPassengerTap() async {
    // TODO(lmepol): implement onAddPassengerTap
    throw UnimplementedError();
  }

  Future<void> _initialFetch() async {
    await fetchData(_fetch, _handleError);
  }

  Future<PassengersListPageState> _fetch() async {
    final response = await _api.get();

    return state.requireData.copyWith(passengers: response.passengers);
  }

  BasePageState<PassengersListPageState> _handleError(
    BasePageState<PassengersListPageState> state,
    Object error,
  ) {
    return BasePageErrorState(data: state.data, error: error);
  }
}
