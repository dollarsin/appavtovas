// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'tour_point.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$TourPoint {

@JsonKey(name: 'name') String get name;@JsonKey(name: 'time')@UTCDateTimeConverter() DateTime get time;
/// Create a copy of TourPoint
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TourPointCopyWith<TourPoint> get copyWith => _$TourPointCopyWithImpl<TourPoint>(this as TourPoint, _$identity);

  /// Serializes this TourPoint to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TourPoint&&(identical(other.name, name) || other.name == name)&&(identical(other.time, time) || other.time == time));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name,time);

@override
String toString() {
  return 'TourPoint(name: $name, time: $time)';
}


}

/// @nodoc
abstract mixin class $TourPointCopyWith<$Res>  {
  factory $TourPointCopyWith(TourPoint value, $Res Function(TourPoint) _then) = _$TourPointCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'name') String name,@JsonKey(name: 'time')@UTCDateTimeConverter() DateTime time
});




}
/// @nodoc
class _$TourPointCopyWithImpl<$Res>
    implements $TourPointCopyWith<$Res> {
  _$TourPointCopyWithImpl(this._self, this._then);

  final TourPoint _self;
  final $Res Function(TourPoint) _then;

/// Create a copy of TourPoint
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? name = null,Object? time = null,}) {
  return _then(_self.copyWith(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,time: null == time ? _self.time : time // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}

}


/// Adds pattern-matching-related methods to [TourPoint].
extension TourPointPatterns on TourPoint {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _TourPoint value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _TourPoint() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _TourPoint value)  $default,){
final _that = this;
switch (_that) {
case _TourPoint():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _TourPoint value)?  $default,){
final _that = this;
switch (_that) {
case _TourPoint() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'name')  String name, @JsonKey(name: 'time')@UTCDateTimeConverter()  DateTime time)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _TourPoint() when $default != null:
return $default(_that.name,_that.time);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'name')  String name, @JsonKey(name: 'time')@UTCDateTimeConverter()  DateTime time)  $default,) {final _that = this;
switch (_that) {
case _TourPoint():
return $default(_that.name,_that.time);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'name')  String name, @JsonKey(name: 'time')@UTCDateTimeConverter()  DateTime time)?  $default,) {final _that = this;
switch (_that) {
case _TourPoint() when $default != null:
return $default(_that.name,_that.time);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _TourPoint implements TourPoint {
  const _TourPoint({@JsonKey(name: 'name') required this.name, @JsonKey(name: 'time')@UTCDateTimeConverter() required this.time});
  factory _TourPoint.fromJson(Map<String, dynamic> json) => _$TourPointFromJson(json);

@override@JsonKey(name: 'name') final  String name;
@override@JsonKey(name: 'time')@UTCDateTimeConverter() final  DateTime time;

/// Create a copy of TourPoint
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TourPointCopyWith<_TourPoint> get copyWith => __$TourPointCopyWithImpl<_TourPoint>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$TourPointToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _TourPoint&&(identical(other.name, name) || other.name == name)&&(identical(other.time, time) || other.time == time));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name,time);

@override
String toString() {
  return 'TourPoint(name: $name, time: $time)';
}


}

/// @nodoc
abstract mixin class _$TourPointCopyWith<$Res> implements $TourPointCopyWith<$Res> {
  factory _$TourPointCopyWith(_TourPoint value, $Res Function(_TourPoint) _then) = __$TourPointCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'name') String name,@JsonKey(name: 'time')@UTCDateTimeConverter() DateTime time
});




}
/// @nodoc
class __$TourPointCopyWithImpl<$Res>
    implements _$TourPointCopyWith<$Res> {
  __$TourPointCopyWithImpl(this._self, this._then);

  final _TourPoint _self;
  final $Res Function(_TourPoint) _then;

/// Create a copy of TourPoint
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? name = null,Object? time = null,}) {
  return _then(_TourPoint(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,time: null == time ? _self.time : time // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}


}

// dart format on
