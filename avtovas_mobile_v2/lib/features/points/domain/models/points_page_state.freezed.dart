// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'points_page_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$PointsPageState {

 DateTime get date; TripPoint? get destination; TripPoint? get departure;
/// Create a copy of PointsPageState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PointsPageStateCopyWith<PointsPageState> get copyWith => _$PointsPageStateCopyWithImpl<PointsPageState>(this as PointsPageState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PointsPageState&&(identical(other.date, date) || other.date == date)&&(identical(other.destination, destination) || other.destination == destination)&&(identical(other.departure, departure) || other.departure == departure));
}


@override
int get hashCode => Object.hash(runtimeType,date,destination,departure);

@override
String toString() {
  return 'PointsPageState(date: $date, destination: $destination, departure: $departure)';
}


}

/// @nodoc
abstract mixin class $PointsPageStateCopyWith<$Res>  {
  factory $PointsPageStateCopyWith(PointsPageState value, $Res Function(PointsPageState) _then) = _$PointsPageStateCopyWithImpl;
@useResult
$Res call({
 DateTime date, TripPoint? destination, TripPoint? departure
});


$TripPointCopyWith<$Res>? get destination;$TripPointCopyWith<$Res>? get departure;

}
/// @nodoc
class _$PointsPageStateCopyWithImpl<$Res>
    implements $PointsPageStateCopyWith<$Res> {
  _$PointsPageStateCopyWithImpl(this._self, this._then);

  final PointsPageState _self;
  final $Res Function(PointsPageState) _then;

/// Create a copy of PointsPageState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? date = null,Object? destination = freezed,Object? departure = freezed,}) {
  return _then(_self.copyWith(
date: null == date ? _self.date : date // ignore: cast_nullable_to_non_nullable
as DateTime,destination: freezed == destination ? _self.destination : destination // ignore: cast_nullable_to_non_nullable
as TripPoint?,departure: freezed == departure ? _self.departure : departure // ignore: cast_nullable_to_non_nullable
as TripPoint?,
  ));
}
/// Create a copy of PointsPageState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$TripPointCopyWith<$Res>? get destination {
    if (_self.destination == null) {
    return null;
  }

  return $TripPointCopyWith<$Res>(_self.destination!, (value) {
    return _then(_self.copyWith(destination: value));
  });
}/// Create a copy of PointsPageState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$TripPointCopyWith<$Res>? get departure {
    if (_self.departure == null) {
    return null;
  }

  return $TripPointCopyWith<$Res>(_self.departure!, (value) {
    return _then(_self.copyWith(departure: value));
  });
}
}


/// Adds pattern-matching-related methods to [PointsPageState].
extension PointsPageStatePatterns on PointsPageState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PointsPageState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PointsPageState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PointsPageState value)  $default,){
final _that = this;
switch (_that) {
case _PointsPageState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PointsPageState value)?  $default,){
final _that = this;
switch (_that) {
case _PointsPageState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( DateTime date,  TripPoint? destination,  TripPoint? departure)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PointsPageState() when $default != null:
return $default(_that.date,_that.destination,_that.departure);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( DateTime date,  TripPoint? destination,  TripPoint? departure)  $default,) {final _that = this;
switch (_that) {
case _PointsPageState():
return $default(_that.date,_that.destination,_that.departure);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( DateTime date,  TripPoint? destination,  TripPoint? departure)?  $default,) {final _that = this;
switch (_that) {
case _PointsPageState() when $default != null:
return $default(_that.date,_that.destination,_that.departure);case _:
  return null;

}
}

}

/// @nodoc


class _PointsPageState implements PointsPageState {
  const _PointsPageState({required this.date, this.destination, this.departure});
  

@override final  DateTime date;
@override final  TripPoint? destination;
@override final  TripPoint? departure;

/// Create a copy of PointsPageState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PointsPageStateCopyWith<_PointsPageState> get copyWith => __$PointsPageStateCopyWithImpl<_PointsPageState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PointsPageState&&(identical(other.date, date) || other.date == date)&&(identical(other.destination, destination) || other.destination == destination)&&(identical(other.departure, departure) || other.departure == departure));
}


@override
int get hashCode => Object.hash(runtimeType,date,destination,departure);

@override
String toString() {
  return 'PointsPageState(date: $date, destination: $destination, departure: $departure)';
}


}

/// @nodoc
abstract mixin class _$PointsPageStateCopyWith<$Res> implements $PointsPageStateCopyWith<$Res> {
  factory _$PointsPageStateCopyWith(_PointsPageState value, $Res Function(_PointsPageState) _then) = __$PointsPageStateCopyWithImpl;
@override @useResult
$Res call({
 DateTime date, TripPoint? destination, TripPoint? departure
});


@override $TripPointCopyWith<$Res>? get destination;@override $TripPointCopyWith<$Res>? get departure;

}
/// @nodoc
class __$PointsPageStateCopyWithImpl<$Res>
    implements _$PointsPageStateCopyWith<$Res> {
  __$PointsPageStateCopyWithImpl(this._self, this._then);

  final _PointsPageState _self;
  final $Res Function(_PointsPageState) _then;

/// Create a copy of PointsPageState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? date = null,Object? destination = freezed,Object? departure = freezed,}) {
  return _then(_PointsPageState(
date: null == date ? _self.date : date // ignore: cast_nullable_to_non_nullable
as DateTime,destination: freezed == destination ? _self.destination : destination // ignore: cast_nullable_to_non_nullable
as TripPoint?,departure: freezed == departure ? _self.departure : departure // ignore: cast_nullable_to_non_nullable
as TripPoint?,
  ));
}

/// Create a copy of PointsPageState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$TripPointCopyWith<$Res>? get destination {
    if (_self.destination == null) {
    return null;
  }

  return $TripPointCopyWith<$Res>(_self.destination!, (value) {
    return _then(_self.copyWith(destination: value));
  });
}/// Create a copy of PointsPageState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$TripPointCopyWith<$Res>? get departure {
    if (_self.departure == null) {
    return null;
  }

  return $TripPointCopyWith<$Res>(_self.departure!, (value) {
    return _then(_self.copyWith(departure: value));
  });
}
}

// dart format on
