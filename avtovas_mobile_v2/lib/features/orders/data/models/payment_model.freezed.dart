// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'payment_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$PaymentModel {

@JsonKey(name: 'id') String get id;@JsonKey(name: 'order_id') String get orderId;@JsonKey(name: 'amount') double get amount;@JsonKey(name: 'status') PaymentStatus get status;@JsonKey(name: 'processed_at')@UTCDateTimeConverter() DateTime get processedAt;@JsonKey(name: 'method') String get method;@JsonKey(name: 'transaction_id') String? get transactionId;
/// Create a copy of PaymentModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PaymentModelCopyWith<PaymentModel> get copyWith => _$PaymentModelCopyWithImpl<PaymentModel>(this as PaymentModel, _$identity);

  /// Serializes this PaymentModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PaymentModel&&(identical(other.id, id) || other.id == id)&&(identical(other.orderId, orderId) || other.orderId == orderId)&&(identical(other.amount, amount) || other.amount == amount)&&(identical(other.status, status) || other.status == status)&&(identical(other.processedAt, processedAt) || other.processedAt == processedAt)&&(identical(other.method, method) || other.method == method)&&(identical(other.transactionId, transactionId) || other.transactionId == transactionId));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,orderId,amount,status,processedAt,method,transactionId);

@override
String toString() {
  return 'PaymentModel(id: $id, orderId: $orderId, amount: $amount, status: $status, processedAt: $processedAt, method: $method, transactionId: $transactionId)';
}


}

/// @nodoc
abstract mixin class $PaymentModelCopyWith<$Res>  {
  factory $PaymentModelCopyWith(PaymentModel value, $Res Function(PaymentModel) _then) = _$PaymentModelCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'id') String id,@JsonKey(name: 'order_id') String orderId,@JsonKey(name: 'amount') double amount,@JsonKey(name: 'status') PaymentStatus status,@JsonKey(name: 'processed_at')@UTCDateTimeConverter() DateTime processedAt,@JsonKey(name: 'method') String method,@JsonKey(name: 'transaction_id') String? transactionId
});




}
/// @nodoc
class _$PaymentModelCopyWithImpl<$Res>
    implements $PaymentModelCopyWith<$Res> {
  _$PaymentModelCopyWithImpl(this._self, this._then);

  final PaymentModel _self;
  final $Res Function(PaymentModel) _then;

/// Create a copy of PaymentModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? orderId = null,Object? amount = null,Object? status = null,Object? processedAt = null,Object? method = null,Object? transactionId = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,orderId: null == orderId ? _self.orderId : orderId // ignore: cast_nullable_to_non_nullable
as String,amount: null == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
as double,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as PaymentStatus,processedAt: null == processedAt ? _self.processedAt : processedAt // ignore: cast_nullable_to_non_nullable
as DateTime,method: null == method ? _self.method : method // ignore: cast_nullable_to_non_nullable
as String,transactionId: freezed == transactionId ? _self.transactionId : transactionId // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [PaymentModel].
extension PaymentModelPatterns on PaymentModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PaymentModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PaymentModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PaymentModel value)  $default,){
final _that = this;
switch (_that) {
case _PaymentModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PaymentModel value)?  $default,){
final _that = this;
switch (_that) {
case _PaymentModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'id')  String id, @JsonKey(name: 'order_id')  String orderId, @JsonKey(name: 'amount')  double amount, @JsonKey(name: 'status')  PaymentStatus status, @JsonKey(name: 'processed_at')@UTCDateTimeConverter()  DateTime processedAt, @JsonKey(name: 'method')  String method, @JsonKey(name: 'transaction_id')  String? transactionId)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PaymentModel() when $default != null:
return $default(_that.id,_that.orderId,_that.amount,_that.status,_that.processedAt,_that.method,_that.transactionId);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'id')  String id, @JsonKey(name: 'order_id')  String orderId, @JsonKey(name: 'amount')  double amount, @JsonKey(name: 'status')  PaymentStatus status, @JsonKey(name: 'processed_at')@UTCDateTimeConverter()  DateTime processedAt, @JsonKey(name: 'method')  String method, @JsonKey(name: 'transaction_id')  String? transactionId)  $default,) {final _that = this;
switch (_that) {
case _PaymentModel():
return $default(_that.id,_that.orderId,_that.amount,_that.status,_that.processedAt,_that.method,_that.transactionId);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'id')  String id, @JsonKey(name: 'order_id')  String orderId, @JsonKey(name: 'amount')  double amount, @JsonKey(name: 'status')  PaymentStatus status, @JsonKey(name: 'processed_at')@UTCDateTimeConverter()  DateTime processedAt, @JsonKey(name: 'method')  String method, @JsonKey(name: 'transaction_id')  String? transactionId)?  $default,) {final _that = this;
switch (_that) {
case _PaymentModel() when $default != null:
return $default(_that.id,_that.orderId,_that.amount,_that.status,_that.processedAt,_that.method,_that.transactionId);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _PaymentModel implements PaymentModel {
  const _PaymentModel({@JsonKey(name: 'id') required this.id, @JsonKey(name: 'order_id') required this.orderId, @JsonKey(name: 'amount') required this.amount, @JsonKey(name: 'status') required this.status, @JsonKey(name: 'processed_at')@UTCDateTimeConverter() required this.processedAt, @JsonKey(name: 'method') this.method = '', @JsonKey(name: 'transaction_id') this.transactionId});
  factory _PaymentModel.fromJson(Map<String, dynamic> json) => _$PaymentModelFromJson(json);

@override@JsonKey(name: 'id') final  String id;
@override@JsonKey(name: 'order_id') final  String orderId;
@override@JsonKey(name: 'amount') final  double amount;
@override@JsonKey(name: 'status') final  PaymentStatus status;
@override@JsonKey(name: 'processed_at')@UTCDateTimeConverter() final  DateTime processedAt;
@override@JsonKey(name: 'method') final  String method;
@override@JsonKey(name: 'transaction_id') final  String? transactionId;

/// Create a copy of PaymentModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PaymentModelCopyWith<_PaymentModel> get copyWith => __$PaymentModelCopyWithImpl<_PaymentModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PaymentModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PaymentModel&&(identical(other.id, id) || other.id == id)&&(identical(other.orderId, orderId) || other.orderId == orderId)&&(identical(other.amount, amount) || other.amount == amount)&&(identical(other.status, status) || other.status == status)&&(identical(other.processedAt, processedAt) || other.processedAt == processedAt)&&(identical(other.method, method) || other.method == method)&&(identical(other.transactionId, transactionId) || other.transactionId == transactionId));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,orderId,amount,status,processedAt,method,transactionId);

@override
String toString() {
  return 'PaymentModel(id: $id, orderId: $orderId, amount: $amount, status: $status, processedAt: $processedAt, method: $method, transactionId: $transactionId)';
}


}

/// @nodoc
abstract mixin class _$PaymentModelCopyWith<$Res> implements $PaymentModelCopyWith<$Res> {
  factory _$PaymentModelCopyWith(_PaymentModel value, $Res Function(_PaymentModel) _then) = __$PaymentModelCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'id') String id,@JsonKey(name: 'order_id') String orderId,@JsonKey(name: 'amount') double amount,@JsonKey(name: 'status') PaymentStatus status,@JsonKey(name: 'processed_at')@UTCDateTimeConverter() DateTime processedAt,@JsonKey(name: 'method') String method,@JsonKey(name: 'transaction_id') String? transactionId
});




}
/// @nodoc
class __$PaymentModelCopyWithImpl<$Res>
    implements _$PaymentModelCopyWith<$Res> {
  __$PaymentModelCopyWithImpl(this._self, this._then);

  final _PaymentModel _self;
  final $Res Function(_PaymentModel) _then;

/// Create a copy of PaymentModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? orderId = null,Object? amount = null,Object? status = null,Object? processedAt = null,Object? method = null,Object? transactionId = freezed,}) {
  return _then(_PaymentModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,orderId: null == orderId ? _self.orderId : orderId // ignore: cast_nullable_to_non_nullable
as String,amount: null == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
as double,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as PaymentStatus,processedAt: null == processedAt ? _self.processedAt : processedAt // ignore: cast_nullable_to_non_nullable
as DateTime,method: null == method ? _self.method : method // ignore: cast_nullable_to_non_nullable
as String,transactionId: freezed == transactionId ? _self.transactionId : transactionId // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
