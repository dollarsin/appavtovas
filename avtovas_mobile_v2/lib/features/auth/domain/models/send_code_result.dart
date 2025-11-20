import 'package:freezed_annotation/freezed_annotation.dart';

part 'send_code_result.freezed.dart';

@freezed
abstract class SendCodeResult with _$SendCodeResult {
  const factory SendCodeResult({
    required String phone,
    required Duration requestAfter,
  }) = _SendCodeResult;
}
