import 'package:freezed_annotation/freezed_annotation.dart';

import 'request_code_method.dart';

part 'request_code_response.freezed.dart';
part 'request_code_response.g.dart';

@Freezed(copyWith: false)
abstract class RequestCodeResponse with _$RequestCodeResponse {
  const factory RequestCodeResponse({
    @JsonKey(name: 'phone_number') required String phoneNumber,
    @JsonKey(name: 'method') required RequestCodeMethod method,
    @JsonKey(name: 'request_after') required int requestAfter,
  }) = _RequestCodeResponse;

  factory RequestCodeResponse.fromJson(Map<String, dynamic> json) =>
      _$RequestCodeResponseFromJson(json);
}
