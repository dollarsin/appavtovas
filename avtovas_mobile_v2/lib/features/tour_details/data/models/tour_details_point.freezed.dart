// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'tour_details_point.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$TourDetailsPoint {

@JsonKey(name: 'name') String get name;@UTCDateTimeConverter()@JsonKey(name: 'time') DateTime get time;@JsonKey(name: 'address') String? get address;
/// Create a copy of TourDetailsPoint
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TourDetailsPointCopyWith<TourDetailsPoint> get copyWith => _$TourDetailsPointCopyWithImpl<TourDetailsPoint>(this as TourDetailsPoint, _$identity);

  /// Serializes this TourDetailsPoint to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TourDetailsPoint&&(identical(other.name, name) || other.name == name)&&(identical(other.time, time) || other.time == time)&&(identical(other.address, address) || other.address == address));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name,time,address);

@override
String toString() {
  return 'TourDetailsPoint(name: $name, time: $time, address: $address)';
}


}

/// @nodoc
abstract mixin class $TourDetailsPointCopyWith<$Res>  {
  factory $TourDetailsPointCopyWith(TourDetailsPoint value, $Res Function(TourDetailsPoint) _then) = _$TourDetailsPointCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'name') String name,@UTCDateTimeConverter()@JsonKey(name: 'time') DateTime time,@JsonKey(name: 'address') String? address
});




}
/// @nodoc
class _$TourDetailsPointCopyWithImpl<$Res>
    implements $TourDetailsPointCopyWith<$Res> {
  _$TourDetailsPointCopyWithImpl(this._self, this._then);

  final TourDetailsPoint _self;
  final $Res Function(TourDetailsPoint) _then;

/// Create a copy of TourDetailsPoint
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? name = null,Object? time = null,Object? address = freezed,}) {
  return _then(_self.copyWith(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,time: null == time ? _self.time : time // ignore: cast_nullable_to_non_nullable
as DateTime,address: freezed == address ? _self.address : address // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [TourDetailsPoint].
extension TourDetailsPointPatterns on TourDetailsPoint {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _TourDetailsPoint value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _TourDetailsPoint() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _TourDetailsPoint value)  $default,){
final _that = this;
switch (_that) {
case _TourDetailsPoint():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _TourDetailsPoint value)?  $default,){
final _that = this;
switch (_that) {
case _TourDetailsPoint() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'name')  String name, @UTCDateTimeConverter()@JsonKey(name: 'time')  DateTime time, @JsonKey(name: 'address')  String? address)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _TourDetailsPoint() when $default != null:
return $default(_that.name,_that.time,_that.address);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'name')  String name, @UTCDateTimeConverter()@JsonKey(name: 'time')  DateTime time, @JsonKey(name: 'address')  String? address)  $default,) {final _that = this;
switch (_that) {
case _TourDetailsPoint():
return $default(_that.name,_that.time,_that.address);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'name')  String name, @UTCDateTimeConverter()@JsonKey(name: 'time')  DateTime time, @JsonKey(name: 'address')  String? address)?  $default,) {final _that = this;
switch (_that) {
case _TourDetailsPoint() when $default != null:
return $default(_that.name,_that.time,_that.address);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _TourDetailsPoint implements TourDetailsPoint {
  const _TourDetailsPoint({@JsonKey(name: 'name') required this.name, @UTCDateTimeConverter()@JsonKey(name: 'time') required this.time, @JsonKey(name: 'address') this.address});
  factory _TourDetailsPoint.fromJson(Map<String, dynamic> json) => _$TourDetailsPointFromJson(json);

@override@JsonKey(name: 'name') final  String name;
@override@UTCDateTimeConverter()@JsonKey(name: 'time') final  DateTime time;
@override@JsonKey(name: 'address') final  String? address;

/// Create a copy of TourDetailsPoint
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TourDetailsPointCopyWith<_TourDetailsPoint> get copyWith => __$TourDetailsPointCopyWithImpl<_TourDetailsPoint>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$TourDetailsPointToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _TourDetailsPoint&&(identical(other.name, name) || other.name == name)&&(identical(other.time, time) || other.time == time)&&(identical(other.address, address) || other.address == address));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name,time,address);

@override
String toString() {
  return 'TourDetailsPoint(name: $name, time: $time, address: $address)';
}


}

/// @nodoc
abstract mixin class _$TourDetailsPointCopyWith<$Res> implements $TourDetailsPointCopyWith<$Res> {
  factory _$TourDetailsPointCopyWith(_TourDetailsPoint value, $Res Function(_TourDetailsPoint) _then) = __$TourDetailsPointCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'name') String name,@UTCDateTimeConverter()@JsonKey(name: 'time') DateTime time,@JsonKey(name: 'address') String? address
});




}
/// @nodoc
class __$TourDetailsPointCopyWithImpl<$Res>
    implements _$TourDetailsPointCopyWith<$Res> {
  __$TourDetailsPointCopyWithImpl(this._self, this._then);

  final _TourDetailsPoint _self;
  final $Res Function(_TourDetailsPoint) _then;

/// Create a copy of TourDetailsPoint
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? name = null,Object? time = null,Object? address = freezed,}) {
  return _then(_TourDetailsPoint(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,time: null == time ? _self.time : time // ignore: cast_nullable_to_non_nullable
as DateTime,address: freezed == address ? _self.address : address // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
