// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'delete_passenger_query_params.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$DeletePassengerQueryParams {

@JsonKey(name: 'passenger_id') String get id;
/// Create a copy of DeletePassengerQueryParams
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DeletePassengerQueryParamsCopyWith<DeletePassengerQueryParams> get copyWith => _$DeletePassengerQueryParamsCopyWithImpl<DeletePassengerQueryParams>(this as DeletePassengerQueryParams, _$identity);

  /// Serializes this DeletePassengerQueryParams to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DeletePassengerQueryParams&&(identical(other.id, id) || other.id == id));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id);

@override
String toString() {
  return 'DeletePassengerQueryParams(id: $id)';
}


}

/// @nodoc
abstract mixin class $DeletePassengerQueryParamsCopyWith<$Res>  {
  factory $DeletePassengerQueryParamsCopyWith(DeletePassengerQueryParams value, $Res Function(DeletePassengerQueryParams) _then) = _$DeletePassengerQueryParamsCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'passenger_id') String id
});




}
/// @nodoc
class _$DeletePassengerQueryParamsCopyWithImpl<$Res>
    implements $DeletePassengerQueryParamsCopyWith<$Res> {
  _$DeletePassengerQueryParamsCopyWithImpl(this._self, this._then);

  final DeletePassengerQueryParams _self;
  final $Res Function(DeletePassengerQueryParams) _then;

/// Create a copy of DeletePassengerQueryParams
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [DeletePassengerQueryParams].
extension DeletePassengerQueryParamsPatterns on DeletePassengerQueryParams {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _DeletePassengerQueryParams value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _DeletePassengerQueryParams() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _DeletePassengerQueryParams value)  $default,){
final _that = this;
switch (_that) {
case _DeletePassengerQueryParams():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _DeletePassengerQueryParams value)?  $default,){
final _that = this;
switch (_that) {
case _DeletePassengerQueryParams() when $default != null:
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
case _DeletePassengerQueryParams() when $default != null:
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
case _DeletePassengerQueryParams():
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
case _DeletePassengerQueryParams() when $default != null:
return $default(_that.id);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _DeletePassengerQueryParams implements DeletePassengerQueryParams {
  const _DeletePassengerQueryParams({@JsonKey(name: 'passenger_id') required this.id});
  factory _DeletePassengerQueryParams.fromJson(Map<String, dynamic> json) => _$DeletePassengerQueryParamsFromJson(json);

@override@JsonKey(name: 'passenger_id') final  String id;

/// Create a copy of DeletePassengerQueryParams
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DeletePassengerQueryParamsCopyWith<_DeletePassengerQueryParams> get copyWith => __$DeletePassengerQueryParamsCopyWithImpl<_DeletePassengerQueryParams>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$DeletePassengerQueryParamsToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _DeletePassengerQueryParams&&(identical(other.id, id) || other.id == id));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id);

@override
String toString() {
  return 'DeletePassengerQueryParams(id: $id)';
}


}

/// @nodoc
abstract mixin class _$DeletePassengerQueryParamsCopyWith<$Res> implements $DeletePassengerQueryParamsCopyWith<$Res> {
  factory _$DeletePassengerQueryParamsCopyWith(_DeletePassengerQueryParams value, $Res Function(_DeletePassengerQueryParams) _then) = __$DeletePassengerQueryParamsCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'passenger_id') String id
});




}
/// @nodoc
class __$DeletePassengerQueryParamsCopyWithImpl<$Res>
    implements _$DeletePassengerQueryParamsCopyWith<$Res> {
  __$DeletePassengerQueryParamsCopyWithImpl(this._self, this._then);

  final _DeletePassengerQueryParams _self;
  final $Res Function(_DeletePassengerQueryParams) _then;

/// Create a copy of DeletePassengerQueryParams
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,}) {
  return _then(_DeletePassengerQueryParams(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
