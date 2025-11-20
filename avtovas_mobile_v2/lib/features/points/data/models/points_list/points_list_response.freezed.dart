// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'points_list_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$PointsListResponse {

@JsonKey(name: 'points') List<TripPoint> get tripPoints;
/// Create a copy of PointsListResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PointsListResponseCopyWith<PointsListResponse> get copyWith => _$PointsListResponseCopyWithImpl<PointsListResponse>(this as PointsListResponse, _$identity);

  /// Serializes this PointsListResponse to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PointsListResponse&&const DeepCollectionEquality().equals(other.tripPoints, tripPoints));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(tripPoints));

@override
String toString() {
  return 'PointsListResponse(tripPoints: $tripPoints)';
}


}

/// @nodoc
abstract mixin class $PointsListResponseCopyWith<$Res>  {
  factory $PointsListResponseCopyWith(PointsListResponse value, $Res Function(PointsListResponse) _then) = _$PointsListResponseCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'points') List<TripPoint> tripPoints
});




}
/// @nodoc
class _$PointsListResponseCopyWithImpl<$Res>
    implements $PointsListResponseCopyWith<$Res> {
  _$PointsListResponseCopyWithImpl(this._self, this._then);

  final PointsListResponse _self;
  final $Res Function(PointsListResponse) _then;

/// Create a copy of PointsListResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? tripPoints = null,}) {
  return _then(_self.copyWith(
tripPoints: null == tripPoints ? _self.tripPoints : tripPoints // ignore: cast_nullable_to_non_nullable
as List<TripPoint>,
  ));
}

}


/// Adds pattern-matching-related methods to [PointsListResponse].
extension PointsListResponsePatterns on PointsListResponse {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PointsListResponse value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PointsListResponse() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PointsListResponse value)  $default,){
final _that = this;
switch (_that) {
case _PointsListResponse():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PointsListResponse value)?  $default,){
final _that = this;
switch (_that) {
case _PointsListResponse() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'points')  List<TripPoint> tripPoints)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PointsListResponse() when $default != null:
return $default(_that.tripPoints);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'points')  List<TripPoint> tripPoints)  $default,) {final _that = this;
switch (_that) {
case _PointsListResponse():
return $default(_that.tripPoints);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'points')  List<TripPoint> tripPoints)?  $default,) {final _that = this;
switch (_that) {
case _PointsListResponse() when $default != null:
return $default(_that.tripPoints);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _PointsListResponse implements PointsListResponse {
  const _PointsListResponse({@JsonKey(name: 'points') required final  List<TripPoint> tripPoints}): _tripPoints = tripPoints;
  factory _PointsListResponse.fromJson(Map<String, dynamic> json) => _$PointsListResponseFromJson(json);

 final  List<TripPoint> _tripPoints;
@override@JsonKey(name: 'points') List<TripPoint> get tripPoints {
  if (_tripPoints is EqualUnmodifiableListView) return _tripPoints;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_tripPoints);
}


/// Create a copy of PointsListResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PointsListResponseCopyWith<_PointsListResponse> get copyWith => __$PointsListResponseCopyWithImpl<_PointsListResponse>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PointsListResponseToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PointsListResponse&&const DeepCollectionEquality().equals(other._tripPoints, _tripPoints));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_tripPoints));

@override
String toString() {
  return 'PointsListResponse(tripPoints: $tripPoints)';
}


}

/// @nodoc
abstract mixin class _$PointsListResponseCopyWith<$Res> implements $PointsListResponseCopyWith<$Res> {
  factory _$PointsListResponseCopyWith(_PointsListResponse value, $Res Function(_PointsListResponse) _then) = __$PointsListResponseCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'points') List<TripPoint> tripPoints
});




}
/// @nodoc
class __$PointsListResponseCopyWithImpl<$Res>
    implements _$PointsListResponseCopyWith<$Res> {
  __$PointsListResponseCopyWithImpl(this._self, this._then);

  final _PointsListResponse _self;
  final $Res Function(_PointsListResponse) _then;

/// Create a copy of PointsListResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? tripPoints = null,}) {
  return _then(_PointsListResponse(
tripPoints: null == tripPoints ? _self._tripPoints : tripPoints // ignore: cast_nullable_to_non_nullable
as List<TripPoint>,
  ));
}


}

// dart format on
