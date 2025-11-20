// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'verify_code_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$VerifyCodeResponse {

@JsonKey(name: 'access_token') String get accessToken;@JsonKey(name: 'expires_in') int get expiresIn;@JsonKey(name: 'is_new_user') bool get isNewUser;

  /// Serializes this VerifyCodeResponse to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is VerifyCodeResponse&&(identical(other.accessToken, accessToken) || other.accessToken == accessToken)&&(identical(other.expiresIn, expiresIn) || other.expiresIn == expiresIn)&&(identical(other.isNewUser, isNewUser) || other.isNewUser == isNewUser));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,accessToken,expiresIn,isNewUser);

@override
String toString() {
  return 'VerifyCodeResponse(accessToken: $accessToken, expiresIn: $expiresIn, isNewUser: $isNewUser)';
}


}




/// Adds pattern-matching-related methods to [VerifyCodeResponse].
extension VerifyCodeResponsePatterns on VerifyCodeResponse {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _VerifyCodeResponse value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _VerifyCodeResponse() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _VerifyCodeResponse value)  $default,){
final _that = this;
switch (_that) {
case _VerifyCodeResponse():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _VerifyCodeResponse value)?  $default,){
final _that = this;
switch (_that) {
case _VerifyCodeResponse() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'access_token')  String accessToken, @JsonKey(name: 'expires_in')  int expiresIn, @JsonKey(name: 'is_new_user')  bool isNewUser)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _VerifyCodeResponse() when $default != null:
return $default(_that.accessToken,_that.expiresIn,_that.isNewUser);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'access_token')  String accessToken, @JsonKey(name: 'expires_in')  int expiresIn, @JsonKey(name: 'is_new_user')  bool isNewUser)  $default,) {final _that = this;
switch (_that) {
case _VerifyCodeResponse():
return $default(_that.accessToken,_that.expiresIn,_that.isNewUser);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'access_token')  String accessToken, @JsonKey(name: 'expires_in')  int expiresIn, @JsonKey(name: 'is_new_user')  bool isNewUser)?  $default,) {final _that = this;
switch (_that) {
case _VerifyCodeResponse() when $default != null:
return $default(_that.accessToken,_that.expiresIn,_that.isNewUser);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _VerifyCodeResponse implements VerifyCodeResponse {
  const _VerifyCodeResponse({@JsonKey(name: 'access_token') required this.accessToken, @JsonKey(name: 'expires_in') required this.expiresIn, @JsonKey(name: 'is_new_user') required this.isNewUser});
  factory _VerifyCodeResponse.fromJson(Map<String, dynamic> json) => _$VerifyCodeResponseFromJson(json);

@override@JsonKey(name: 'access_token') final  String accessToken;
@override@JsonKey(name: 'expires_in') final  int expiresIn;
@override@JsonKey(name: 'is_new_user') final  bool isNewUser;


@override
Map<String, dynamic> toJson() {
  return _$VerifyCodeResponseToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _VerifyCodeResponse&&(identical(other.accessToken, accessToken) || other.accessToken == accessToken)&&(identical(other.expiresIn, expiresIn) || other.expiresIn == expiresIn)&&(identical(other.isNewUser, isNewUser) || other.isNewUser == isNewUser));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,accessToken,expiresIn,isNewUser);

@override
String toString() {
  return 'VerifyCodeResponse(accessToken: $accessToken, expiresIn: $expiresIn, isNewUser: $isNewUser)';
}


}




// dart format on
