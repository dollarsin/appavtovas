// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'passenger_document_type.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$PassengerDocumentType {

@JsonKey(name: 'id') String get id;@JsonKey(name: 'name') String get name;@JsonKey(name: 'mask') String get mask;@JsonKey(name: 'hint') String get hint;
/// Create a copy of PassengerDocumentType
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PassengerDocumentTypeCopyWith<PassengerDocumentType> get copyWith => _$PassengerDocumentTypeCopyWithImpl<PassengerDocumentType>(this as PassengerDocumentType, _$identity);

  /// Serializes this PassengerDocumentType to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PassengerDocumentType&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.mask, mask) || other.mask == mask)&&(identical(other.hint, hint) || other.hint == hint));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,mask,hint);

@override
String toString() {
  return 'PassengerDocumentType(id: $id, name: $name, mask: $mask, hint: $hint)';
}


}

/// @nodoc
abstract mixin class $PassengerDocumentTypeCopyWith<$Res>  {
  factory $PassengerDocumentTypeCopyWith(PassengerDocumentType value, $Res Function(PassengerDocumentType) _then) = _$PassengerDocumentTypeCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'id') String id,@JsonKey(name: 'name') String name,@JsonKey(name: 'mask') String mask,@JsonKey(name: 'hint') String hint
});




}
/// @nodoc
class _$PassengerDocumentTypeCopyWithImpl<$Res>
    implements $PassengerDocumentTypeCopyWith<$Res> {
  _$PassengerDocumentTypeCopyWithImpl(this._self, this._then);

  final PassengerDocumentType _self;
  final $Res Function(PassengerDocumentType) _then;

/// Create a copy of PassengerDocumentType
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = null,Object? mask = null,Object? hint = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,mask: null == mask ? _self.mask : mask // ignore: cast_nullable_to_non_nullable
as String,hint: null == hint ? _self.hint : hint // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [PassengerDocumentType].
extension PassengerDocumentTypePatterns on PassengerDocumentType {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PassengerDocumentType value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PassengerDocumentType() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PassengerDocumentType value)  $default,){
final _that = this;
switch (_that) {
case _PassengerDocumentType():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PassengerDocumentType value)?  $default,){
final _that = this;
switch (_that) {
case _PassengerDocumentType() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'id')  String id, @JsonKey(name: 'name')  String name, @JsonKey(name: 'mask')  String mask, @JsonKey(name: 'hint')  String hint)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PassengerDocumentType() when $default != null:
return $default(_that.id,_that.name,_that.mask,_that.hint);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'id')  String id, @JsonKey(name: 'name')  String name, @JsonKey(name: 'mask')  String mask, @JsonKey(name: 'hint')  String hint)  $default,) {final _that = this;
switch (_that) {
case _PassengerDocumentType():
return $default(_that.id,_that.name,_that.mask,_that.hint);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'id')  String id, @JsonKey(name: 'name')  String name, @JsonKey(name: 'mask')  String mask, @JsonKey(name: 'hint')  String hint)?  $default,) {final _that = this;
switch (_that) {
case _PassengerDocumentType() when $default != null:
return $default(_that.id,_that.name,_that.mask,_that.hint);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _PassengerDocumentType implements PassengerDocumentType {
  const _PassengerDocumentType({@JsonKey(name: 'id') required this.id, @JsonKey(name: 'name') required this.name, @JsonKey(name: 'mask') required this.mask, @JsonKey(name: 'hint') required this.hint});
  factory _PassengerDocumentType.fromJson(Map<String, dynamic> json) => _$PassengerDocumentTypeFromJson(json);

@override@JsonKey(name: 'id') final  String id;
@override@JsonKey(name: 'name') final  String name;
@override@JsonKey(name: 'mask') final  String mask;
@override@JsonKey(name: 'hint') final  String hint;

/// Create a copy of PassengerDocumentType
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PassengerDocumentTypeCopyWith<_PassengerDocumentType> get copyWith => __$PassengerDocumentTypeCopyWithImpl<_PassengerDocumentType>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PassengerDocumentTypeToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PassengerDocumentType&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.mask, mask) || other.mask == mask)&&(identical(other.hint, hint) || other.hint == hint));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,mask,hint);

@override
String toString() {
  return 'PassengerDocumentType(id: $id, name: $name, mask: $mask, hint: $hint)';
}


}

/// @nodoc
abstract mixin class _$PassengerDocumentTypeCopyWith<$Res> implements $PassengerDocumentTypeCopyWith<$Res> {
  factory _$PassengerDocumentTypeCopyWith(_PassengerDocumentType value, $Res Function(_PassengerDocumentType) _then) = __$PassengerDocumentTypeCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'id') String id,@JsonKey(name: 'name') String name,@JsonKey(name: 'mask') String mask,@JsonKey(name: 'hint') String hint
});




}
/// @nodoc
class __$PassengerDocumentTypeCopyWithImpl<$Res>
    implements _$PassengerDocumentTypeCopyWith<$Res> {
  __$PassengerDocumentTypeCopyWithImpl(this._self, this._then);

  final _PassengerDocumentType _self;
  final $Res Function(_PassengerDocumentType) _then;

/// Create a copy of PassengerDocumentType
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,Object? mask = null,Object? hint = null,}) {
  return _then(_PassengerDocumentType(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,mask: null == mask ? _self.mask : mask // ignore: cast_nullable_to_non_nullable
as String,hint: null == hint ? _self.hint : hint // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
