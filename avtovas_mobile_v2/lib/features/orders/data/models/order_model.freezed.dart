// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'order_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$OrderModel {

@JsonKey(name: 'id') String get id;@JsonKey(name: 'trip_id') String get tripId;@JsonKey(name: 'total_amount') double get totalAmount;@JsonKey(name: 'status') OrderStatus get status;@JsonKey(name: 'created_at')@UTCDateTimeConverter() DateTime get createdAt;@JsonKey(name: 'updated_at')@UTCDateTimeConverter() DateTime? get updatedAt;@JsonKey(name: 'passengers') List<OrderPassengerModel> get passengers;
/// Create a copy of OrderModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$OrderModelCopyWith<OrderModel> get copyWith => _$OrderModelCopyWithImpl<OrderModel>(this as OrderModel, _$identity);

  /// Serializes this OrderModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is OrderModel&&(identical(other.id, id) || other.id == id)&&(identical(other.tripId, tripId) || other.tripId == tripId)&&(identical(other.totalAmount, totalAmount) || other.totalAmount == totalAmount)&&(identical(other.status, status) || other.status == status)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt)&&const DeepCollectionEquality().equals(other.passengers, passengers));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,tripId,totalAmount,status,createdAt,updatedAt,const DeepCollectionEquality().hash(passengers));

@override
String toString() {
  return 'OrderModel(id: $id, tripId: $tripId, totalAmount: $totalAmount, status: $status, createdAt: $createdAt, updatedAt: $updatedAt, passengers: $passengers)';
}


}

/// @nodoc
abstract mixin class $OrderModelCopyWith<$Res>  {
  factory $OrderModelCopyWith(OrderModel value, $Res Function(OrderModel) _then) = _$OrderModelCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'id') String id,@JsonKey(name: 'trip_id') String tripId,@JsonKey(name: 'total_amount') double totalAmount,@JsonKey(name: 'status') OrderStatus status,@JsonKey(name: 'created_at')@UTCDateTimeConverter() DateTime createdAt,@JsonKey(name: 'updated_at')@UTCDateTimeConverter() DateTime? updatedAt,@JsonKey(name: 'passengers') List<OrderPassengerModel> passengers
});




}
/// @nodoc
class _$OrderModelCopyWithImpl<$Res>
    implements $OrderModelCopyWith<$Res> {
  _$OrderModelCopyWithImpl(this._self, this._then);

  final OrderModel _self;
  final $Res Function(OrderModel) _then;

/// Create a copy of OrderModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? tripId = null,Object? totalAmount = null,Object? status = null,Object? createdAt = null,Object? updatedAt = freezed,Object? passengers = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,tripId: null == tripId ? _self.tripId : tripId // ignore: cast_nullable_to_non_nullable
as String,totalAmount: null == totalAmount ? _self.totalAmount : totalAmount // ignore: cast_nullable_to_non_nullable
as double,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as OrderStatus,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,passengers: null == passengers ? _self.passengers : passengers // ignore: cast_nullable_to_non_nullable
as List<OrderPassengerModel>,
  ));
}

}


/// Adds pattern-matching-related methods to [OrderModel].
extension OrderModelPatterns on OrderModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _OrderModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _OrderModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _OrderModel value)  $default,){
final _that = this;
switch (_that) {
case _OrderModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _OrderModel value)?  $default,){
final _that = this;
switch (_that) {
case _OrderModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'id')  String id, @JsonKey(name: 'trip_id')  String tripId, @JsonKey(name: 'total_amount')  double totalAmount, @JsonKey(name: 'status')  OrderStatus status, @JsonKey(name: 'created_at')@UTCDateTimeConverter()  DateTime createdAt, @JsonKey(name: 'updated_at')@UTCDateTimeConverter()  DateTime? updatedAt, @JsonKey(name: 'passengers')  List<OrderPassengerModel> passengers)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _OrderModel() when $default != null:
return $default(_that.id,_that.tripId,_that.totalAmount,_that.status,_that.createdAt,_that.updatedAt,_that.passengers);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'id')  String id, @JsonKey(name: 'trip_id')  String tripId, @JsonKey(name: 'total_amount')  double totalAmount, @JsonKey(name: 'status')  OrderStatus status, @JsonKey(name: 'created_at')@UTCDateTimeConverter()  DateTime createdAt, @JsonKey(name: 'updated_at')@UTCDateTimeConverter()  DateTime? updatedAt, @JsonKey(name: 'passengers')  List<OrderPassengerModel> passengers)  $default,) {final _that = this;
switch (_that) {
case _OrderModel():
return $default(_that.id,_that.tripId,_that.totalAmount,_that.status,_that.createdAt,_that.updatedAt,_that.passengers);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'id')  String id, @JsonKey(name: 'trip_id')  String tripId, @JsonKey(name: 'total_amount')  double totalAmount, @JsonKey(name: 'status')  OrderStatus status, @JsonKey(name: 'created_at')@UTCDateTimeConverter()  DateTime createdAt, @JsonKey(name: 'updated_at')@UTCDateTimeConverter()  DateTime? updatedAt, @JsonKey(name: 'passengers')  List<OrderPassengerModel> passengers)?  $default,) {final _that = this;
switch (_that) {
case _OrderModel() when $default != null:
return $default(_that.id,_that.tripId,_that.totalAmount,_that.status,_that.createdAt,_that.updatedAt,_that.passengers);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _OrderModel implements OrderModel {
  const _OrderModel({@JsonKey(name: 'id') required this.id, @JsonKey(name: 'trip_id') required this.tripId, @JsonKey(name: 'total_amount') required this.totalAmount, @JsonKey(name: 'status') required this.status, @JsonKey(name: 'created_at')@UTCDateTimeConverter() required this.createdAt, @JsonKey(name: 'updated_at')@UTCDateTimeConverter() this.updatedAt, @JsonKey(name: 'passengers') final  List<OrderPassengerModel> passengers = const []}): _passengers = passengers;
  factory _OrderModel.fromJson(Map<String, dynamic> json) => _$OrderModelFromJson(json);

@override@JsonKey(name: 'id') final  String id;
@override@JsonKey(name: 'trip_id') final  String tripId;
@override@JsonKey(name: 'total_amount') final  double totalAmount;
@override@JsonKey(name: 'status') final  OrderStatus status;
@override@JsonKey(name: 'created_at')@UTCDateTimeConverter() final  DateTime createdAt;
@override@JsonKey(name: 'updated_at')@UTCDateTimeConverter() final  DateTime? updatedAt;
 final  List<OrderPassengerModel> _passengers;
@override@JsonKey(name: 'passengers') List<OrderPassengerModel> get passengers {
  if (_passengers is EqualUnmodifiableListView) return _passengers;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_passengers);
}


/// Create a copy of OrderModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$OrderModelCopyWith<_OrderModel> get copyWith => __$OrderModelCopyWithImpl<_OrderModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$OrderModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _OrderModel&&(identical(other.id, id) || other.id == id)&&(identical(other.tripId, tripId) || other.tripId == tripId)&&(identical(other.totalAmount, totalAmount) || other.totalAmount == totalAmount)&&(identical(other.status, status) || other.status == status)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt)&&const DeepCollectionEquality().equals(other._passengers, _passengers));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,tripId,totalAmount,status,createdAt,updatedAt,const DeepCollectionEquality().hash(_passengers));

@override
String toString() {
  return 'OrderModel(id: $id, tripId: $tripId, totalAmount: $totalAmount, status: $status, createdAt: $createdAt, updatedAt: $updatedAt, passengers: $passengers)';
}


}

/// @nodoc
abstract mixin class _$OrderModelCopyWith<$Res> implements $OrderModelCopyWith<$Res> {
  factory _$OrderModelCopyWith(_OrderModel value, $Res Function(_OrderModel) _then) = __$OrderModelCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'id') String id,@JsonKey(name: 'trip_id') String tripId,@JsonKey(name: 'total_amount') double totalAmount,@JsonKey(name: 'status') OrderStatus status,@JsonKey(name: 'created_at')@UTCDateTimeConverter() DateTime createdAt,@JsonKey(name: 'updated_at')@UTCDateTimeConverter() DateTime? updatedAt,@JsonKey(name: 'passengers') List<OrderPassengerModel> passengers
});




}
/// @nodoc
class __$OrderModelCopyWithImpl<$Res>
    implements _$OrderModelCopyWith<$Res> {
  __$OrderModelCopyWithImpl(this._self, this._then);

  final _OrderModel _self;
  final $Res Function(_OrderModel) _then;

/// Create a copy of OrderModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? tripId = null,Object? totalAmount = null,Object? status = null,Object? createdAt = null,Object? updatedAt = freezed,Object? passengers = null,}) {
  return _then(_OrderModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,tripId: null == tripId ? _self.tripId : tripId // ignore: cast_nullable_to_non_nullable
as String,totalAmount: null == totalAmount ? _self.totalAmount : totalAmount // ignore: cast_nullable_to_non_nullable
as double,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as OrderStatus,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,passengers: null == passengers ? _self._passengers : passengers // ignore: cast_nullable_to_non_nullable
as List<OrderPassengerModel>,
  ));
}


}

// dart format on
