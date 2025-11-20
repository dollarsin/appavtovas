// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'citizenships_list_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$CitizenshipsListResponse {

@JsonKey(name: 'citizenships') List<Citizenship> get citizenships;
/// Create a copy of CitizenshipsListResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CitizenshipsListResponseCopyWith<CitizenshipsListResponse> get copyWith => _$CitizenshipsListResponseCopyWithImpl<CitizenshipsListResponse>(this as CitizenshipsListResponse, _$identity);

  /// Serializes this CitizenshipsListResponse to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CitizenshipsListResponse&&const DeepCollectionEquality().equals(other.citizenships, citizenships));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(citizenships));

@override
String toString() {
  return 'CitizenshipsListResponse(citizenships: $citizenships)';
}


}

/// @nodoc
abstract mixin class $CitizenshipsListResponseCopyWith<$Res>  {
  factory $CitizenshipsListResponseCopyWith(CitizenshipsListResponse value, $Res Function(CitizenshipsListResponse) _then) = _$CitizenshipsListResponseCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'citizenships') List<Citizenship> citizenships
});




}
/// @nodoc
class _$CitizenshipsListResponseCopyWithImpl<$Res>
    implements $CitizenshipsListResponseCopyWith<$Res> {
  _$CitizenshipsListResponseCopyWithImpl(this._self, this._then);

  final CitizenshipsListResponse _self;
  final $Res Function(CitizenshipsListResponse) _then;

/// Create a copy of CitizenshipsListResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? citizenships = null,}) {
  return _then(_self.copyWith(
citizenships: null == citizenships ? _self.citizenships : citizenships // ignore: cast_nullable_to_non_nullable
as List<Citizenship>,
  ));
}

}


/// Adds pattern-matching-related methods to [CitizenshipsListResponse].
extension CitizenshipsListResponsePatterns on CitizenshipsListResponse {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CitizenshipsListResponse value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CitizenshipsListResponse() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CitizenshipsListResponse value)  $default,){
final _that = this;
switch (_that) {
case _CitizenshipsListResponse():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CitizenshipsListResponse value)?  $default,){
final _that = this;
switch (_that) {
case _CitizenshipsListResponse() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'citizenships')  List<Citizenship> citizenships)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CitizenshipsListResponse() when $default != null:
return $default(_that.citizenships);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'citizenships')  List<Citizenship> citizenships)  $default,) {final _that = this;
switch (_that) {
case _CitizenshipsListResponse():
return $default(_that.citizenships);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'citizenships')  List<Citizenship> citizenships)?  $default,) {final _that = this;
switch (_that) {
case _CitizenshipsListResponse() when $default != null:
return $default(_that.citizenships);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CitizenshipsListResponse implements CitizenshipsListResponse {
  const _CitizenshipsListResponse({@JsonKey(name: 'citizenships') final  List<Citizenship> citizenships = const []}): _citizenships = citizenships;
  factory _CitizenshipsListResponse.fromJson(Map<String, dynamic> json) => _$CitizenshipsListResponseFromJson(json);

 final  List<Citizenship> _citizenships;
@override@JsonKey(name: 'citizenships') List<Citizenship> get citizenships {
  if (_citizenships is EqualUnmodifiableListView) return _citizenships;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_citizenships);
}


/// Create a copy of CitizenshipsListResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CitizenshipsListResponseCopyWith<_CitizenshipsListResponse> get copyWith => __$CitizenshipsListResponseCopyWithImpl<_CitizenshipsListResponse>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CitizenshipsListResponseToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CitizenshipsListResponse&&const DeepCollectionEquality().equals(other._citizenships, _citizenships));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_citizenships));

@override
String toString() {
  return 'CitizenshipsListResponse(citizenships: $citizenships)';
}


}

/// @nodoc
abstract mixin class _$CitizenshipsListResponseCopyWith<$Res> implements $CitizenshipsListResponseCopyWith<$Res> {
  factory _$CitizenshipsListResponseCopyWith(_CitizenshipsListResponse value, $Res Function(_CitizenshipsListResponse) _then) = __$CitizenshipsListResponseCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'citizenships') List<Citizenship> citizenships
});




}
/// @nodoc
class __$CitizenshipsListResponseCopyWithImpl<$Res>
    implements _$CitizenshipsListResponseCopyWith<$Res> {
  __$CitizenshipsListResponseCopyWithImpl(this._self, this._then);

  final _CitizenshipsListResponse _self;
  final $Res Function(_CitizenshipsListResponse) _then;

/// Create a copy of CitizenshipsListResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? citizenships = null,}) {
  return _then(_CitizenshipsListResponse(
citizenships: null == citizenships ? _self._citizenships : citizenships // ignore: cast_nullable_to_non_nullable
as List<Citizenship>,
  ));
}


}

// dart format on
