// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'tour_list_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$TourListResponse {

@JsonKey(name: 'tours') List<Tour> get tours;
/// Create a copy of TourListResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TourListResponseCopyWith<TourListResponse> get copyWith => _$TourListResponseCopyWithImpl<TourListResponse>(this as TourListResponse, _$identity);

  /// Serializes this TourListResponse to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TourListResponse&&const DeepCollectionEquality().equals(other.tours, tours));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(tours));

@override
String toString() {
  return 'TourListResponse(tours: $tours)';
}


}

/// @nodoc
abstract mixin class $TourListResponseCopyWith<$Res>  {
  factory $TourListResponseCopyWith(TourListResponse value, $Res Function(TourListResponse) _then) = _$TourListResponseCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'tours') List<Tour> tours
});




}
/// @nodoc
class _$TourListResponseCopyWithImpl<$Res>
    implements $TourListResponseCopyWith<$Res> {
  _$TourListResponseCopyWithImpl(this._self, this._then);

  final TourListResponse _self;
  final $Res Function(TourListResponse) _then;

/// Create a copy of TourListResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? tours = null,}) {
  return _then(_self.copyWith(
tours: null == tours ? _self.tours : tours // ignore: cast_nullable_to_non_nullable
as List<Tour>,
  ));
}

}


/// Adds pattern-matching-related methods to [TourListResponse].
extension TourListResponsePatterns on TourListResponse {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _TourListResponse value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _TourListResponse() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _TourListResponse value)  $default,){
final _that = this;
switch (_that) {
case _TourListResponse():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _TourListResponse value)?  $default,){
final _that = this;
switch (_that) {
case _TourListResponse() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'tours')  List<Tour> tours)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _TourListResponse() when $default != null:
return $default(_that.tours);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'tours')  List<Tour> tours)  $default,) {final _that = this;
switch (_that) {
case _TourListResponse():
return $default(_that.tours);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'tours')  List<Tour> tours)?  $default,) {final _that = this;
switch (_that) {
case _TourListResponse() when $default != null:
return $default(_that.tours);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _TourListResponse implements TourListResponse {
  const _TourListResponse({@JsonKey(name: 'tours') required final  List<Tour> tours}): _tours = tours;
  factory _TourListResponse.fromJson(Map<String, dynamic> json) => _$TourListResponseFromJson(json);

 final  List<Tour> _tours;
@override@JsonKey(name: 'tours') List<Tour> get tours {
  if (_tours is EqualUnmodifiableListView) return _tours;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_tours);
}


/// Create a copy of TourListResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TourListResponseCopyWith<_TourListResponse> get copyWith => __$TourListResponseCopyWithImpl<_TourListResponse>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$TourListResponseToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _TourListResponse&&const DeepCollectionEquality().equals(other._tours, _tours));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_tours));

@override
String toString() {
  return 'TourListResponse(tours: $tours)';
}


}

/// @nodoc
abstract mixin class _$TourListResponseCopyWith<$Res> implements $TourListResponseCopyWith<$Res> {
  factory _$TourListResponseCopyWith(_TourListResponse value, $Res Function(_TourListResponse) _then) = __$TourListResponseCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'tours') List<Tour> tours
});




}
/// @nodoc
class __$TourListResponseCopyWithImpl<$Res>
    implements _$TourListResponseCopyWith<$Res> {
  __$TourListResponseCopyWithImpl(this._self, this._then);

  final _TourListResponse _self;
  final $Res Function(_TourListResponse) _then;

/// Create a copy of TourListResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? tours = null,}) {
  return _then(_TourListResponse(
tours: null == tours ? _self._tours : tours // ignore: cast_nullable_to_non_nullable
as List<Tour>,
  ));
}


}

// dart format on
