// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'login_code_body_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$LoginCodeBodyState {

 String get phone; DateTime get requestAbleAt; String get enteredCode;
/// Create a copy of LoginCodeBodyState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LoginCodeBodyStateCopyWith<LoginCodeBodyState> get copyWith => _$LoginCodeBodyStateCopyWithImpl<LoginCodeBodyState>(this as LoginCodeBodyState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LoginCodeBodyState&&(identical(other.phone, phone) || other.phone == phone)&&(identical(other.requestAbleAt, requestAbleAt) || other.requestAbleAt == requestAbleAt)&&(identical(other.enteredCode, enteredCode) || other.enteredCode == enteredCode));
}


@override
int get hashCode => Object.hash(runtimeType,phone,requestAbleAt,enteredCode);

@override
String toString() {
  return 'LoginCodeBodyState(phone: $phone, requestAbleAt: $requestAbleAt, enteredCode: $enteredCode)';
}


}

/// @nodoc
abstract mixin class $LoginCodeBodyStateCopyWith<$Res>  {
  factory $LoginCodeBodyStateCopyWith(LoginCodeBodyState value, $Res Function(LoginCodeBodyState) _then) = _$LoginCodeBodyStateCopyWithImpl;
@useResult
$Res call({
 String phone, DateTime requestAbleAt, String enteredCode
});




}
/// @nodoc
class _$LoginCodeBodyStateCopyWithImpl<$Res>
    implements $LoginCodeBodyStateCopyWith<$Res> {
  _$LoginCodeBodyStateCopyWithImpl(this._self, this._then);

  final LoginCodeBodyState _self;
  final $Res Function(LoginCodeBodyState) _then;

/// Create a copy of LoginCodeBodyState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? phone = null,Object? requestAbleAt = null,Object? enteredCode = null,}) {
  return _then(_self.copyWith(
phone: null == phone ? _self.phone : phone // ignore: cast_nullable_to_non_nullable
as String,requestAbleAt: null == requestAbleAt ? _self.requestAbleAt : requestAbleAt // ignore: cast_nullable_to_non_nullable
as DateTime,enteredCode: null == enteredCode ? _self.enteredCode : enteredCode // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [LoginCodeBodyState].
extension LoginCodeBodyStatePatterns on LoginCodeBodyState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _LoginCodeBodyState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _LoginCodeBodyState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _LoginCodeBodyState value)  $default,){
final _that = this;
switch (_that) {
case _LoginCodeBodyState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _LoginCodeBodyState value)?  $default,){
final _that = this;
switch (_that) {
case _LoginCodeBodyState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String phone,  DateTime requestAbleAt,  String enteredCode)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _LoginCodeBodyState() when $default != null:
return $default(_that.phone,_that.requestAbleAt,_that.enteredCode);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String phone,  DateTime requestAbleAt,  String enteredCode)  $default,) {final _that = this;
switch (_that) {
case _LoginCodeBodyState():
return $default(_that.phone,_that.requestAbleAt,_that.enteredCode);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String phone,  DateTime requestAbleAt,  String enteredCode)?  $default,) {final _that = this;
switch (_that) {
case _LoginCodeBodyState() when $default != null:
return $default(_that.phone,_that.requestAbleAt,_that.enteredCode);case _:
  return null;

}
}

}

/// @nodoc


class _LoginCodeBodyState implements LoginCodeBodyState {
  const _LoginCodeBodyState({required this.phone, required this.requestAbleAt, this.enteredCode = ''});
  

@override final  String phone;
@override final  DateTime requestAbleAt;
@override@JsonKey() final  String enteredCode;

/// Create a copy of LoginCodeBodyState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$LoginCodeBodyStateCopyWith<_LoginCodeBodyState> get copyWith => __$LoginCodeBodyStateCopyWithImpl<_LoginCodeBodyState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _LoginCodeBodyState&&(identical(other.phone, phone) || other.phone == phone)&&(identical(other.requestAbleAt, requestAbleAt) || other.requestAbleAt == requestAbleAt)&&(identical(other.enteredCode, enteredCode) || other.enteredCode == enteredCode));
}


@override
int get hashCode => Object.hash(runtimeType,phone,requestAbleAt,enteredCode);

@override
String toString() {
  return 'LoginCodeBodyState(phone: $phone, requestAbleAt: $requestAbleAt, enteredCode: $enteredCode)';
}


}

/// @nodoc
abstract mixin class _$LoginCodeBodyStateCopyWith<$Res> implements $LoginCodeBodyStateCopyWith<$Res> {
  factory _$LoginCodeBodyStateCopyWith(_LoginCodeBodyState value, $Res Function(_LoginCodeBodyState) _then) = __$LoginCodeBodyStateCopyWithImpl;
@override @useResult
$Res call({
 String phone, DateTime requestAbleAt, String enteredCode
});




}
/// @nodoc
class __$LoginCodeBodyStateCopyWithImpl<$Res>
    implements _$LoginCodeBodyStateCopyWith<$Res> {
  __$LoginCodeBodyStateCopyWithImpl(this._self, this._then);

  final _LoginCodeBodyState _self;
  final $Res Function(_LoginCodeBodyState) _then;

/// Create a copy of LoginCodeBodyState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? phone = null,Object? requestAbleAt = null,Object? enteredCode = null,}) {
  return _then(_LoginCodeBodyState(
phone: null == phone ? _self.phone : phone // ignore: cast_nullable_to_non_nullable
as String,requestAbleAt: null == requestAbleAt ? _self.requestAbleAt : requestAbleAt // ignore: cast_nullable_to_non_nullable
as DateTime,enteredCode: null == enteredCode ? _self.enteredCode : enteredCode // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
