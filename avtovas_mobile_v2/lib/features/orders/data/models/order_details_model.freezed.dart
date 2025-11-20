// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'order_details_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$OrderDetailsModel {

@JsonKey(name: 'id') String get id;@JsonKey(name: 'trip_id') String get tripId;@JsonKey(name: 'total_amount') double get totalAmount;@JsonKey(name: 'status') OrderStatus get status;@JsonKey(name: 'items_description') String get itemsDescription;@JsonKey(name: 'created_at')@UTCDateTimeConverter() DateTime get createdAt;@JsonKey(name: 'updated_at')@UTCDateTimeConverter() DateTime? get updatedAt;@JsonKey(name: 'passengers') List<OrderPassengerModel> get passengers;@JsonKey(name: 'payments') List<PaymentModel> get payments;
/// Create a copy of OrderDetailsModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$OrderDetailsModelCopyWith<OrderDetailsModel> get copyWith => _$OrderDetailsModelCopyWithImpl<OrderDetailsModel>(this as OrderDetailsModel, _$identity);

  /// Serializes this OrderDetailsModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is OrderDetailsModel&&(identical(other.id, id) || other.id == id)&&(identical(other.tripId, tripId) || other.tripId == tripId)&&(identical(other.totalAmount, totalAmount) || other.totalAmount == totalAmount)&&(identical(other.status, status) || other.status == status)&&(identical(other.itemsDescription, itemsDescription) || other.itemsDescription == itemsDescription)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt)&&const DeepCollectionEquality().equals(other.passengers, passengers)&&const DeepCollectionEquality().equals(other.payments, payments));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,tripId,totalAmount,status,itemsDescription,createdAt,updatedAt,const DeepCollectionEquality().hash(passengers),const DeepCollectionEquality().hash(payments));

@override
String toString() {
  return 'OrderDetailsModel(id: $id, tripId: $tripId, totalAmount: $totalAmount, status: $status, itemsDescription: $itemsDescription, createdAt: $createdAt, updatedAt: $updatedAt, passengers: $passengers, payments: $payments)';
}


}

/// @nodoc
abstract mixin class $OrderDetailsModelCopyWith<$Res>  {
  factory $OrderDetailsModelCopyWith(OrderDetailsModel value, $Res Function(OrderDetailsModel) _then) = _$OrderDetailsModelCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'id') String id,@JsonKey(name: 'trip_id') String tripId,@JsonKey(name: 'total_amount') double totalAmount,@JsonKey(name: 'status') OrderStatus status,@JsonKey(name: 'items_description') String itemsDescription,@JsonKey(name: 'created_at')@UTCDateTimeConverter() DateTime createdAt,@JsonKey(name: 'updated_at')@UTCDateTimeConverter() DateTime? updatedAt,@JsonKey(name: 'passengers') List<OrderPassengerModel> passengers,@JsonKey(name: 'payments') List<PaymentModel> payments
});




}
/// @nodoc
class _$OrderDetailsModelCopyWithImpl<$Res>
    implements $OrderDetailsModelCopyWith<$Res> {
  _$OrderDetailsModelCopyWithImpl(this._self, this._then);

  final OrderDetailsModel _self;
  final $Res Function(OrderDetailsModel) _then;

/// Create a copy of OrderDetailsModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? tripId = null,Object? totalAmount = null,Object? status = null,Object? itemsDescription = null,Object? createdAt = null,Object? updatedAt = freezed,Object? passengers = null,Object? payments = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,tripId: null == tripId ? _self.tripId : tripId // ignore: cast_nullable_to_non_nullable
as String,totalAmount: null == totalAmount ? _self.totalAmount : totalAmount // ignore: cast_nullable_to_non_nullable
as double,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as OrderStatus,itemsDescription: null == itemsDescription ? _self.itemsDescription : itemsDescription // ignore: cast_nullable_to_non_nullable
as String,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,passengers: null == passengers ? _self.passengers : passengers // ignore: cast_nullable_to_non_nullable
as List<OrderPassengerModel>,payments: null == payments ? _self.payments : payments // ignore: cast_nullable_to_non_nullable
as List<PaymentModel>,
  ));
}

}


/// Adds pattern-matching-related methods to [OrderDetailsModel].
extension OrderDetailsModelPatterns on OrderDetailsModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _OrderDetailsModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _OrderDetailsModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _OrderDetailsModel value)  $default,){
final _that = this;
switch (_that) {
case _OrderDetailsModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _OrderDetailsModel value)?  $default,){
final _that = this;
switch (_that) {
case _OrderDetailsModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'id')  String id, @JsonKey(name: 'trip_id')  String tripId, @JsonKey(name: 'total_amount')  double totalAmount, @JsonKey(name: 'status')  OrderStatus status, @JsonKey(name: 'items_description')  String itemsDescription, @JsonKey(name: 'created_at')@UTCDateTimeConverter()  DateTime createdAt, @JsonKey(name: 'updated_at')@UTCDateTimeConverter()  DateTime? updatedAt, @JsonKey(name: 'passengers')  List<OrderPassengerModel> passengers, @JsonKey(name: 'payments')  List<PaymentModel> payments)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _OrderDetailsModel() when $default != null:
return $default(_that.id,_that.tripId,_that.totalAmount,_that.status,_that.itemsDescription,_that.createdAt,_that.updatedAt,_that.passengers,_that.payments);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'id')  String id, @JsonKey(name: 'trip_id')  String tripId, @JsonKey(name: 'total_amount')  double totalAmount, @JsonKey(name: 'status')  OrderStatus status, @JsonKey(name: 'items_description')  String itemsDescription, @JsonKey(name: 'created_at')@UTCDateTimeConverter()  DateTime createdAt, @JsonKey(name: 'updated_at')@UTCDateTimeConverter()  DateTime? updatedAt, @JsonKey(name: 'passengers')  List<OrderPassengerModel> passengers, @JsonKey(name: 'payments')  List<PaymentModel> payments)  $default,) {final _that = this;
switch (_that) {
case _OrderDetailsModel():
return $default(_that.id,_that.tripId,_that.totalAmount,_that.status,_that.itemsDescription,_that.createdAt,_that.updatedAt,_that.passengers,_that.payments);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'id')  String id, @JsonKey(name: 'trip_id')  String tripId, @JsonKey(name: 'total_amount')  double totalAmount, @JsonKey(name: 'status')  OrderStatus status, @JsonKey(name: 'items_description')  String itemsDescription, @JsonKey(name: 'created_at')@UTCDateTimeConverter()  DateTime createdAt, @JsonKey(name: 'updated_at')@UTCDateTimeConverter()  DateTime? updatedAt, @JsonKey(name: 'passengers')  List<OrderPassengerModel> passengers, @JsonKey(name: 'payments')  List<PaymentModel> payments)?  $default,) {final _that = this;
switch (_that) {
case _OrderDetailsModel() when $default != null:
return $default(_that.id,_that.tripId,_that.totalAmount,_that.status,_that.itemsDescription,_that.createdAt,_that.updatedAt,_that.passengers,_that.payments);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _OrderDetailsModel implements OrderDetailsModel {
  const _OrderDetailsModel({@JsonKey(name: 'id') required this.id, @JsonKey(name: 'trip_id') required this.tripId, @JsonKey(name: 'total_amount') required this.totalAmount, @JsonKey(name: 'status') required this.status, @JsonKey(name: 'items_description') required this.itemsDescription, @JsonKey(name: 'created_at')@UTCDateTimeConverter() required this.createdAt, @JsonKey(name: 'updated_at')@UTCDateTimeConverter() this.updatedAt, @JsonKey(name: 'passengers') final  List<OrderPassengerModel> passengers = const [], @JsonKey(name: 'payments') final  List<PaymentModel> payments = const []}): _passengers = passengers,_payments = payments;
  factory _OrderDetailsModel.fromJson(Map<String, dynamic> json) => _$OrderDetailsModelFromJson(json);

@override@JsonKey(name: 'id') final  String id;
@override@JsonKey(name: 'trip_id') final  String tripId;
@override@JsonKey(name: 'total_amount') final  double totalAmount;
@override@JsonKey(name: 'status') final  OrderStatus status;
@override@JsonKey(name: 'items_description') final  String itemsDescription;
@override@JsonKey(name: 'created_at')@UTCDateTimeConverter() final  DateTime createdAt;
@override@JsonKey(name: 'updated_at')@UTCDateTimeConverter() final  DateTime? updatedAt;
 final  List<OrderPassengerModel> _passengers;
@override@JsonKey(name: 'passengers') List<OrderPassengerModel> get passengers {
  if (_passengers is EqualUnmodifiableListView) return _passengers;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_passengers);
}

 final  List<PaymentModel> _payments;
@override@JsonKey(name: 'payments') List<PaymentModel> get payments {
  if (_payments is EqualUnmodifiableListView) return _payments;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_payments);
}


/// Create a copy of OrderDetailsModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$OrderDetailsModelCopyWith<_OrderDetailsModel> get copyWith => __$OrderDetailsModelCopyWithImpl<_OrderDetailsModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$OrderDetailsModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _OrderDetailsModel&&(identical(other.id, id) || other.id == id)&&(identical(other.tripId, tripId) || other.tripId == tripId)&&(identical(other.totalAmount, totalAmount) || other.totalAmount == totalAmount)&&(identical(other.status, status) || other.status == status)&&(identical(other.itemsDescription, itemsDescription) || other.itemsDescription == itemsDescription)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt)&&const DeepCollectionEquality().equals(other._passengers, _passengers)&&const DeepCollectionEquality().equals(other._payments, _payments));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,tripId,totalAmount,status,itemsDescription,createdAt,updatedAt,const DeepCollectionEquality().hash(_passengers),const DeepCollectionEquality().hash(_payments));

@override
String toString() {
  return 'OrderDetailsModel(id: $id, tripId: $tripId, totalAmount: $totalAmount, status: $status, itemsDescription: $itemsDescription, createdAt: $createdAt, updatedAt: $updatedAt, passengers: $passengers, payments: $payments)';
}


}

/// @nodoc
abstract mixin class _$OrderDetailsModelCopyWith<$Res> implements $OrderDetailsModelCopyWith<$Res> {
  factory _$OrderDetailsModelCopyWith(_OrderDetailsModel value, $Res Function(_OrderDetailsModel) _then) = __$OrderDetailsModelCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'id') String id,@JsonKey(name: 'trip_id') String tripId,@JsonKey(name: 'total_amount') double totalAmount,@JsonKey(name: 'status') OrderStatus status,@JsonKey(name: 'items_description') String itemsDescription,@JsonKey(name: 'created_at')@UTCDateTimeConverter() DateTime createdAt,@JsonKey(name: 'updated_at')@UTCDateTimeConverter() DateTime? updatedAt,@JsonKey(name: 'passengers') List<OrderPassengerModel> passengers,@JsonKey(name: 'payments') List<PaymentModel> payments
});




}
/// @nodoc
class __$OrderDetailsModelCopyWithImpl<$Res>
    implements _$OrderDetailsModelCopyWith<$Res> {
  __$OrderDetailsModelCopyWithImpl(this._self, this._then);

  final _OrderDetailsModel _self;
  final $Res Function(_OrderDetailsModel) _then;

/// Create a copy of OrderDetailsModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? tripId = null,Object? totalAmount = null,Object? status = null,Object? itemsDescription = null,Object? createdAt = null,Object? updatedAt = freezed,Object? passengers = null,Object? payments = null,}) {
  return _then(_OrderDetailsModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,tripId: null == tripId ? _self.tripId : tripId // ignore: cast_nullable_to_non_nullable
as String,totalAmount: null == totalAmount ? _self.totalAmount : totalAmount // ignore: cast_nullable_to_non_nullable
as double,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as OrderStatus,itemsDescription: null == itemsDescription ? _self.itemsDescription : itemsDescription // ignore: cast_nullable_to_non_nullable
as String,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,passengers: null == passengers ? _self._passengers : passengers // ignore: cast_nullable_to_non_nullable
as List<OrderPassengerModel>,payments: null == payments ? _self._payments : payments // ignore: cast_nullable_to_non_nullable
as List<PaymentModel>,
  ));
}


}

// dart format on
