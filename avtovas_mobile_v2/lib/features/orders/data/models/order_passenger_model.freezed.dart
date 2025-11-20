// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'order_passenger_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$OrderPassengerModel {

@JsonKey(name: 'id') String get id;@JsonKey(name: 'passenger_id') String get passengerId;@JsonKey(name: 'order_id') String get orderId;@JsonKey(name: 'price') double get price;@JsonKey(name: 'seat_number') String? get seatNumber;
/// Create a copy of OrderPassengerModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$OrderPassengerModelCopyWith<OrderPassengerModel> get copyWith => _$OrderPassengerModelCopyWithImpl<OrderPassengerModel>(this as OrderPassengerModel, _$identity);

  /// Serializes this OrderPassengerModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is OrderPassengerModel&&(identical(other.id, id) || other.id == id)&&(identical(other.passengerId, passengerId) || other.passengerId == passengerId)&&(identical(other.orderId, orderId) || other.orderId == orderId)&&(identical(other.price, price) || other.price == price)&&(identical(other.seatNumber, seatNumber) || other.seatNumber == seatNumber));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,passengerId,orderId,price,seatNumber);

@override
String toString() {
  return 'OrderPassengerModel(id: $id, passengerId: $passengerId, orderId: $orderId, price: $price, seatNumber: $seatNumber)';
}


}

/// @nodoc
abstract mixin class $OrderPassengerModelCopyWith<$Res>  {
  factory $OrderPassengerModelCopyWith(OrderPassengerModel value, $Res Function(OrderPassengerModel) _then) = _$OrderPassengerModelCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'id') String id,@JsonKey(name: 'passenger_id') String passengerId,@JsonKey(name: 'order_id') String orderId,@JsonKey(name: 'price') double price,@JsonKey(name: 'seat_number') String? seatNumber
});




}
/// @nodoc
class _$OrderPassengerModelCopyWithImpl<$Res>
    implements $OrderPassengerModelCopyWith<$Res> {
  _$OrderPassengerModelCopyWithImpl(this._self, this._then);

  final OrderPassengerModel _self;
  final $Res Function(OrderPassengerModel) _then;

/// Create a copy of OrderPassengerModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? passengerId = null,Object? orderId = null,Object? price = null,Object? seatNumber = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,passengerId: null == passengerId ? _self.passengerId : passengerId // ignore: cast_nullable_to_non_nullable
as String,orderId: null == orderId ? _self.orderId : orderId // ignore: cast_nullable_to_non_nullable
as String,price: null == price ? _self.price : price // ignore: cast_nullable_to_non_nullable
as double,seatNumber: freezed == seatNumber ? _self.seatNumber : seatNumber // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [OrderPassengerModel].
extension OrderPassengerModelPatterns on OrderPassengerModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _OrderPassengerModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _OrderPassengerModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _OrderPassengerModel value)  $default,){
final _that = this;
switch (_that) {
case _OrderPassengerModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _OrderPassengerModel value)?  $default,){
final _that = this;
switch (_that) {
case _OrderPassengerModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'id')  String id, @JsonKey(name: 'passenger_id')  String passengerId, @JsonKey(name: 'order_id')  String orderId, @JsonKey(name: 'price')  double price, @JsonKey(name: 'seat_number')  String? seatNumber)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _OrderPassengerModel() when $default != null:
return $default(_that.id,_that.passengerId,_that.orderId,_that.price,_that.seatNumber);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'id')  String id, @JsonKey(name: 'passenger_id')  String passengerId, @JsonKey(name: 'order_id')  String orderId, @JsonKey(name: 'price')  double price, @JsonKey(name: 'seat_number')  String? seatNumber)  $default,) {final _that = this;
switch (_that) {
case _OrderPassengerModel():
return $default(_that.id,_that.passengerId,_that.orderId,_that.price,_that.seatNumber);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'id')  String id, @JsonKey(name: 'passenger_id')  String passengerId, @JsonKey(name: 'order_id')  String orderId, @JsonKey(name: 'price')  double price, @JsonKey(name: 'seat_number')  String? seatNumber)?  $default,) {final _that = this;
switch (_that) {
case _OrderPassengerModel() when $default != null:
return $default(_that.id,_that.passengerId,_that.orderId,_that.price,_that.seatNumber);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _OrderPassengerModel implements OrderPassengerModel {
  const _OrderPassengerModel({@JsonKey(name: 'id') required this.id, @JsonKey(name: 'passenger_id') required this.passengerId, @JsonKey(name: 'order_id') required this.orderId, @JsonKey(name: 'price') required this.price, @JsonKey(name: 'seat_number') this.seatNumber});
  factory _OrderPassengerModel.fromJson(Map<String, dynamic> json) => _$OrderPassengerModelFromJson(json);

@override@JsonKey(name: 'id') final  String id;
@override@JsonKey(name: 'passenger_id') final  String passengerId;
@override@JsonKey(name: 'order_id') final  String orderId;
@override@JsonKey(name: 'price') final  double price;
@override@JsonKey(name: 'seat_number') final  String? seatNumber;

/// Create a copy of OrderPassengerModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$OrderPassengerModelCopyWith<_OrderPassengerModel> get copyWith => __$OrderPassengerModelCopyWithImpl<_OrderPassengerModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$OrderPassengerModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _OrderPassengerModel&&(identical(other.id, id) || other.id == id)&&(identical(other.passengerId, passengerId) || other.passengerId == passengerId)&&(identical(other.orderId, orderId) || other.orderId == orderId)&&(identical(other.price, price) || other.price == price)&&(identical(other.seatNumber, seatNumber) || other.seatNumber == seatNumber));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,passengerId,orderId,price,seatNumber);

@override
String toString() {
  return 'OrderPassengerModel(id: $id, passengerId: $passengerId, orderId: $orderId, price: $price, seatNumber: $seatNumber)';
}


}

/// @nodoc
abstract mixin class _$OrderPassengerModelCopyWith<$Res> implements $OrderPassengerModelCopyWith<$Res> {
  factory _$OrderPassengerModelCopyWith(_OrderPassengerModel value, $Res Function(_OrderPassengerModel) _then) = __$OrderPassengerModelCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'id') String id,@JsonKey(name: 'passenger_id') String passengerId,@JsonKey(name: 'order_id') String orderId,@JsonKey(name: 'price') double price,@JsonKey(name: 'seat_number') String? seatNumber
});




}
/// @nodoc
class __$OrderPassengerModelCopyWithImpl<$Res>
    implements _$OrderPassengerModelCopyWith<$Res> {
  __$OrderPassengerModelCopyWithImpl(this._self, this._then);

  final _OrderPassengerModel _self;
  final $Res Function(_OrderPassengerModel) _then;

/// Create a copy of OrderPassengerModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? passengerId = null,Object? orderId = null,Object? price = null,Object? seatNumber = freezed,}) {
  return _then(_OrderPassengerModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,passengerId: null == passengerId ? _self.passengerId : passengerId // ignore: cast_nullable_to_non_nullable
as String,orderId: null == orderId ? _self.orderId : orderId // ignore: cast_nullable_to_non_nullable
as String,price: null == price ? _self.price : price // ignore: cast_nullable_to_non_nullable
as double,seatNumber: freezed == seatNumber ? _self.seatNumber : seatNumber // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
