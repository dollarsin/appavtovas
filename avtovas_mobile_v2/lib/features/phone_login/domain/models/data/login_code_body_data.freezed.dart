// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'login_code_body_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$LoginCodeBodyData {

 String get phone; DateTime get requestAbleAt;
/// Create a copy of LoginCodeBodyData
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LoginCodeBodyDataCopyWith<LoginCodeBodyData> get copyWith => _$LoginCodeBodyDataCopyWithImpl<LoginCodeBodyData>(this as LoginCodeBodyData, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LoginCodeBodyData&&(identical(other.phone, phone) || other.phone == phone)&&(identical(other.requestAbleAt, requestAbleAt) || other.requestAbleAt == requestAbleAt));
}


@override
int get hashCode => Object.hash(runtimeType,phone,requestAbleAt);

@override
String toString() {
  return 'LoginCodeBodyData(phone: $phone, requestAbleAt: $requestAbleAt)';
}


}

/// @nodoc
abstract mixin class $LoginCodeBodyDataCopyWith<$Res>  {
  factory $LoginCodeBodyDataCopyWith(LoginCodeBodyData value, $Res Function(LoginCodeBodyData) _then) = _$LoginCodeBodyDataCopyWithImpl;
@useResult
$Res call({
 String phone, DateTime requestAbleAt
});




}
/// @nodoc
class _$LoginCodeBodyDataCopyWithImpl<$Res>
    implements $LoginCodeBodyDataCopyWith<$Res> {
  _$LoginCodeBodyDataCopyWithImpl(this._self, this._then);

  final LoginCodeBodyData _self;
  final $Res Function(LoginCodeBodyData) _then;

/// Create a copy of LoginCodeBodyData
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? phone = null,Object? requestAbleAt = null,}) {
  return _then(_self.copyWith(
phone: null == phone ? _self.phone : phone // ignore: cast_nullable_to_non_nullable
as String,requestAbleAt: null == requestAbleAt ? _self.requestAbleAt : requestAbleAt // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}

}


/// Adds pattern-matching-related methods to [LoginCodeBodyData].
extension LoginCodeBodyDataPatterns on LoginCodeBodyData {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _LoginCodeBodyData value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _LoginCodeBodyData() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _LoginCodeBodyData value)  $default,){
final _that = this;
switch (_that) {
case _LoginCodeBodyData():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _LoginCodeBodyData value)?  $default,){
final _that = this;
switch (_that) {
case _LoginCodeBodyData() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String phone,  DateTime requestAbleAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _LoginCodeBodyData() when $default != null:
return $default(_that.phone,_that.requestAbleAt);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String phone,  DateTime requestAbleAt)  $default,) {final _that = this;
switch (_that) {
case _LoginCodeBodyData():
return $default(_that.phone,_that.requestAbleAt);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String phone,  DateTime requestAbleAt)?  $default,) {final _that = this;
switch (_that) {
case _LoginCodeBodyData() when $default != null:
return $default(_that.phone,_that.requestAbleAt);case _:
  return null;

}
}

}

/// @nodoc


class _LoginCodeBodyData implements LoginCodeBodyData {
  const _LoginCodeBodyData({required this.phone, required this.requestAbleAt});
  

@override final  String phone;
@override final  DateTime requestAbleAt;

/// Create a copy of LoginCodeBodyData
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$LoginCodeBodyDataCopyWith<_LoginCodeBodyData> get copyWith => __$LoginCodeBodyDataCopyWithImpl<_LoginCodeBodyData>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _LoginCodeBodyData&&(identical(other.phone, phone) || other.phone == phone)&&(identical(other.requestAbleAt, requestAbleAt) || other.requestAbleAt == requestAbleAt));
}


@override
int get hashCode => Object.hash(runtimeType,phone,requestAbleAt);

@override
String toString() {
  return 'LoginCodeBodyData(phone: $phone, requestAbleAt: $requestAbleAt)';
}


}

/// @nodoc
abstract mixin class _$LoginCodeBodyDataCopyWith<$Res> implements $LoginCodeBodyDataCopyWith<$Res> {
  factory _$LoginCodeBodyDataCopyWith(_LoginCodeBodyData value, $Res Function(_LoginCodeBodyData) _then) = __$LoginCodeBodyDataCopyWithImpl;
@override @useResult
$Res call({
 String phone, DateTime requestAbleAt
});




}
/// @nodoc
class __$LoginCodeBodyDataCopyWithImpl<$Res>
    implements _$LoginCodeBodyDataCopyWith<$Res> {
  __$LoginCodeBodyDataCopyWithImpl(this._self, this._then);

  final _LoginCodeBodyData _self;
  final $Res Function(_LoginCodeBodyData) _then;

/// Create a copy of LoginCodeBodyData
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? phone = null,Object? requestAbleAt = null,}) {
  return _then(_LoginCodeBodyData(
phone: null == phone ? _self.phone : phone // ignore: cast_nullable_to_non_nullable
as String,requestAbleAt: null == requestAbleAt ? _self.requestAbleAt : requestAbleAt // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}


}

// dart format on
