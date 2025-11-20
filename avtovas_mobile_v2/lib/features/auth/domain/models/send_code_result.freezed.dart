// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'send_code_result.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$SendCodeResult {

 String get phone; Duration get requestAfter;
/// Create a copy of SendCodeResult
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SendCodeResultCopyWith<SendCodeResult> get copyWith => _$SendCodeResultCopyWithImpl<SendCodeResult>(this as SendCodeResult, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SendCodeResult&&(identical(other.phone, phone) || other.phone == phone)&&(identical(other.requestAfter, requestAfter) || other.requestAfter == requestAfter));
}


@override
int get hashCode => Object.hash(runtimeType,phone,requestAfter);

@override
String toString() {
  return 'SendCodeResult(phone: $phone, requestAfter: $requestAfter)';
}


}

/// @nodoc
abstract mixin class $SendCodeResultCopyWith<$Res>  {
  factory $SendCodeResultCopyWith(SendCodeResult value, $Res Function(SendCodeResult) _then) = _$SendCodeResultCopyWithImpl;
@useResult
$Res call({
 String phone, Duration requestAfter
});




}
/// @nodoc
class _$SendCodeResultCopyWithImpl<$Res>
    implements $SendCodeResultCopyWith<$Res> {
  _$SendCodeResultCopyWithImpl(this._self, this._then);

  final SendCodeResult _self;
  final $Res Function(SendCodeResult) _then;

/// Create a copy of SendCodeResult
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? phone = null,Object? requestAfter = null,}) {
  return _then(_self.copyWith(
phone: null == phone ? _self.phone : phone // ignore: cast_nullable_to_non_nullable
as String,requestAfter: null == requestAfter ? _self.requestAfter : requestAfter // ignore: cast_nullable_to_non_nullable
as Duration,
  ));
}

}


/// Adds pattern-matching-related methods to [SendCodeResult].
extension SendCodeResultPatterns on SendCodeResult {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SendCodeResult value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SendCodeResult() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SendCodeResult value)  $default,){
final _that = this;
switch (_that) {
case _SendCodeResult():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SendCodeResult value)?  $default,){
final _that = this;
switch (_that) {
case _SendCodeResult() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String phone,  Duration requestAfter)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SendCodeResult() when $default != null:
return $default(_that.phone,_that.requestAfter);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String phone,  Duration requestAfter)  $default,) {final _that = this;
switch (_that) {
case _SendCodeResult():
return $default(_that.phone,_that.requestAfter);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String phone,  Duration requestAfter)?  $default,) {final _that = this;
switch (_that) {
case _SendCodeResult() when $default != null:
return $default(_that.phone,_that.requestAfter);case _:
  return null;

}
}

}

/// @nodoc


class _SendCodeResult implements SendCodeResult {
  const _SendCodeResult({required this.phone, required this.requestAfter});
  

@override final  String phone;
@override final  Duration requestAfter;

/// Create a copy of SendCodeResult
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SendCodeResultCopyWith<_SendCodeResult> get copyWith => __$SendCodeResultCopyWithImpl<_SendCodeResult>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SendCodeResult&&(identical(other.phone, phone) || other.phone == phone)&&(identical(other.requestAfter, requestAfter) || other.requestAfter == requestAfter));
}


@override
int get hashCode => Object.hash(runtimeType,phone,requestAfter);

@override
String toString() {
  return 'SendCodeResult(phone: $phone, requestAfter: $requestAfter)';
}


}

/// @nodoc
abstract mixin class _$SendCodeResultCopyWith<$Res> implements $SendCodeResultCopyWith<$Res> {
  factory _$SendCodeResultCopyWith(_SendCodeResult value, $Res Function(_SendCodeResult) _then) = __$SendCodeResultCopyWithImpl;
@override @useResult
$Res call({
 String phone, Duration requestAfter
});




}
/// @nodoc
class __$SendCodeResultCopyWithImpl<$Res>
    implements _$SendCodeResultCopyWith<$Res> {
  __$SendCodeResultCopyWithImpl(this._self, this._then);

  final _SendCodeResult _self;
  final $Res Function(_SendCodeResult) _then;

/// Create a copy of SendCodeResult
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? phone = null,Object? requestAfter = null,}) {
  return _then(_SendCodeResult(
phone: null == phone ? _self.phone : phone // ignore: cast_nullable_to_non_nullable
as String,requestAfter: null == requestAfter ? _self.requestAfter : requestAfter // ignore: cast_nullable_to_non_nullable
as Duration,
  ));
}


}

// dart format on
