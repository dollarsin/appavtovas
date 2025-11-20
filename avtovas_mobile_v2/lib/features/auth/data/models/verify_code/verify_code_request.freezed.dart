// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'verify_code_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$VerifyCodeRequest {

@JsonKey(name: 'phone_number') String get phoneNumber;@JsonKey(name: 'code') int get code;

  /// Serializes this VerifyCodeRequest to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is VerifyCodeRequest&&(identical(other.phoneNumber, phoneNumber) || other.phoneNumber == phoneNumber)&&(identical(other.code, code) || other.code == code));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,phoneNumber,code);

@override
String toString() {
  return 'VerifyCodeRequest(phoneNumber: $phoneNumber, code: $code)';
}


}




/// Adds pattern-matching-related methods to [VerifyCodeRequest].
extension VerifyCodeRequestPatterns on VerifyCodeRequest {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _VerifyCodeRequest value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _VerifyCodeRequest() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _VerifyCodeRequest value)  $default,){
final _that = this;
switch (_that) {
case _VerifyCodeRequest():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _VerifyCodeRequest value)?  $default,){
final _that = this;
switch (_that) {
case _VerifyCodeRequest() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'phone_number')  String phoneNumber, @JsonKey(name: 'code')  int code)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _VerifyCodeRequest() when $default != null:
return $default(_that.phoneNumber,_that.code);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'phone_number')  String phoneNumber, @JsonKey(name: 'code')  int code)  $default,) {final _that = this;
switch (_that) {
case _VerifyCodeRequest():
return $default(_that.phoneNumber,_that.code);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'phone_number')  String phoneNumber, @JsonKey(name: 'code')  int code)?  $default,) {final _that = this;
switch (_that) {
case _VerifyCodeRequest() when $default != null:
return $default(_that.phoneNumber,_that.code);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _VerifyCodeRequest implements VerifyCodeRequest {
  const _VerifyCodeRequest({@JsonKey(name: 'phone_number') required this.phoneNumber, @JsonKey(name: 'code') required this.code});
  factory _VerifyCodeRequest.fromJson(Map<String, dynamic> json) => _$VerifyCodeRequestFromJson(json);

@override@JsonKey(name: 'phone_number') final  String phoneNumber;
@override@JsonKey(name: 'code') final  int code;


@override
Map<String, dynamic> toJson() {
  return _$VerifyCodeRequestToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _VerifyCodeRequest&&(identical(other.phoneNumber, phoneNumber) || other.phoneNumber == phoneNumber)&&(identical(other.code, code) || other.code == code));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,phoneNumber,code);

@override
String toString() {
  return 'VerifyCodeRequest(phoneNumber: $phoneNumber, code: $code)';
}


}




// dart format on
