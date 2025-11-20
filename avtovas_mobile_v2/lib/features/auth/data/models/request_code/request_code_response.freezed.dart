// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'request_code_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$RequestCodeResponse {

@JsonKey(name: 'phone_number') String get phoneNumber;@JsonKey(name: 'method') RequestCodeMethod get method;@JsonKey(name: 'request_after') int get requestAfter;

  /// Serializes this RequestCodeResponse to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RequestCodeResponse&&(identical(other.phoneNumber, phoneNumber) || other.phoneNumber == phoneNumber)&&(identical(other.method, method) || other.method == method)&&(identical(other.requestAfter, requestAfter) || other.requestAfter == requestAfter));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,phoneNumber,method,requestAfter);

@override
String toString() {
  return 'RequestCodeResponse(phoneNumber: $phoneNumber, method: $method, requestAfter: $requestAfter)';
}


}




/// Adds pattern-matching-related methods to [RequestCodeResponse].
extension RequestCodeResponsePatterns on RequestCodeResponse {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _RequestCodeResponse value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _RequestCodeResponse() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _RequestCodeResponse value)  $default,){
final _that = this;
switch (_that) {
case _RequestCodeResponse():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _RequestCodeResponse value)?  $default,){
final _that = this;
switch (_that) {
case _RequestCodeResponse() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'phone_number')  String phoneNumber, @JsonKey(name: 'method')  RequestCodeMethod method, @JsonKey(name: 'request_after')  int requestAfter)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _RequestCodeResponse() when $default != null:
return $default(_that.phoneNumber,_that.method,_that.requestAfter);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'phone_number')  String phoneNumber, @JsonKey(name: 'method')  RequestCodeMethod method, @JsonKey(name: 'request_after')  int requestAfter)  $default,) {final _that = this;
switch (_that) {
case _RequestCodeResponse():
return $default(_that.phoneNumber,_that.method,_that.requestAfter);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'phone_number')  String phoneNumber, @JsonKey(name: 'method')  RequestCodeMethod method, @JsonKey(name: 'request_after')  int requestAfter)?  $default,) {final _that = this;
switch (_that) {
case _RequestCodeResponse() when $default != null:
return $default(_that.phoneNumber,_that.method,_that.requestAfter);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _RequestCodeResponse implements RequestCodeResponse {
  const _RequestCodeResponse({@JsonKey(name: 'phone_number') required this.phoneNumber, @JsonKey(name: 'method') required this.method, @JsonKey(name: 'request_after') required this.requestAfter});
  factory _RequestCodeResponse.fromJson(Map<String, dynamic> json) => _$RequestCodeResponseFromJson(json);

@override@JsonKey(name: 'phone_number') final  String phoneNumber;
@override@JsonKey(name: 'method') final  RequestCodeMethod method;
@override@JsonKey(name: 'request_after') final  int requestAfter;


@override
Map<String, dynamic> toJson() {
  return _$RequestCodeResponseToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _RequestCodeResponse&&(identical(other.phoneNumber, phoneNumber) || other.phoneNumber == phoneNumber)&&(identical(other.method, method) || other.method == method)&&(identical(other.requestAfter, requestAfter) || other.requestAfter == requestAfter));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,phoneNumber,method,requestAfter);

@override
String toString() {
  return 'RequestCodeResponse(phoneNumber: $phoneNumber, method: $method, requestAfter: $requestAfter)';
}


}




// dart format on
