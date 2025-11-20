// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'tour_list_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$TourListRequest {

@JsonKey(name: 'point_from') String get pointFrom;@JsonKey(name: 'point_to') String get pointTo;@JsonKey(name: 'date_time')@UTCDateTimeConverter() DateTime get dateTime;
/// Create a copy of TourListRequest
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TourListRequestCopyWith<TourListRequest> get copyWith => _$TourListRequestCopyWithImpl<TourListRequest>(this as TourListRequest, _$identity);

  /// Serializes this TourListRequest to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TourListRequest&&(identical(other.pointFrom, pointFrom) || other.pointFrom == pointFrom)&&(identical(other.pointTo, pointTo) || other.pointTo == pointTo)&&(identical(other.dateTime, dateTime) || other.dateTime == dateTime));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,pointFrom,pointTo,dateTime);

@override
String toString() {
  return 'TourListRequest(pointFrom: $pointFrom, pointTo: $pointTo, dateTime: $dateTime)';
}


}

/// @nodoc
abstract mixin class $TourListRequestCopyWith<$Res>  {
  factory $TourListRequestCopyWith(TourListRequest value, $Res Function(TourListRequest) _then) = _$TourListRequestCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'point_from') String pointFrom,@JsonKey(name: 'point_to') String pointTo,@JsonKey(name: 'date_time')@UTCDateTimeConverter() DateTime dateTime
});




}
/// @nodoc
class _$TourListRequestCopyWithImpl<$Res>
    implements $TourListRequestCopyWith<$Res> {
  _$TourListRequestCopyWithImpl(this._self, this._then);

  final TourListRequest _self;
  final $Res Function(TourListRequest) _then;

/// Create a copy of TourListRequest
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? pointFrom = null,Object? pointTo = null,Object? dateTime = null,}) {
  return _then(_self.copyWith(
pointFrom: null == pointFrom ? _self.pointFrom : pointFrom // ignore: cast_nullable_to_non_nullable
as String,pointTo: null == pointTo ? _self.pointTo : pointTo // ignore: cast_nullable_to_non_nullable
as String,dateTime: null == dateTime ? _self.dateTime : dateTime // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}

}


/// Adds pattern-matching-related methods to [TourListRequest].
extension TourListRequestPatterns on TourListRequest {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _TourListRequest value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _TourListRequest() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _TourListRequest value)  $default,){
final _that = this;
switch (_that) {
case _TourListRequest():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _TourListRequest value)?  $default,){
final _that = this;
switch (_that) {
case _TourListRequest() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'point_from')  String pointFrom, @JsonKey(name: 'point_to')  String pointTo, @JsonKey(name: 'date_time')@UTCDateTimeConverter()  DateTime dateTime)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _TourListRequest() when $default != null:
return $default(_that.pointFrom,_that.pointTo,_that.dateTime);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'point_from')  String pointFrom, @JsonKey(name: 'point_to')  String pointTo, @JsonKey(name: 'date_time')@UTCDateTimeConverter()  DateTime dateTime)  $default,) {final _that = this;
switch (_that) {
case _TourListRequest():
return $default(_that.pointFrom,_that.pointTo,_that.dateTime);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'point_from')  String pointFrom, @JsonKey(name: 'point_to')  String pointTo, @JsonKey(name: 'date_time')@UTCDateTimeConverter()  DateTime dateTime)?  $default,) {final _that = this;
switch (_that) {
case _TourListRequest() when $default != null:
return $default(_that.pointFrom,_that.pointTo,_that.dateTime);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _TourListRequest implements TourListRequest {
  const _TourListRequest({@JsonKey(name: 'point_from') required this.pointFrom, @JsonKey(name: 'point_to') required this.pointTo, @JsonKey(name: 'date_time')@UTCDateTimeConverter() required this.dateTime});
  factory _TourListRequest.fromJson(Map<String, dynamic> json) => _$TourListRequestFromJson(json);

@override@JsonKey(name: 'point_from') final  String pointFrom;
@override@JsonKey(name: 'point_to') final  String pointTo;
@override@JsonKey(name: 'date_time')@UTCDateTimeConverter() final  DateTime dateTime;

/// Create a copy of TourListRequest
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TourListRequestCopyWith<_TourListRequest> get copyWith => __$TourListRequestCopyWithImpl<_TourListRequest>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$TourListRequestToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _TourListRequest&&(identical(other.pointFrom, pointFrom) || other.pointFrom == pointFrom)&&(identical(other.pointTo, pointTo) || other.pointTo == pointTo)&&(identical(other.dateTime, dateTime) || other.dateTime == dateTime));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,pointFrom,pointTo,dateTime);

@override
String toString() {
  return 'TourListRequest(pointFrom: $pointFrom, pointTo: $pointTo, dateTime: $dateTime)';
}


}

/// @nodoc
abstract mixin class _$TourListRequestCopyWith<$Res> implements $TourListRequestCopyWith<$Res> {
  factory _$TourListRequestCopyWith(_TourListRequest value, $Res Function(_TourListRequest) _then) = __$TourListRequestCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'point_from') String pointFrom,@JsonKey(name: 'point_to') String pointTo,@JsonKey(name: 'date_time')@UTCDateTimeConverter() DateTime dateTime
});




}
/// @nodoc
class __$TourListRequestCopyWithImpl<$Res>
    implements _$TourListRequestCopyWith<$Res> {
  __$TourListRequestCopyWithImpl(this._self, this._then);

  final _TourListRequest _self;
  final $Res Function(_TourListRequest) _then;

/// Create a copy of TourListRequest
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? pointFrom = null,Object? pointTo = null,Object? dateTime = null,}) {
  return _then(_TourListRequest(
pointFrom: null == pointFrom ? _self.pointFrom : pointFrom // ignore: cast_nullable_to_non_nullable
as String,pointTo: null == pointTo ? _self.pointTo : pointTo // ignore: cast_nullable_to_non_nullable
as String,dateTime: null == dateTime ? _self.dateTime : dateTime // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}


}

// dart format on
