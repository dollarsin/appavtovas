// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'points_list_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$PointsListState {

 String get query; List<TripPoint> get points;
/// Create a copy of PointsListState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PointsListStateCopyWith<PointsListState> get copyWith => _$PointsListStateCopyWithImpl<PointsListState>(this as PointsListState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PointsListState&&(identical(other.query, query) || other.query == query)&&const DeepCollectionEquality().equals(other.points, points));
}


@override
int get hashCode => Object.hash(runtimeType,query,const DeepCollectionEquality().hash(points));

@override
String toString() {
  return 'PointsListState(query: $query, points: $points)';
}


}

/// @nodoc
abstract mixin class $PointsListStateCopyWith<$Res>  {
  factory $PointsListStateCopyWith(PointsListState value, $Res Function(PointsListState) _then) = _$PointsListStateCopyWithImpl;
@useResult
$Res call({
 String query, List<TripPoint> points
});




}
/// @nodoc
class _$PointsListStateCopyWithImpl<$Res>
    implements $PointsListStateCopyWith<$Res> {
  _$PointsListStateCopyWithImpl(this._self, this._then);

  final PointsListState _self;
  final $Res Function(PointsListState) _then;

/// Create a copy of PointsListState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? query = null,Object? points = null,}) {
  return _then(_self.copyWith(
query: null == query ? _self.query : query // ignore: cast_nullable_to_non_nullable
as String,points: null == points ? _self.points : points // ignore: cast_nullable_to_non_nullable
as List<TripPoint>,
  ));
}

}


/// Adds pattern-matching-related methods to [PointsListState].
extension PointsListStatePatterns on PointsListState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PointsListState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PointsListState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PointsListState value)  $default,){
final _that = this;
switch (_that) {
case _PointsListState():
return $default(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PointsListState value)?  $default,){
final _that = this;
switch (_that) {
case _PointsListState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String query,  List<TripPoint> points)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PointsListState() when $default != null:
return $default(_that.query,_that.points);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String query,  List<TripPoint> points)  $default,) {final _that = this;
switch (_that) {
case _PointsListState():
return $default(_that.query,_that.points);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String query,  List<TripPoint> points)?  $default,) {final _that = this;
switch (_that) {
case _PointsListState() when $default != null:
return $default(_that.query,_that.points);case _:
  return null;

}
}

}

/// @nodoc


class _PointsListState implements PointsListState {
  const _PointsListState({required this.query, final  List<TripPoint> points = const []}): _points = points;
  

@override final  String query;
 final  List<TripPoint> _points;
@override@JsonKey() List<TripPoint> get points {
  if (_points is EqualUnmodifiableListView) return _points;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_points);
}


/// Create a copy of PointsListState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PointsListStateCopyWith<_PointsListState> get copyWith => __$PointsListStateCopyWithImpl<_PointsListState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PointsListState&&(identical(other.query, query) || other.query == query)&&const DeepCollectionEquality().equals(other._points, _points));
}


@override
int get hashCode => Object.hash(runtimeType,query,const DeepCollectionEquality().hash(_points));

@override
String toString() {
  return 'PointsListState(query: $query, points: $points)';
}


}

/// @nodoc
abstract mixin class _$PointsListStateCopyWith<$Res> implements $PointsListStateCopyWith<$Res> {
  factory _$PointsListStateCopyWith(_PointsListState value, $Res Function(_PointsListState) _then) = __$PointsListStateCopyWithImpl;
@override @useResult
$Res call({
 String query, List<TripPoint> points
});




}
/// @nodoc
class __$PointsListStateCopyWithImpl<$Res>
    implements _$PointsListStateCopyWith<$Res> {
  __$PointsListStateCopyWithImpl(this._self, this._then);

  final _PointsListState _self;
  final $Res Function(_PointsListState) _then;

/// Create a copy of PointsListState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? query = null,Object? points = null,}) {
  return _then(_PointsListState(
query: null == query ? _self.query : query // ignore: cast_nullable_to_non_nullable
as String,points: null == points ? _self._points : points // ignore: cast_nullable_to_non_nullable
as List<TripPoint>,
  ));
}


}

// dart format on
