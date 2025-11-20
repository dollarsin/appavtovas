import 'package:freezed_annotation/freezed_annotation.dart';

import 'request_code_method.dart';

part 'request_code_request.freezed.dart';
part 'request_code_request.g.dart';

@Freezed(copyWith: false)
abstract class RequestCodeRequest with _$RequestCodeRequest {
  const factory RequestCodeRequest({
    @JsonKey(name: 'phone_number') required String phone,
    @JsonKey(name: 'method') required RequestCodeMethod method,
  }) = _RequestCodeRequest;

  factory RequestCodeRequest.fromJson(Map<String, dynamic> json) =>
      _$RequestCodeRequestFromJson(json);
}
