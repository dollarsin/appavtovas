import 'package:freezed_annotation/freezed_annotation.dart';

import '../../data/models/passenger/passenger.dart';

part 'passengers_list_page_state.freezed.dart';

@freezed
abstract class PassengersListPageState with _$PassengersListPageState {
  const factory PassengersListPageState({required List<Passenger> passengers}) =
      _PassengersListPageState;
}
