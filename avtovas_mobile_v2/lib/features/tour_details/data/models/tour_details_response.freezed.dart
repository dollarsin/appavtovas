// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'tour_details_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$TourDetailsResponse {

@JsonKey(name: 'id') String get id;@JsonKey(name: 'departure') TourDetailsPoint get departure;@JsonKey(name: 'destination') TourDetailsPoint get destination;@JsonKey(name: 'route') TourDetailsRoute get route;@JsonKey(name: 'base_cost') double get baseCost;@JsonKey(name: 'free_seats') int get freeSeats;@JsonKey(name: 'carrier') TourDetailsCarrier get carrier;@JsonKey(name: 'stopovers') List<TourDetailsPoint> get stopovers;
/// Create a copy of TourDetailsResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TourDetailsResponseCopyWith<TourDetailsResponse> get copyWith => _$TourDetailsResponseCopyWithImpl<TourDetailsResponse>(this as TourDetailsResponse, _$identity);

  /// Serializes this TourDetailsResponse to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TourDetailsResponse&&(identical(other.id, id) || other.id == id)&&(identical(other.departure, departure) || other.departure == departure)&&(identical(other.destination, destination) || other.destination == destination)&&(identical(other.route, route) || other.route == route)&&(identical(other.baseCost, baseCost) || other.baseCost == baseCost)&&(identical(other.freeSeats, freeSeats) || other.freeSeats == freeSeats)&&(identical(other.carrier, carrier) || other.carrier == carrier)&&const DeepCollectionEquality().equals(other.stopovers, stopovers));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,departure,destination,route,baseCost,freeSeats,carrier,const DeepCollectionEquality().hash(stopovers));

@override
String toString() {
  return 'TourDetailsResponse(id: $id, departure: $departure, destination: $destination, route: $route, baseCost: $baseCost, freeSeats: $freeSeats, carrier: $carrier, stopovers: $stopovers)';
}


}

/// @nodoc
abstract mixin class $TourDetailsResponseCopyWith<$Res>  {
  factory $TourDetailsResponseCopyWith(TourDetailsResponse value, $Res Function(TourDetailsResponse) _then) = _$TourDetailsResponseCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'id') String id,@JsonKey(name: 'departure') TourDetailsPoint departure,@JsonKey(name: 'destination') TourDetailsPoint destination,@JsonKey(name: 'route') TourDetailsRoute route,@JsonKey(name: 'base_cost') double baseCost,@JsonKey(name: 'free_seats') int freeSeats,@JsonKey(name: 'carrier') TourDetailsCarrier carrier,@JsonKey(name: 'stopovers') List<TourDetailsPoint> stopovers
});


$TourDetailsPointCopyWith<$Res> get departure;$TourDetailsPointCopyWith<$Res> get destination;$TourDetailsRouteCopyWith<$Res> get route;$TourDetailsCarrierCopyWith<$Res> get carrier;

}
/// @nodoc
class _$TourDetailsResponseCopyWithImpl<$Res>
    implements $TourDetailsResponseCopyWith<$Res> {
  _$TourDetailsResponseCopyWithImpl(this._self, this._then);

  final TourDetailsResponse _self;
  final $Res Function(TourDetailsResponse) _then;

/// Create a copy of TourDetailsResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? departure = null,Object? destination = null,Object? route = null,Object? baseCost = null,Object? freeSeats = null,Object? carrier = null,Object? stopovers = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,departure: null == departure ? _self.departure : departure // ignore: cast_nullable_to_non_nullable
as TourDetailsPoint,destination: null == destination ? _self.destination : destination // ignore: cast_nullable_to_non_nullable
as TourDetailsPoint,route: null == route ? _self.route : route // ignore: cast_nullable_to_non_nullable
as TourDetailsRoute,baseCost: null == baseCost ? _self.baseCost : baseCost // ignore: cast_nullable_to_non_nullable
as double,freeSeats: null == freeSeats ? _self.freeSeats : freeSeats // ignore: cast_nullable_to_non_nullable
as int,carrier: null == carrier ? _self.carrier : carrier // ignore: cast_nullable_to_non_nullable
as TourDetailsCarrier,stopovers: null == stopovers ? _self.stopovers : stopovers // ignore: cast_nullable_to_non_nullable
as List<TourDetailsPoint>,
  ));
}
/// Create a copy of TourDetailsResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$TourDetailsPointCopyWith<$Res> get departure {
  
  return $TourDetailsPointCopyWith<$Res>(_self.departure, (value) {
    return _then(_self.copyWith(departure: value));
  });
}/// Create a copy of TourDetailsResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$TourDetailsPointCopyWith<$Res> get destination {
  
  return $TourDetailsPointCopyWith<$Res>(_self.destination, (value) {
    return _then(_self.copyWith(destination: value));
  });
}/// Create a copy of TourDetailsResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$TourDetailsRouteCopyWith<$Res> get route {
  
  return $TourDetailsRouteCopyWith<$Res>(_self.route, (value) {
    return _then(_self.copyWith(route: value));
  });
}/// Create a copy of TourDetailsResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$TourDetailsCarrierCopyWith<$Res> get carrier {
  
  return $TourDetailsCarrierCopyWith<$Res>(_self.carrier, (value) {
    return _then(_self.copyWith(carrier: value));
  });
}
}


/// Adds pattern-matching-related methods to [TourDetailsResponse].
extension TourDetailsResponsePatterns on TourDetailsResponse {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _TourDetailsResponse value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _TourDetailsResponse() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _TourDetailsResponse value)  $default,){
final _that = this;
switch (_that) {
case _TourDetailsResponse():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _TourDetailsResponse value)?  $default,){
final _that = this;
switch (_that) {
case _TourDetailsResponse() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'id')  String id, @JsonKey(name: 'departure')  TourDetailsPoint departure, @JsonKey(name: 'destination')  TourDetailsPoint destination, @JsonKey(name: 'route')  TourDetailsRoute route, @JsonKey(name: 'base_cost')  double baseCost, @JsonKey(name: 'free_seats')  int freeSeats, @JsonKey(name: 'carrier')  TourDetailsCarrier carrier, @JsonKey(name: 'stopovers')  List<TourDetailsPoint> stopovers)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _TourDetailsResponse() when $default != null:
return $default(_that.id,_that.departure,_that.destination,_that.route,_that.baseCost,_that.freeSeats,_that.carrier,_that.stopovers);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'id')  String id, @JsonKey(name: 'departure')  TourDetailsPoint departure, @JsonKey(name: 'destination')  TourDetailsPoint destination, @JsonKey(name: 'route')  TourDetailsRoute route, @JsonKey(name: 'base_cost')  double baseCost, @JsonKey(name: 'free_seats')  int freeSeats, @JsonKey(name: 'carrier')  TourDetailsCarrier carrier, @JsonKey(name: 'stopovers')  List<TourDetailsPoint> stopovers)  $default,) {final _that = this;
switch (_that) {
case _TourDetailsResponse():
return $default(_that.id,_that.departure,_that.destination,_that.route,_that.baseCost,_that.freeSeats,_that.carrier,_that.stopovers);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'id')  String id, @JsonKey(name: 'departure')  TourDetailsPoint departure, @JsonKey(name: 'destination')  TourDetailsPoint destination, @JsonKey(name: 'route')  TourDetailsRoute route, @JsonKey(name: 'base_cost')  double baseCost, @JsonKey(name: 'free_seats')  int freeSeats, @JsonKey(name: 'carrier')  TourDetailsCarrier carrier, @JsonKey(name: 'stopovers')  List<TourDetailsPoint> stopovers)?  $default,) {final _that = this;
switch (_that) {
case _TourDetailsResponse() when $default != null:
return $default(_that.id,_that.departure,_that.destination,_that.route,_that.baseCost,_that.freeSeats,_that.carrier,_that.stopovers);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _TourDetailsResponse implements TourDetailsResponse {
  const _TourDetailsResponse({@JsonKey(name: 'id') required this.id, @JsonKey(name: 'departure') required this.departure, @JsonKey(name: 'destination') required this.destination, @JsonKey(name: 'route') required this.route, @JsonKey(name: 'base_cost') required this.baseCost, @JsonKey(name: 'free_seats') required this.freeSeats, @JsonKey(name: 'carrier') required this.carrier, @JsonKey(name: 'stopovers') final  List<TourDetailsPoint> stopovers = const []}): _stopovers = stopovers;
  factory _TourDetailsResponse.fromJson(Map<String, dynamic> json) => _$TourDetailsResponseFromJson(json);

@override@JsonKey(name: 'id') final  String id;
@override@JsonKey(name: 'departure') final  TourDetailsPoint departure;
@override@JsonKey(name: 'destination') final  TourDetailsPoint destination;
@override@JsonKey(name: 'route') final  TourDetailsRoute route;
@override@JsonKey(name: 'base_cost') final  double baseCost;
@override@JsonKey(name: 'free_seats') final  int freeSeats;
@override@JsonKey(name: 'carrier') final  TourDetailsCarrier carrier;
 final  List<TourDetailsPoint> _stopovers;
@override@JsonKey(name: 'stopovers') List<TourDetailsPoint> get stopovers {
  if (_stopovers is EqualUnmodifiableListView) return _stopovers;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_stopovers);
}


/// Create a copy of TourDetailsResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TourDetailsResponseCopyWith<_TourDetailsResponse> get copyWith => __$TourDetailsResponseCopyWithImpl<_TourDetailsResponse>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$TourDetailsResponseToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _TourDetailsResponse&&(identical(other.id, id) || other.id == id)&&(identical(other.departure, departure) || other.departure == departure)&&(identical(other.destination, destination) || other.destination == destination)&&(identical(other.route, route) || other.route == route)&&(identical(other.baseCost, baseCost) || other.baseCost == baseCost)&&(identical(other.freeSeats, freeSeats) || other.freeSeats == freeSeats)&&(identical(other.carrier, carrier) || other.carrier == carrier)&&const DeepCollectionEquality().equals(other._stopovers, _stopovers));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,departure,destination,route,baseCost,freeSeats,carrier,const DeepCollectionEquality().hash(_stopovers));

@override
String toString() {
  return 'TourDetailsResponse(id: $id, departure: $departure, destination: $destination, route: $route, baseCost: $baseCost, freeSeats: $freeSeats, carrier: $carrier, stopovers: $stopovers)';
}


}

/// @nodoc
abstract mixin class _$TourDetailsResponseCopyWith<$Res> implements $TourDetailsResponseCopyWith<$Res> {
  factory _$TourDetailsResponseCopyWith(_TourDetailsResponse value, $Res Function(_TourDetailsResponse) _then) = __$TourDetailsResponseCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'id') String id,@JsonKey(name: 'departure') TourDetailsPoint departure,@JsonKey(name: 'destination') TourDetailsPoint destination,@JsonKey(name: 'route') TourDetailsRoute route,@JsonKey(name: 'base_cost') double baseCost,@JsonKey(name: 'free_seats') int freeSeats,@JsonKey(name: 'carrier') TourDetailsCarrier carrier,@JsonKey(name: 'stopovers') List<TourDetailsPoint> stopovers
});


@override $TourDetailsPointCopyWith<$Res> get departure;@override $TourDetailsPointCopyWith<$Res> get destination;@override $TourDetailsRouteCopyWith<$Res> get route;@override $TourDetailsCarrierCopyWith<$Res> get carrier;

}
/// @nodoc
class __$TourDetailsResponseCopyWithImpl<$Res>
    implements _$TourDetailsResponseCopyWith<$Res> {
  __$TourDetailsResponseCopyWithImpl(this._self, this._then);

  final _TourDetailsResponse _self;
  final $Res Function(_TourDetailsResponse) _then;

/// Create a copy of TourDetailsResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? departure = null,Object? destination = null,Object? route = null,Object? baseCost = null,Object? freeSeats = null,Object? carrier = null,Object? stopovers = null,}) {
  return _then(_TourDetailsResponse(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,departure: null == departure ? _self.departure : departure // ignore: cast_nullable_to_non_nullable
as TourDetailsPoint,destination: null == destination ? _self.destination : destination // ignore: cast_nullable_to_non_nullable
as TourDetailsPoint,route: null == route ? _self.route : route // ignore: cast_nullable_to_non_nullable
as TourDetailsRoute,baseCost: null == baseCost ? _self.baseCost : baseCost // ignore: cast_nullable_to_non_nullable
as double,freeSeats: null == freeSeats ? _self.freeSeats : freeSeats // ignore: cast_nullable_to_non_nullable
as int,carrier: null == carrier ? _self.carrier : carrier // ignore: cast_nullable_to_non_nullable
as TourDetailsCarrier,stopovers: null == stopovers ? _self._stopovers : stopovers // ignore: cast_nullable_to_non_nullable
as List<TourDetailsPoint>,
  ));
}

/// Create a copy of TourDetailsResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$TourDetailsPointCopyWith<$Res> get departure {
  
  return $TourDetailsPointCopyWith<$Res>(_self.departure, (value) {
    return _then(_self.copyWith(departure: value));
  });
}/// Create a copy of TourDetailsResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$TourDetailsPointCopyWith<$Res> get destination {
  
  return $TourDetailsPointCopyWith<$Res>(_self.destination, (value) {
    return _then(_self.copyWith(destination: value));
  });
}/// Create a copy of TourDetailsResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$TourDetailsRouteCopyWith<$Res> get route {
  
  return $TourDetailsRouteCopyWith<$Res>(_self.route, (value) {
    return _then(_self.copyWith(route: value));
  });
}/// Create a copy of TourDetailsResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$TourDetailsCarrierCopyWith<$Res> get carrier {
  
  return $TourDetailsCarrierCopyWith<$Res>(_self.carrier, (value) {
    return _then(_self.copyWith(carrier: value));
  });
}
}

// dart format on
