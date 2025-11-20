// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'tour.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Tour {

@JsonKey(name: 'id') String get id;@JsonKey(name: 'departure') TourPoint get departure;@JsonKey(name: 'destination') TourPoint get destination;@JsonKey(name: 'route') TourRoute get route;@JsonKey(name: 'base_cost') double get baseCoast;@JsonKey(name: 'free_seats') int get freeSeats;
/// Create a copy of Tour
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TourCopyWith<Tour> get copyWith => _$TourCopyWithImpl<Tour>(this as Tour, _$identity);

  /// Serializes this Tour to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Tour&&(identical(other.id, id) || other.id == id)&&(identical(other.departure, departure) || other.departure == departure)&&(identical(other.destination, destination) || other.destination == destination)&&(identical(other.route, route) || other.route == route)&&(identical(other.baseCoast, baseCoast) || other.baseCoast == baseCoast)&&(identical(other.freeSeats, freeSeats) || other.freeSeats == freeSeats));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,departure,destination,route,baseCoast,freeSeats);

@override
String toString() {
  return 'Tour(id: $id, departure: $departure, destination: $destination, route: $route, baseCoast: $baseCoast, freeSeats: $freeSeats)';
}


}

/// @nodoc
abstract mixin class $TourCopyWith<$Res>  {
  factory $TourCopyWith(Tour value, $Res Function(Tour) _then) = _$TourCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'id') String id,@JsonKey(name: 'departure') TourPoint departure,@JsonKey(name: 'destination') TourPoint destination,@JsonKey(name: 'route') TourRoute route,@JsonKey(name: 'base_cost') double baseCoast,@JsonKey(name: 'free_seats') int freeSeats
});


$TourPointCopyWith<$Res> get departure;$TourPointCopyWith<$Res> get destination;$TourRouteCopyWith<$Res> get route;

}
/// @nodoc
class _$TourCopyWithImpl<$Res>
    implements $TourCopyWith<$Res> {
  _$TourCopyWithImpl(this._self, this._then);

  final Tour _self;
  final $Res Function(Tour) _then;

/// Create a copy of Tour
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? departure = null,Object? destination = null,Object? route = null,Object? baseCoast = null,Object? freeSeats = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,departure: null == departure ? _self.departure : departure // ignore: cast_nullable_to_non_nullable
as TourPoint,destination: null == destination ? _self.destination : destination // ignore: cast_nullable_to_non_nullable
as TourPoint,route: null == route ? _self.route : route // ignore: cast_nullable_to_non_nullable
as TourRoute,baseCoast: null == baseCoast ? _self.baseCoast : baseCoast // ignore: cast_nullable_to_non_nullable
as double,freeSeats: null == freeSeats ? _self.freeSeats : freeSeats // ignore: cast_nullable_to_non_nullable
as int,
  ));
}
/// Create a copy of Tour
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$TourPointCopyWith<$Res> get departure {
  
  return $TourPointCopyWith<$Res>(_self.departure, (value) {
    return _then(_self.copyWith(departure: value));
  });
}/// Create a copy of Tour
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$TourPointCopyWith<$Res> get destination {
  
  return $TourPointCopyWith<$Res>(_self.destination, (value) {
    return _then(_self.copyWith(destination: value));
  });
}/// Create a copy of Tour
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$TourRouteCopyWith<$Res> get route {
  
  return $TourRouteCopyWith<$Res>(_self.route, (value) {
    return _then(_self.copyWith(route: value));
  });
}
}


/// Adds pattern-matching-related methods to [Tour].
extension TourPatterns on Tour {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Tour value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Tour() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Tour value)  $default,){
final _that = this;
switch (_that) {
case _Tour():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Tour value)?  $default,){
final _that = this;
switch (_that) {
case _Tour() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'id')  String id, @JsonKey(name: 'departure')  TourPoint departure, @JsonKey(name: 'destination')  TourPoint destination, @JsonKey(name: 'route')  TourRoute route, @JsonKey(name: 'base_cost')  double baseCoast, @JsonKey(name: 'free_seats')  int freeSeats)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Tour() when $default != null:
return $default(_that.id,_that.departure,_that.destination,_that.route,_that.baseCoast,_that.freeSeats);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'id')  String id, @JsonKey(name: 'departure')  TourPoint departure, @JsonKey(name: 'destination')  TourPoint destination, @JsonKey(name: 'route')  TourRoute route, @JsonKey(name: 'base_cost')  double baseCoast, @JsonKey(name: 'free_seats')  int freeSeats)  $default,) {final _that = this;
switch (_that) {
case _Tour():
return $default(_that.id,_that.departure,_that.destination,_that.route,_that.baseCoast,_that.freeSeats);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'id')  String id, @JsonKey(name: 'departure')  TourPoint departure, @JsonKey(name: 'destination')  TourPoint destination, @JsonKey(name: 'route')  TourRoute route, @JsonKey(name: 'base_cost')  double baseCoast, @JsonKey(name: 'free_seats')  int freeSeats)?  $default,) {final _that = this;
switch (_that) {
case _Tour() when $default != null:
return $default(_that.id,_that.departure,_that.destination,_that.route,_that.baseCoast,_that.freeSeats);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Tour implements Tour {
  const _Tour({@JsonKey(name: 'id') required this.id, @JsonKey(name: 'departure') required this.departure, @JsonKey(name: 'destination') required this.destination, @JsonKey(name: 'route') required this.route, @JsonKey(name: 'base_cost') required this.baseCoast, @JsonKey(name: 'free_seats') required this.freeSeats});
  factory _Tour.fromJson(Map<String, dynamic> json) => _$TourFromJson(json);

@override@JsonKey(name: 'id') final  String id;
@override@JsonKey(name: 'departure') final  TourPoint departure;
@override@JsonKey(name: 'destination') final  TourPoint destination;
@override@JsonKey(name: 'route') final  TourRoute route;
@override@JsonKey(name: 'base_cost') final  double baseCoast;
@override@JsonKey(name: 'free_seats') final  int freeSeats;

/// Create a copy of Tour
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TourCopyWith<_Tour> get copyWith => __$TourCopyWithImpl<_Tour>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$TourToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Tour&&(identical(other.id, id) || other.id == id)&&(identical(other.departure, departure) || other.departure == departure)&&(identical(other.destination, destination) || other.destination == destination)&&(identical(other.route, route) || other.route == route)&&(identical(other.baseCoast, baseCoast) || other.baseCoast == baseCoast)&&(identical(other.freeSeats, freeSeats) || other.freeSeats == freeSeats));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,departure,destination,route,baseCoast,freeSeats);

@override
String toString() {
  return 'Tour(id: $id, departure: $departure, destination: $destination, route: $route, baseCoast: $baseCoast, freeSeats: $freeSeats)';
}


}

/// @nodoc
abstract mixin class _$TourCopyWith<$Res> implements $TourCopyWith<$Res> {
  factory _$TourCopyWith(_Tour value, $Res Function(_Tour) _then) = __$TourCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'id') String id,@JsonKey(name: 'departure') TourPoint departure,@JsonKey(name: 'destination') TourPoint destination,@JsonKey(name: 'route') TourRoute route,@JsonKey(name: 'base_cost') double baseCoast,@JsonKey(name: 'free_seats') int freeSeats
});


@override $TourPointCopyWith<$Res> get departure;@override $TourPointCopyWith<$Res> get destination;@override $TourRouteCopyWith<$Res> get route;

}
/// @nodoc
class __$TourCopyWithImpl<$Res>
    implements _$TourCopyWith<$Res> {
  __$TourCopyWithImpl(this._self, this._then);

  final _Tour _self;
  final $Res Function(_Tour) _then;

/// Create a copy of Tour
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? departure = null,Object? destination = null,Object? route = null,Object? baseCoast = null,Object? freeSeats = null,}) {
  return _then(_Tour(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,departure: null == departure ? _self.departure : departure // ignore: cast_nullable_to_non_nullable
as TourPoint,destination: null == destination ? _self.destination : destination // ignore: cast_nullable_to_non_nullable
as TourPoint,route: null == route ? _self.route : route // ignore: cast_nullable_to_non_nullable
as TourRoute,baseCoast: null == baseCoast ? _self.baseCoast : baseCoast // ignore: cast_nullable_to_non_nullable
as double,freeSeats: null == freeSeats ? _self.freeSeats : freeSeats // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

/// Create a copy of Tour
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$TourPointCopyWith<$Res> get departure {
  
  return $TourPointCopyWith<$Res>(_self.departure, (value) {
    return _then(_self.copyWith(departure: value));
  });
}/// Create a copy of Tour
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$TourPointCopyWith<$Res> get destination {
  
  return $TourPointCopyWith<$Res>(_self.destination, (value) {
    return _then(_self.copyWith(destination: value));
  });
}/// Create a copy of Tour
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$TourRouteCopyWith<$Res> get route {
  
  return $TourRouteCopyWith<$Res>(_self.route, (value) {
    return _then(_self.copyWith(route: value));
  });
}
}

// dart format on
