// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'passenger_list_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$PassengerListResponse {

@JsonKey(name: 'passengers') List<Passenger> get passengers;
/// Create a copy of PassengerListResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PassengerListResponseCopyWith<PassengerListResponse> get copyWith => _$PassengerListResponseCopyWithImpl<PassengerListResponse>(this as PassengerListResponse, _$identity);

  /// Serializes this PassengerListResponse to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PassengerListResponse&&const DeepCollectionEquality().equals(other.passengers, passengers));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(passengers));

@override
String toString() {
  return 'PassengerListResponse(passengers: $passengers)';
}


}

/// @nodoc
abstract mixin class $PassengerListResponseCopyWith<$Res>  {
  factory $PassengerListResponseCopyWith(PassengerListResponse value, $Res Function(PassengerListResponse) _then) = _$PassengerListResponseCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'passengers') List<Passenger> passengers
});




}
/// @nodoc
class _$PassengerListResponseCopyWithImpl<$Res>
    implements $PassengerListResponseCopyWith<$Res> {
  _$PassengerListResponseCopyWithImpl(this._self, this._then);

  final PassengerListResponse _self;
  final $Res Function(PassengerListResponse) _then;

/// Create a copy of PassengerListResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? passengers = null,}) {
  return _then(_self.copyWith(
passengers: null == passengers ? _self.passengers : passengers // ignore: cast_nullable_to_non_nullable
as List<Passenger>,
  ));
}

}


/// Adds pattern-matching-related methods to [PassengerListResponse].
extension PassengerListResponsePatterns on PassengerListResponse {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PassengerListResponse value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PassengerListResponse() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PassengerListResponse value)  $default,){
final _that = this;
switch (_that) {
case _PassengerListResponse():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PassengerListResponse value)?  $default,){
final _that = this;
switch (_that) {
case _PassengerListResponse() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'passengers')  List<Passenger> passengers)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PassengerListResponse() when $default != null:
return $default(_that.passengers);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'passengers')  List<Passenger> passengers)  $default,) {final _that = this;
switch (_that) {
case _PassengerListResponse():
return $default(_that.passengers);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'passengers')  List<Passenger> passengers)?  $default,) {final _that = this;
switch (_that) {
case _PassengerListResponse() when $default != null:
return $default(_that.passengers);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _PassengerListResponse implements PassengerListResponse {
  const _PassengerListResponse({@JsonKey(name: 'passengers') final  List<Passenger> passengers = const []}): _passengers = passengers;
  factory _PassengerListResponse.fromJson(Map<String, dynamic> json) => _$PassengerListResponseFromJson(json);

 final  List<Passenger> _passengers;
@override@JsonKey(name: 'passengers') List<Passenger> get passengers {
  if (_passengers is EqualUnmodifiableListView) return _passengers;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_passengers);
}


/// Create a copy of PassengerListResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PassengerListResponseCopyWith<_PassengerListResponse> get copyWith => __$PassengerListResponseCopyWithImpl<_PassengerListResponse>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PassengerListResponseToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PassengerListResponse&&const DeepCollectionEquality().equals(other._passengers, _passengers));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_passengers));

@override
String toString() {
  return 'PassengerListResponse(passengers: $passengers)';
}


}

/// @nodoc
abstract mixin class _$PassengerListResponseCopyWith<$Res> implements $PassengerListResponseCopyWith<$Res> {
  factory _$PassengerListResponseCopyWith(_PassengerListResponse value, $Res Function(_PassengerListResponse) _then) = __$PassengerListResponseCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'passengers') List<Passenger> passengers
});




}
/// @nodoc
class __$PassengerListResponseCopyWithImpl<$Res>
    implements _$PassengerListResponseCopyWith<$Res> {
  __$PassengerListResponseCopyWithImpl(this._self, this._then);

  final _PassengerListResponse _self;
  final $Res Function(_PassengerListResponse) _then;

/// Create a copy of PassengerListResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? passengers = null,}) {
  return _then(_PassengerListResponse(
passengers: null == passengers ? _self._passengers : passengers // ignore: cast_nullable_to_non_nullable
as List<Passenger>,
  ));
}


}

// dart format on
