// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'citizenships_list_page_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$CitizenshipsListPageState {

 String? get query; List<Citizenship> get citizenships;
/// Create a copy of CitizenshipsListPageState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CitizenshipsListPageStateCopyWith<CitizenshipsListPageState> get copyWith => _$CitizenshipsListPageStateCopyWithImpl<CitizenshipsListPageState>(this as CitizenshipsListPageState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CitizenshipsListPageState&&(identical(other.query, query) || other.query == query)&&const DeepCollectionEquality().equals(other.citizenships, citizenships));
}


@override
int get hashCode => Object.hash(runtimeType,query,const DeepCollectionEquality().hash(citizenships));

@override
String toString() {
  return 'CitizenshipsListPageState(query: $query, citizenships: $citizenships)';
}


}

/// @nodoc
abstract mixin class $CitizenshipsListPageStateCopyWith<$Res>  {
  factory $CitizenshipsListPageStateCopyWith(CitizenshipsListPageState value, $Res Function(CitizenshipsListPageState) _then) = _$CitizenshipsListPageStateCopyWithImpl;
@useResult
$Res call({
 String? query, List<Citizenship> citizenships
});




}
/// @nodoc
class _$CitizenshipsListPageStateCopyWithImpl<$Res>
    implements $CitizenshipsListPageStateCopyWith<$Res> {
  _$CitizenshipsListPageStateCopyWithImpl(this._self, this._then);

  final CitizenshipsListPageState _self;
  final $Res Function(CitizenshipsListPageState) _then;

/// Create a copy of CitizenshipsListPageState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? query = freezed,Object? citizenships = null,}) {
  return _then(_self.copyWith(
query: freezed == query ? _self.query : query // ignore: cast_nullable_to_non_nullable
as String?,citizenships: null == citizenships ? _self.citizenships : citizenships // ignore: cast_nullable_to_non_nullable
as List<Citizenship>,
  ));
}

}


/// Adds pattern-matching-related methods to [CitizenshipsListPageState].
extension CitizenshipsListPageStatePatterns on CitizenshipsListPageState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CitizenshipsListPageState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CitizenshipsListPageState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CitizenshipsListPageState value)  $default,){
final _that = this;
switch (_that) {
case _CitizenshipsListPageState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CitizenshipsListPageState value)?  $default,){
final _that = this;
switch (_that) {
case _CitizenshipsListPageState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? query,  List<Citizenship> citizenships)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CitizenshipsListPageState() when $default != null:
return $default(_that.query,_that.citizenships);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? query,  List<Citizenship> citizenships)  $default,) {final _that = this;
switch (_that) {
case _CitizenshipsListPageState():
return $default(_that.query,_that.citizenships);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? query,  List<Citizenship> citizenships)?  $default,) {final _that = this;
switch (_that) {
case _CitizenshipsListPageState() when $default != null:
return $default(_that.query,_that.citizenships);case _:
  return null;

}
}

}

/// @nodoc


class _CitizenshipsListPageState implements CitizenshipsListPageState {
  const _CitizenshipsListPageState({this.query, final  List<Citizenship> citizenships = const []}): _citizenships = citizenships;
  

@override final  String? query;
 final  List<Citizenship> _citizenships;
@override@JsonKey() List<Citizenship> get citizenships {
  if (_citizenships is EqualUnmodifiableListView) return _citizenships;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_citizenships);
}


/// Create a copy of CitizenshipsListPageState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CitizenshipsListPageStateCopyWith<_CitizenshipsListPageState> get copyWith => __$CitizenshipsListPageStateCopyWithImpl<_CitizenshipsListPageState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CitizenshipsListPageState&&(identical(other.query, query) || other.query == query)&&const DeepCollectionEquality().equals(other._citizenships, _citizenships));
}


@override
int get hashCode => Object.hash(runtimeType,query,const DeepCollectionEquality().hash(_citizenships));

@override
String toString() {
  return 'CitizenshipsListPageState(query: $query, citizenships: $citizenships)';
}


}

/// @nodoc
abstract mixin class _$CitizenshipsListPageStateCopyWith<$Res> implements $CitizenshipsListPageStateCopyWith<$Res> {
  factory _$CitizenshipsListPageStateCopyWith(_CitizenshipsListPageState value, $Res Function(_CitizenshipsListPageState) _then) = __$CitizenshipsListPageStateCopyWithImpl;
@override @useResult
$Res call({
 String? query, List<Citizenship> citizenships
});




}
/// @nodoc
class __$CitizenshipsListPageStateCopyWithImpl<$Res>
    implements _$CitizenshipsListPageStateCopyWith<$Res> {
  __$CitizenshipsListPageStateCopyWithImpl(this._self, this._then);

  final _CitizenshipsListPageState _self;
  final $Res Function(_CitizenshipsListPageState) _then;

/// Create a copy of CitizenshipsListPageState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? query = freezed,Object? citizenships = null,}) {
  return _then(_CitizenshipsListPageState(
query: freezed == query ? _self.query : query // ignore: cast_nullable_to_non_nullable
as String?,citizenships: null == citizenships ? _self._citizenships : citizenships // ignore: cast_nullable_to_non_nullable
as List<Citizenship>,
  ));
}


}

// dart format on
