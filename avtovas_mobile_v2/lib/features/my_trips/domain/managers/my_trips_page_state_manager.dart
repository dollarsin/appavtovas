import '../../../../shared/base_page_manager/base_page_manager.dart';
import '../../../../shared/base_page_manager/base_page_state/base_page_state.dart';
import '../../../../shared/riverpod/async_lifecycle.dart';
import '../../data/api/my_trips_api.dart';
import '../models/states/my_trips_page_state.dart';

class MyTripsPageStateManager extends BasePageManager<MyTripsPageState>
    implements AsyncLifecycle {
  MyTripsPageStateManager({required MyTripsApi myTripsApi})
    : _myTripsApi = myTripsApi,
      super();

  final MyTripsApi _myTripsApi;

  @override
  Future<void> onInit() async {
    await fetchData(
      () => _fetchData(),
      (state, error) => _handleErrorCallback(state, error),
    );
  }

  Future<MyTripsPageState> _fetchData() async {
    final response = await _myTripsApi.get();
    return MyTripsPageState(trips: response.trips);
  }

  BasePageState<MyTripsPageState> _handleErrorCallback(
    BasePageState<MyTripsPageState> state,
    Object error,
  ) {
    return BasePageState.error(data: state.data, error: error);
  }

  @override
  Future<void> onDispose() async {
    _myTripsApi.cancelGetRequest();
    super.dispose();
  }
}
