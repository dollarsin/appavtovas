import 'package:freezed_annotation/freezed_annotation.dart';

enum RequestCodeMethod {
  @JsonValue('phone_call')
  phoneCall,
  @JsonValue('sms')
  sms,
}
