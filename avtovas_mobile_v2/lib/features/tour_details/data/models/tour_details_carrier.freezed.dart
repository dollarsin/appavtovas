// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'tour_details_carrier.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$TourDetailsCarrier {

@JsonKey(name: 'name') String get name;@JsonKey(name: 'bus') String get busName;
/// Create a copy of TourDetailsCarrier
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TourDetailsCarrierCopyWith<TourDetailsCarrier> get copyWith => _$TourDetailsCarrierCopyWithImpl<TourDetailsCarrier>(this as TourDetailsCarrier, _$identity);

  /// Serializes this TourDetailsCarrier to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TourDetailsCarrier&&(identical(other.name, name) || other.name == name)&&(identical(other.busName, busName) || other.busName == busName));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name,busName);

@override
String toString() {
  return 'TourDetailsCarrier(name: $name, busName: $busName)';
}


}

/// @nodoc
abstract mixin class $TourDetailsCarrierCopyWith<$Res>  {
  factory $TourDetailsCarrierCopyWith(TourDetailsCarrier value, $Res Function(TourDetailsCarrier) _then) = _$TourDetailsCarrierCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'name') String name,@JsonKey(name: 'bus') String busName
});




}
/// @nodoc
class _$TourDetailsCarrierCopyWithImpl<$Res>
    implements $TourDetailsCarrierCopyWith<$Res> {
  _$TourDetailsCarrierCopyWithImpl(this._self, this._then);

  final TourDetailsCarrier _self;
  final $Res Function(TourDetailsCarrier) _then;

/// Create a copy of TourDetailsCarrier
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? name = null,Object? busName = null,}) {
  return _then(_self.copyWith(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,busName: null == busName ? _self.busName : busName // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [TourDetailsCarrier].
extension TourDetailsCarrierPatterns on TourDetailsCarrier {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _TourDetailsCarrier value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _TourDetailsCarrier() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _TourDetailsCarrier value)  $default,){
final _that = this;
switch (_that) {
case _TourDetailsCarrier():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _TourDetailsCarrier value)?  $default,){
final _that = this;
switch (_that) {
case _TourDetailsCarrier() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'name')  String name, @JsonKey(name: 'bus')  String busName)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _TourDetailsCarrier() when $default != null:
return $default(_that.name,_that.busName);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'name')  String name, @JsonKey(name: 'bus')  String busName)  $default,) {final _that = this;
switch (_that) {
case _TourDetailsCarrier():
return $default(_that.name,_that.busName);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'name')  String name, @JsonKey(name: 'bus')  String busName)?  $default,) {final _that = this;
switch (_that) {
case _TourDetailsCarrier() when $default != null:
return $default(_that.name,_that.busName);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _TourDetailsCarrier implements TourDetailsCarrier {
  const _TourDetailsCarrier({@JsonKey(name: 'name') required this.name, @JsonKey(name: 'bus') required this.busName});
  factory _TourDetailsCarrier.fromJson(Map<String, dynamic> json) => _$TourDetailsCarrierFromJson(json);

@override@JsonKey(name: 'name') final  String name;
@override@JsonKey(name: 'bus') final  String busName;

/// Create a copy of TourDetailsCarrier
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TourDetailsCarrierCopyWith<_TourDetailsCarrier> get copyWith => __$TourDetailsCarrierCopyWithImpl<_TourDetailsCarrier>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$TourDetailsCarrierToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _TourDetailsCarrier&&(identical(other.name, name) || other.name == name)&&(identical(other.busName, busName) || other.busName == busName));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name,busName);

@override
String toString() {
  return 'TourDetailsCarrier(name: $name, busName: $busName)';
}


}

/// @nodoc
abstract mixin class _$TourDetailsCarrierCopyWith<$Res> implements $TourDetailsCarrierCopyWith<$Res> {
  factory _$TourDetailsCarrierCopyWith(_TourDetailsCarrier value, $Res Function(_TourDetailsCarrier) _then) = __$TourDetailsCarrierCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'name') String name,@JsonKey(name: 'bus') String busName
});




}
/// @nodoc
class __$TourDetailsCarrierCopyWithImpl<$Res>
    implements _$TourDetailsCarrierCopyWith<$Res> {
  __$TourDetailsCarrierCopyWithImpl(this._self, this._then);

  final _TourDetailsCarrier _self;
  final $Res Function(_TourDetailsCarrier) _then;

/// Create a copy of TourDetailsCarrier
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? name = null,Object? busName = null,}) {
  return _then(_TourDetailsCarrier(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,busName: null == busName ? _self.busName : busName // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
