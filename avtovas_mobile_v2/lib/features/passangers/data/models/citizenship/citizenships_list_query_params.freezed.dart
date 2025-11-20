// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

// @dart=3.8
part of 'citizenships_list_query_params.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$CitizenshipsListQueryParams {

@JsonKey(name: 'query', includeIfNull: false) String? get query;
/// Create a copy of CitizenshipsListQueryParams
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CitizenshipsListQueryParamsCopyWith<CitizenshipsListQueryParams> get copyWith => _$CitizenshipsListQueryParamsCopyWithImpl<CitizenshipsListQueryParams>(this as CitizenshipsListQueryParams, _$identity);

  /// Serializes this CitizenshipsListQueryParams to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CitizenshipsListQueryParams&&(identical(other.query, query) || other.query == query));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,query);

@override
String toString() {
  return 'CitizenshipsListQueryParams(query: $query)';
}


}

/// @nodoc
abstract mixin class $CitizenshipsListQueryParamsCopyWith<$Res>  {
  factory $CitizenshipsListQueryParamsCopyWith(CitizenshipsListQueryParams value, $Res Function(CitizenshipsListQueryParams) _then) = _$CitizenshipsListQueryParamsCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'query', includeIfNull: false) String? query
});




}
/// @nodoc
class _$CitizenshipsListQueryParamsCopyWithImpl<$Res>
    implements $CitizenshipsListQueryParamsCopyWith<$Res> {
  _$CitizenshipsListQueryParamsCopyWithImpl(this._self, this._then);

  final CitizenshipsListQueryParams _self;
  final $Res Function(CitizenshipsListQueryParams) _then;

/// Create a copy of CitizenshipsListQueryParams
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? query = freezed,}) {
  return _then(_self.copyWith(
query: freezed == query ? _self.query : query // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [CitizenshipsListQueryParams].
extension CitizenshipsListQueryParamsPatterns on CitizenshipsListQueryParams {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CitizenshipsListQueryParams value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CitizenshipsListQueryParams() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CitizenshipsListQueryParams value)  $default,){
final _that = this;
switch (_that) {
case _CitizenshipsListQueryParams():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CitizenshipsListQueryParams value)?  $default,){
final _that = this;
switch (_that) {
case _CitizenshipsListQueryParams() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'query', includeIfNull: false)  String? query)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CitizenshipsListQueryParams() when $default != null:
return $default(_that.query);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'query', includeIfNull: false)  String? query)  $default,) {final _that = this;
switch (_that) {
case _CitizenshipsListQueryParams():
return $default(_that.query);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'query', includeIfNull: false)  String? query)?  $default,) {final _that = this;
switch (_that) {
case _CitizenshipsListQueryParams() when $default != null:
return $default(_that.query);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CitizenshipsListQueryParams implements CitizenshipsListQueryParams {
  const _CitizenshipsListQueryParams({@JsonKey(name: 'query', includeIfNull: false) this.query});
  factory _CitizenshipsListQueryParams.fromJson(Map<String, dynamic> json) => _$CitizenshipsListQueryParamsFromJson(json);

@override@JsonKey(name: 'query', includeIfNull: false) final  String? query;

/// Create a copy of CitizenshipsListQueryParams
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CitizenshipsListQueryParamsCopyWith<_CitizenshipsListQueryParams> get copyWith => __$CitizenshipsListQueryParamsCopyWithImpl<_CitizenshipsListQueryParams>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CitizenshipsListQueryParamsToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CitizenshipsListQueryParams&&(identical(other.query, query) || other.query == query));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,query);

@override
String toString() {
  return 'CitizenshipsListQueryParams(query: $query)';
}


}

/// @nodoc
abstract mixin class _$CitizenshipsListQueryParamsCopyWith<$Res> implements $CitizenshipsListQueryParamsCopyWith<$Res> {
  factory _$CitizenshipsListQueryParamsCopyWith(_CitizenshipsListQueryParams value, $Res Function(_CitizenshipsListQueryParams) _then) = __$CitizenshipsListQueryParamsCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'query', includeIfNull: false) String? query
});




}
/// @nodoc
class __$CitizenshipsListQueryParamsCopyWithImpl<$Res>
    implements _$CitizenshipsListQueryParamsCopyWith<$Res> {
  __$CitizenshipsListQueryParamsCopyWithImpl(this._self, this._then);

  final _CitizenshipsListQueryParams _self;
  final $Res Function(_CitizenshipsListQueryParams) _then;

/// Create a copy of CitizenshipsListQueryParams
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? query = freezed,}) {
  return _then(_CitizenshipsListQueryParams(
query: freezed == query ? _self.query : query // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
