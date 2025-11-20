// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'tour_details_route.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$TourDetailsRoute {

@JsonKey(name: 'name') String get name;@JsonKey(name: 'number') String get number;
/// Create a copy of TourDetailsRoute
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TourDetailsRouteCopyWith<TourDetailsRoute> get copyWith => _$TourDetailsRouteCopyWithImpl<TourDetailsRoute>(this as TourDetailsRoute, _$identity);

  /// Serializes this TourDetailsRoute to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TourDetailsRoute&&(identical(other.name, name) || other.name == name)&&(identical(other.number, number) || other.number == number));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name,number);

@override
String toString() {
  return 'TourDetailsRoute(name: $name, number: $number)';
}


}

/// @nodoc
abstract mixin class $TourDetailsRouteCopyWith<$Res>  {
  factory $TourDetailsRouteCopyWith(TourDetailsRoute value, $Res Function(TourDetailsRoute) _then) = _$TourDetailsRouteCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'name') String name,@JsonKey(name: 'number') String number
});




}
/// @nodoc
class _$TourDetailsRouteCopyWithImpl<$Res>
    implements $TourDetailsRouteCopyWith<$Res> {
  _$TourDetailsRouteCopyWithImpl(this._self, this._then);

  final TourDetailsRoute _self;
  final $Res Function(TourDetailsRoute) _then;

/// Create a copy of TourDetailsRoute
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? name = null,Object? number = null,}) {
  return _then(_self.copyWith(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,number: null == number ? _self.number : number // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [TourDetailsRoute].
extension TourDetailsRoutePatterns on TourDetailsRoute {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _TourDetailsRoute value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _TourDetailsRoute() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _TourDetailsRoute value)  $default,){
final _that = this;
switch (_that) {
case _TourDetailsRoute():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _TourDetailsRoute value)?  $default,){
final _that = this;
switch (_that) {
case _TourDetailsRoute() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'name')  String name, @JsonKey(name: 'number')  String number)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _TourDetailsRoute() when $default != null:
return $default(_that.name,_that.number);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'name')  String name, @JsonKey(name: 'number')  String number)  $default,) {final _that = this;
switch (_that) {
case _TourDetailsRoute():
return $default(_that.name,_that.number);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'name')  String name, @JsonKey(name: 'number')  String number)?  $default,) {final _that = this;
switch (_that) {
case _TourDetailsRoute() when $default != null:
return $default(_that.name,_that.number);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _TourDetailsRoute implements TourDetailsRoute {
  const _TourDetailsRoute({@JsonKey(name: 'name') required this.name, @JsonKey(name: 'number') required this.number});
  factory _TourDetailsRoute.fromJson(Map<String, dynamic> json) => _$TourDetailsRouteFromJson(json);

@override@JsonKey(name: 'name') final  String name;
@override@JsonKey(name: 'number') final  String number;

/// Create a copy of TourDetailsRoute
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TourDetailsRouteCopyWith<_TourDetailsRoute> get copyWith => __$TourDetailsRouteCopyWithImpl<_TourDetailsRoute>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$TourDetailsRouteToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _TourDetailsRoute&&(identical(other.name, name) || other.name == name)&&(identical(other.number, number) || other.number == number));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name,number);

@override
String toString() {
  return 'TourDetailsRoute(name: $name, number: $number)';
}


}

/// @nodoc
abstract mixin class _$TourDetailsRouteCopyWith<$Res> implements $TourDetailsRouteCopyWith<$Res> {
  factory _$TourDetailsRouteCopyWith(_TourDetailsRoute value, $Res Function(_TourDetailsRoute) _then) = __$TourDetailsRouteCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'name') String name,@JsonKey(name: 'number') String number
});




}
/// @nodoc
class __$TourDetailsRouteCopyWithImpl<$Res>
    implements _$TourDetailsRouteCopyWith<$Res> {
  __$TourDetailsRouteCopyWithImpl(this._self, this._then);

  final _TourDetailsRoute _self;
  final $Res Function(_TourDetailsRoute) _then;

/// Create a copy of TourDetailsRoute
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? name = null,Object? number = null,}) {
  return _then(_TourDetailsRoute(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,number: null == number ? _self.number : number // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
