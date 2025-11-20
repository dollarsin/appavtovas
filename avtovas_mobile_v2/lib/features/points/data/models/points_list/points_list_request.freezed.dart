// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

// @dart=3.8
part of 'points_list_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$PointsListRequest {

@JsonKey(name: 'type') PointsListType get type;@JsonKey(name: 'query', includeIfNull: false) String? get query;
/// Create a copy of PointsListRequest
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PointsListRequestCopyWith<PointsListRequest> get copyWith => _$PointsListRequestCopyWithImpl<PointsListRequest>(this as PointsListRequest, _$identity);

  /// Serializes this PointsListRequest to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PointsListRequest&&(identical(other.type, type) || other.type == type)&&(identical(other.query, query) || other.query == query));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,type,query);

@override
String toString() {
  return 'PointsListRequest(type: $type, query: $query)';
}


}

/// @nodoc
abstract mixin class $PointsListRequestCopyWith<$Res>  {
  factory $PointsListRequestCopyWith(PointsListRequest value, $Res Function(PointsListRequest) _then) = _$PointsListRequestCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'type') PointsListType type,@JsonKey(name: 'query', includeIfNull: false) String? query
});




}
/// @nodoc
class _$PointsListRequestCopyWithImpl<$Res>
    implements $PointsListRequestCopyWith<$Res> {
  _$PointsListRequestCopyWithImpl(this._self, this._then);

  final PointsListRequest _self;
  final $Res Function(PointsListRequest) _then;

/// Create a copy of PointsListRequest
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? type = null,Object? query = freezed,}) {
  return _then(_self.copyWith(
type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as PointsListType,query: freezed == query ? _self.query : query // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [PointsListRequest].
extension PointsListRequestPatterns on PointsListRequest {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PointsListRequest value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PointsListRequest() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PointsListRequest value)  $default,){
final _that = this;
switch (_that) {
case _PointsListRequest():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PointsListRequest value)?  $default,){
final _that = this;
switch (_that) {
case _PointsListRequest() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'type')  PointsListType type, @JsonKey(name: 'query', includeIfNull: false)  String? query)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PointsListRequest() when $default != null:
return $default(_that.type,_that.query);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'type')  PointsListType type, @JsonKey(name: 'query', includeIfNull: false)  String? query)  $default,) {final _that = this;
switch (_that) {
case _PointsListRequest():
return $default(_that.type,_that.query);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'type')  PointsListType type, @JsonKey(name: 'query', includeIfNull: false)  String? query)?  $default,) {final _that = this;
switch (_that) {
case _PointsListRequest() when $default != null:
return $default(_that.type,_that.query);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _PointsListRequest implements PointsListRequest {
  const _PointsListRequest({@JsonKey(name: 'type') required this.type, @JsonKey(name: 'query', includeIfNull: false) this.query});
  factory _PointsListRequest.fromJson(Map<String, dynamic> json) => _$PointsListRequestFromJson(json);

@override@JsonKey(name: 'type') final  PointsListType type;
@override@JsonKey(name: 'query', includeIfNull: false) final  String? query;

/// Create a copy of PointsListRequest
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PointsListRequestCopyWith<_PointsListRequest> get copyWith => __$PointsListRequestCopyWithImpl<_PointsListRequest>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PointsListRequestToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PointsListRequest&&(identical(other.type, type) || other.type == type)&&(identical(other.query, query) || other.query == query));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,type,query);

@override
String toString() {
  return 'PointsListRequest(type: $type, query: $query)';
}


}

/// @nodoc
abstract mixin class _$PointsListRequestCopyWith<$Res> implements $PointsListRequestCopyWith<$Res> {
  factory _$PointsListRequestCopyWith(_PointsListRequest value, $Res Function(_PointsListRequest) _then) = __$PointsListRequestCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'type') PointsListType type,@JsonKey(name: 'query', includeIfNull: false) String? query
});




}
/// @nodoc
class __$PointsListRequestCopyWithImpl<$Res>
    implements _$PointsListRequestCopyWith<$Res> {
  __$PointsListRequestCopyWithImpl(this._self, this._then);

  final _PointsListRequest _self;
  final $Res Function(_PointsListRequest) _then;

/// Create a copy of PointsListRequest
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? type = null,Object? query = freezed,}) {
  return _then(_PointsListRequest(
type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as PointsListType,query: freezed == query ? _self.query : query // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
