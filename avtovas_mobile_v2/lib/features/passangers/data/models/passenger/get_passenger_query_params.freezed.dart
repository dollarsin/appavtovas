// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'get_passenger_query_params.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$GetPassengerQueryParams {

@JsonKey(name: 'passenger_id') String get id;
/// Create a copy of GetPassengerQueryParams
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GetPassengerQueryParamsCopyWith<GetPassengerQueryParams> get copyWith => _$GetPassengerQueryParamsCopyWithImpl<GetPassengerQueryParams>(this as GetPassengerQueryParams, _$identity);

  /// Serializes this GetPassengerQueryParams to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GetPassengerQueryParams&&(identical(other.id, id) || other.id == id));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id);

@override
String toString() {
  return 'GetPassengerQueryParams(id: $id)';
}


}

/// @nodoc
abstract mixin class $GetPassengerQueryParamsCopyWith<$Res>  {
  factory $GetPassengerQueryParamsCopyWith(GetPassengerQueryParams value, $Res Function(GetPassengerQueryParams) _then) = _$GetPassengerQueryParamsCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'passenger_id') String id
});




}
/// @nodoc
class _$GetPassengerQueryParamsCopyWithImpl<$Res>
    implements $GetPassengerQueryParamsCopyWith<$Res> {
  _$GetPassengerQueryParamsCopyWithImpl(this._self, this._then);

  final GetPassengerQueryParams _self;
  final $Res Function(GetPassengerQueryParams) _then;

/// Create a copy of GetPassengerQueryParams
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [GetPassengerQueryParams].
extension GetPassengerQueryParamsPatterns on GetPassengerQueryParams {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _GetPassengerQueryParams value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _GetPassengerQueryParams() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _GetPassengerQueryParams value)  $default,){
final _that = this;
switch (_that) {
case _GetPassengerQueryParams():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _GetPassengerQueryParams value)?  $default,){
final _that = this;
switch (_that) {
case _GetPassengerQueryParams() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'passenger_id')  String id)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _GetPassengerQueryParams() when $default != null:
return $default(_that.id);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'passenger_id')  String id)  $default,) {final _that = this;
switch (_that) {
case _GetPassengerQueryParams():
return $default(_that.id);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'passenger_id')  String id)?  $default,) {final _that = this;
switch (_that) {
case _GetPassengerQueryParams() when $default != null:
return $default(_that.id);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _GetPassengerQueryParams implements GetPassengerQueryParams {
  const _GetPassengerQueryParams({@JsonKey(name: 'passenger_id') required this.id});
  factory _GetPassengerQueryParams.fromJson(Map<String, dynamic> json) => _$GetPassengerQueryParamsFromJson(json);

@override@JsonKey(name: 'passenger_id') final  String id;

/// Create a copy of GetPassengerQueryParams
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$GetPassengerQueryParamsCopyWith<_GetPassengerQueryParams> get copyWith => __$GetPassengerQueryParamsCopyWithImpl<_GetPassengerQueryParams>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$GetPassengerQueryParamsToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GetPassengerQueryParams&&(identical(other.id, id) || other.id == id));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id);

@override
String toString() {
  return 'GetPassengerQueryParams(id: $id)';
}


}

/// @nodoc
abstract mixin class _$GetPassengerQueryParamsCopyWith<$Res> implements $GetPassengerQueryParamsCopyWith<$Res> {
  factory _$GetPassengerQueryParamsCopyWith(_GetPassengerQueryParams value, $Res Function(_GetPassengerQueryParams) _then) = __$GetPassengerQueryParamsCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'passenger_id') String id
});




}
/// @nodoc
class __$GetPassengerQueryParamsCopyWithImpl<$Res>
    implements _$GetPassengerQueryParamsCopyWith<$Res> {
  __$GetPassengerQueryParamsCopyWithImpl(this._self, this._then);

  final _GetPassengerQueryParams _self;
  final $Res Function(_GetPassengerQueryParams) _then;

/// Create a copy of GetPassengerQueryParams
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,}) {
  return _then(_GetPassengerQueryParams(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
