// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

// @dart=3.8
part of 'passenger_document_types_list_query_params.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$PassengerDocumentTypesListQueryParams {

@JsonKey(name: 'query', includeIfNull: false) String? get query;
/// Create a copy of PassengerDocumentTypesListQueryParams
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PassengerDocumentTypesListQueryParamsCopyWith<PassengerDocumentTypesListQueryParams> get copyWith => _$PassengerDocumentTypesListQueryParamsCopyWithImpl<PassengerDocumentTypesListQueryParams>(this as PassengerDocumentTypesListQueryParams, _$identity);

  /// Serializes this PassengerDocumentTypesListQueryParams to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PassengerDocumentTypesListQueryParams&&(identical(other.query, query) || other.query == query));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,query);

@override
String toString() {
  return 'PassengerDocumentTypesListQueryParams(query: $query)';
}


}

/// @nodoc
abstract mixin class $PassengerDocumentTypesListQueryParamsCopyWith<$Res>  {
  factory $PassengerDocumentTypesListQueryParamsCopyWith(PassengerDocumentTypesListQueryParams value, $Res Function(PassengerDocumentTypesListQueryParams) _then) = _$PassengerDocumentTypesListQueryParamsCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'query', includeIfNull: false) String? query
});




}
/// @nodoc
class _$PassengerDocumentTypesListQueryParamsCopyWithImpl<$Res>
    implements $PassengerDocumentTypesListQueryParamsCopyWith<$Res> {
  _$PassengerDocumentTypesListQueryParamsCopyWithImpl(this._self, this._then);

  final PassengerDocumentTypesListQueryParams _self;
  final $Res Function(PassengerDocumentTypesListQueryParams) _then;

/// Create a copy of PassengerDocumentTypesListQueryParams
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? query = freezed,}) {
  return _then(_self.copyWith(
query: freezed == query ? _self.query : query // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [PassengerDocumentTypesListQueryParams].
extension PassengerDocumentTypesListQueryParamsPatterns on PassengerDocumentTypesListQueryParams {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PassengerDocumentTypesListQueryParams value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PassengerDocumentTypesListQueryParams() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PassengerDocumentTypesListQueryParams value)  $default,){
final _that = this;
switch (_that) {
case _PassengerDocumentTypesListQueryParams():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PassengerDocumentTypesListQueryParams value)?  $default,){
final _that = this;
switch (_that) {
case _PassengerDocumentTypesListQueryParams() when $default != null:
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
case _PassengerDocumentTypesListQueryParams() when $default != null:
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
case _PassengerDocumentTypesListQueryParams():
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
case _PassengerDocumentTypesListQueryParams() when $default != null:
return $default(_that.query);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _PassengerDocumentTypesListQueryParams implements PassengerDocumentTypesListQueryParams {
  const _PassengerDocumentTypesListQueryParams({@JsonKey(name: 'query', includeIfNull: false) this.query});
  factory _PassengerDocumentTypesListQueryParams.fromJson(Map<String, dynamic> json) => _$PassengerDocumentTypesListQueryParamsFromJson(json);

@override@JsonKey(name: 'query', includeIfNull: false) final  String? query;

/// Create a copy of PassengerDocumentTypesListQueryParams
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PassengerDocumentTypesListQueryParamsCopyWith<_PassengerDocumentTypesListQueryParams> get copyWith => __$PassengerDocumentTypesListQueryParamsCopyWithImpl<_PassengerDocumentTypesListQueryParams>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PassengerDocumentTypesListQueryParamsToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PassengerDocumentTypesListQueryParams&&(identical(other.query, query) || other.query == query));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,query);

@override
String toString() {
  return 'PassengerDocumentTypesListQueryParams(query: $query)';
}


}

/// @nodoc
abstract mixin class _$PassengerDocumentTypesListQueryParamsCopyWith<$Res> implements $PassengerDocumentTypesListQueryParamsCopyWith<$Res> {
  factory _$PassengerDocumentTypesListQueryParamsCopyWith(_PassengerDocumentTypesListQueryParams value, $Res Function(_PassengerDocumentTypesListQueryParams) _then) = __$PassengerDocumentTypesListQueryParamsCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'query', includeIfNull: false) String? query
});




}
/// @nodoc
class __$PassengerDocumentTypesListQueryParamsCopyWithImpl<$Res>
    implements _$PassengerDocumentTypesListQueryParamsCopyWith<$Res> {
  __$PassengerDocumentTypesListQueryParamsCopyWithImpl(this._self, this._then);

  final _PassengerDocumentTypesListQueryParams _self;
  final $Res Function(_PassengerDocumentTypesListQueryParams) _then;

/// Create a copy of PassengerDocumentTypesListQueryParams
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? query = freezed,}) {
  return _then(_PassengerDocumentTypesListQueryParams(
query: freezed == query ? _self.query : query // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
