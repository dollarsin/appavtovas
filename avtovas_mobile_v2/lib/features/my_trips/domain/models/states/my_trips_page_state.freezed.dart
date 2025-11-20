// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'my_trips_page_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$MyTripsPageState {

 List<MyTripModel> get trips;
/// Create a copy of MyTripsPageState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MyTripsPageStateCopyWith<MyTripsPageState> get copyWith => _$MyTripsPageStateCopyWithImpl<MyTripsPageState>(this as MyTripsPageState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MyTripsPageState&&const DeepCollectionEquality().equals(other.trips, trips));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(trips));

@override
String toString() {
  return 'MyTripsPageState(trips: $trips)';
}


}

/// @nodoc
abstract mixin class $MyTripsPageStateCopyWith<$Res>  {
  factory $MyTripsPageStateCopyWith(MyTripsPageState value, $Res Function(MyTripsPageState) _then) = _$MyTripsPageStateCopyWithImpl;
@useResult
$Res call({
 List<MyTripModel> trips
});




}
/// @nodoc
class _$MyTripsPageStateCopyWithImpl<$Res>
    implements $MyTripsPageStateCopyWith<$Res> {
  _$MyTripsPageStateCopyWithImpl(this._self, this._then);

  final MyTripsPageState _self;
  final $Res Function(MyTripsPageState) _then;

/// Create a copy of MyTripsPageState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? trips = null,}) {
  return _then(_self.copyWith(
trips: null == trips ? _self.trips : trips // ignore: cast_nullable_to_non_nullable
as List<MyTripModel>,
  ));
}

}


/// Adds pattern-matching-related methods to [MyTripsPageState].
extension MyTripsPageStatePatterns on MyTripsPageState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _MyTripsPageState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _MyTripsPageState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _MyTripsPageState value)  $default,){
final _that = this;
switch (_that) {
case _MyTripsPageState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _MyTripsPageState value)?  $default,){
final _that = this;
switch (_that) {
case _MyTripsPageState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<MyTripModel> trips)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _MyTripsPageState() when $default != null:
return $default(_that.trips);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<MyTripModel> trips)  $default,) {final _that = this;
switch (_that) {
case _MyTripsPageState():
return $default(_that.trips);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<MyTripModel> trips)?  $default,) {final _that = this;
switch (_that) {
case _MyTripsPageState() when $default != null:
return $default(_that.trips);case _:
  return null;

}
}

}

/// @nodoc


class _MyTripsPageState implements MyTripsPageState {
  const _MyTripsPageState({final  List<MyTripModel> trips = const []}): _trips = trips;
  

 final  List<MyTripModel> _trips;
@override@JsonKey() List<MyTripModel> get trips {
  if (_trips is EqualUnmodifiableListView) return _trips;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_trips);
}


/// Create a copy of MyTripsPageState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MyTripsPageStateCopyWith<_MyTripsPageState> get copyWith => __$MyTripsPageStateCopyWithImpl<_MyTripsPageState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _MyTripsPageState&&const DeepCollectionEquality().equals(other._trips, _trips));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_trips));

@override
String toString() {
  return 'MyTripsPageState(trips: $trips)';
}


}

/// @nodoc
abstract mixin class _$MyTripsPageStateCopyWith<$Res> implements $MyTripsPageStateCopyWith<$Res> {
  factory _$MyTripsPageStateCopyWith(_MyTripsPageState value, $Res Function(_MyTripsPageState) _then) = __$MyTripsPageStateCopyWithImpl;
@override @useResult
$Res call({
 List<MyTripModel> trips
});




}
/// @nodoc
class __$MyTripsPageStateCopyWithImpl<$Res>
    implements _$MyTripsPageStateCopyWith<$Res> {
  __$MyTripsPageStateCopyWithImpl(this._self, this._then);

  final _MyTripsPageState _self;
  final $Res Function(_MyTripsPageState) _then;

/// Create a copy of MyTripsPageState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? trips = null,}) {
  return _then(_MyTripsPageState(
trips: null == trips ? _self._trips : trips // ignore: cast_nullable_to_non_nullable
as List<MyTripModel>,
  ));
}


}

// dart format on
