// @dart=3.8
import 'package:freezed_annotation/freezed_annotation.dart';

part 'citizenships_list_query_params.freezed.dart';

part 'citizenships_list_query_params.g.dart';

@freezed
abstract class CitizenshipsListQueryParams with _$CitizenshipsListQueryParams {
  const factory CitizenshipsListQueryParams({
    @JsonKey(name: 'query', includeIfNull: false) String? query,
  }) = _CitizenshipsListQueryParams;

  factory CitizenshipsListQueryParams.fromJson(Map<String, dynamic> json) =>
      _$CitizenshipsListQueryParamsFromJson(json);
}
