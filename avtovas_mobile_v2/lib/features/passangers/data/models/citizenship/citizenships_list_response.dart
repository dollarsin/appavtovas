import 'package:freezed_annotation/freezed_annotation.dart';

import 'citizenship.dart';

part 'citizenships_list_response.freezed.dart';

part 'citizenships_list_response.g.dart';

@freezed
abstract class CitizenshipsListResponse with _$CitizenshipsListResponse {
  const factory CitizenshipsListResponse({
    @JsonKey(name: 'citizenships') @Default([]) List<Citizenship> citizenships,
  }) = _CitizenshipsListResponse;

  factory CitizenshipsListResponse.fromJson(Map<String, dynamic> json) =>
      _$CitizenshipsListResponseFromJson(json);
}
