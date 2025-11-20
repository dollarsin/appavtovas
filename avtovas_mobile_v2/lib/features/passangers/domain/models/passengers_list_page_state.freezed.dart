// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'passengers_list_page_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$PassengersListPageState {

 List<Passenger> get passengers;
/// Create a copy of PassengersListPageState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PassengersListPageStateCopyWith<PassengersListPageState> get copyWith => _$PassengersListPageStateCopyWithImpl<PassengersListPageState>(this as PassengersListPageState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PassengersListPageState&&const DeepCollectionEquality().equals(other.passengers, passengers));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(passengers));

@override
String toString() {
  return 'PassengersListPageState(passengers: $passengers)';
}


}

/// @nodoc
abstract mixin class $PassengersListPageStateCopyWith<$Res>  {
  factory $PassengersListPageStateCopyWith(PassengersListPageState value, $Res Function(PassengersListPageState) _then) = _$PassengersListPageStateCopyWithImpl;
@useResult
$Res call({
 List<Passenger> passengers
});




}
/// @nodoc
class _$PassengersListPageStateCopyWithImpl<$Res>
    implements $PassengersListPageStateCopyWith<$Res> {
  _$PassengersListPageStateCopyWithImpl(this._self, this._then);

  final PassengersListPageState _self;
  final $Res Function(PassengersListPageState) _then;

/// Create a copy of PassengersListPageState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? passengers = null,}) {
  return _then(_self.copyWith(
passengers: null == passengers ? _self.passengers : passengers // ignore: cast_nullable_to_non_nullable
as List<Passenger>,
  ));
}

}


/// Adds pattern-matching-related methods to [PassengersListPageState].
extension PassengersListPageStatePatterns on PassengersListPageState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PassengersListPageState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PassengersListPageState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PassengersListPageState value)  $default,){
final _that = this;
switch (_that) {
case _PassengersListPageState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PassengersListPageState value)?  $default,){
final _that = this;
switch (_that) {
case _PassengersListPageState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<Passenger> passengers)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PassengersListPageState() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<Passenger> passengers)  $default,) {final _that = this;
switch (_that) {
case _PassengersListPageState():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<Passenger> passengers)?  $default,) {final _that = this;
switch (_that) {
case _PassengersListPageState() when $default != null:
return $default(_that.passengers);case _:
  return null;

}
}

}

/// @nodoc


class _PassengersListPageState implements PassengersListPageState {
  const _PassengersListPageState({required final  List<Passenger> passengers}): _passengers = passengers;
  

 final  List<Passenger> _passengers;
@override List<Passenger> get passengers {
  if (_passengers is EqualUnmodifiableListView) return _passengers;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_passengers);
}


/// Create a copy of PassengersListPageState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PassengersListPageStateCopyWith<_PassengersListPageState> get copyWith => __$PassengersListPageStateCopyWithImpl<_PassengersListPageState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PassengersListPageState&&const DeepCollectionEquality().equals(other._passengers, _passengers));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_passengers));

@override
String toString() {
  return 'PassengersListPageState(passengers: $passengers)';
}


}

/// @nodoc
abstract mixin class _$PassengersListPageStateCopyWith<$Res> implements $PassengersListPageStateCopyWith<$Res> {
  factory _$PassengersListPageStateCopyWith(_PassengersListPageState value, $Res Function(_PassengersListPageState) _then) = __$PassengersListPageStateCopyWithImpl;
@override @useResult
$Res call({
 List<Passenger> passengers
});




}
/// @nodoc
class __$PassengersListPageStateCopyWithImpl<$Res>
    implements _$PassengersListPageStateCopyWith<$Res> {
  __$PassengersListPageStateCopyWithImpl(this._self, this._then);

  final _PassengersListPageState _self;
  final $Res Function(_PassengersListPageState) _then;

/// Create a copy of PassengersListPageState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? passengers = null,}) {
  return _then(_PassengersListPageState(
passengers: null == passengers ? _self._passengers : passengers // ignore: cast_nullable_to_non_nullable
as List<Passenger>,
  ));
}


}

// dart format on
