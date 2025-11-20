import 'package:freezed_annotation/freezed_annotation.dart';

import '../../data/models/citizenship/citizenship.dart';

part 'citizenships_list_page_state.freezed.dart';

@freezed
abstract class CitizenshipsListPageState with _$CitizenshipsListPageState {
  const factory CitizenshipsListPageState({
    String? query,
    @Default([]) List<Citizenship> citizenships,
  }) = _CitizenshipsListPageState;
}
