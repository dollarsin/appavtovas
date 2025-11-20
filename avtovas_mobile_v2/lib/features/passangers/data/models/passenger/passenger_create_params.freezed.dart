// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'passenger_create_params.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$PassengerCreateParams {

@JsonKey(name: 'first_name') String get firstName;@JsonKey(name: 'last_name') String get lastName;@JsonKey(name: 'gender') Gender get gender;@JsonKey(name: 'birthdate')@UTCDateTimeConverter() DateTime get birthDate;@JsonKey(name: 'citizenship_id') String get citizenshipId;@JsonKey(name: 'document_type_id') String get documentTypeId;@JsonKey(name: 'document_number') String get documentNumber;@JsonKey(name: 'patronymic') String? get patronymic;
/// Create a copy of PassengerCreateParams
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PassengerCreateParamsCopyWith<PassengerCreateParams> get copyWith => _$PassengerCreateParamsCopyWithImpl<PassengerCreateParams>(this as PassengerCreateParams, _$identity);

  /// Serializes this PassengerCreateParams to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PassengerCreateParams&&(identical(other.firstName, firstName) || other.firstName == firstName)&&(identical(other.lastName, lastName) || other.lastName == lastName)&&(identical(other.gender, gender) || other.gender == gender)&&(identical(other.birthDate, birthDate) || other.birthDate == birthDate)&&(identical(other.citizenshipId, citizenshipId) || other.citizenshipId == citizenshipId)&&(identical(other.documentTypeId, documentTypeId) || other.documentTypeId == documentTypeId)&&(identical(other.documentNumber, documentNumber) || other.documentNumber == documentNumber)&&(identical(other.patronymic, patronymic) || other.patronymic == patronymic));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,firstName,lastName,gender,birthDate,citizenshipId,documentTypeId,documentNumber,patronymic);

@override
String toString() {
  return 'PassengerCreateParams(firstName: $firstName, lastName: $lastName, gender: $gender, birthDate: $birthDate, citizenshipId: $citizenshipId, documentTypeId: $documentTypeId, documentNumber: $documentNumber, patronymic: $patronymic)';
}


}

/// @nodoc
abstract mixin class $PassengerCreateParamsCopyWith<$Res>  {
  factory $PassengerCreateParamsCopyWith(PassengerCreateParams value, $Res Function(PassengerCreateParams) _then) = _$PassengerCreateParamsCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'first_name') String firstName,@JsonKey(name: 'last_name') String lastName,@JsonKey(name: 'gender') Gender gender,@JsonKey(name: 'birthdate')@UTCDateTimeConverter() DateTime birthDate,@JsonKey(name: 'citizenship_id') String citizenshipId,@JsonKey(name: 'document_type_id') String documentTypeId,@JsonKey(name: 'document_number') String documentNumber,@JsonKey(name: 'patronymic') String? patronymic
});




}
/// @nodoc
class _$PassengerCreateParamsCopyWithImpl<$Res>
    implements $PassengerCreateParamsCopyWith<$Res> {
  _$PassengerCreateParamsCopyWithImpl(this._self, this._then);

  final PassengerCreateParams _self;
  final $Res Function(PassengerCreateParams) _then;

/// Create a copy of PassengerCreateParams
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? firstName = null,Object? lastName = null,Object? gender = null,Object? birthDate = null,Object? citizenshipId = null,Object? documentTypeId = null,Object? documentNumber = null,Object? patronymic = freezed,}) {
  return _then(_self.copyWith(
firstName: null == firstName ? _self.firstName : firstName // ignore: cast_nullable_to_non_nullable
as String,lastName: null == lastName ? _self.lastName : lastName // ignore: cast_nullable_to_non_nullable
as String,gender: null == gender ? _self.gender : gender // ignore: cast_nullable_to_non_nullable
as Gender,birthDate: null == birthDate ? _self.birthDate : birthDate // ignore: cast_nullable_to_non_nullable
as DateTime,citizenshipId: null == citizenshipId ? _self.citizenshipId : citizenshipId // ignore: cast_nullable_to_non_nullable
as String,documentTypeId: null == documentTypeId ? _self.documentTypeId : documentTypeId // ignore: cast_nullable_to_non_nullable
as String,documentNumber: null == documentNumber ? _self.documentNumber : documentNumber // ignore: cast_nullable_to_non_nullable
as String,patronymic: freezed == patronymic ? _self.patronymic : patronymic // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [PassengerCreateParams].
extension PassengerCreateParamsPatterns on PassengerCreateParams {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PassengerCreateParams value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PassengerCreateParams() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PassengerCreateParams value)  $default,){
final _that = this;
switch (_that) {
case _PassengerCreateParams():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PassengerCreateParams value)?  $default,){
final _that = this;
switch (_that) {
case _PassengerCreateParams() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'first_name')  String firstName, @JsonKey(name: 'last_name')  String lastName, @JsonKey(name: 'gender')  Gender gender, @JsonKey(name: 'birthdate')@UTCDateTimeConverter()  DateTime birthDate, @JsonKey(name: 'citizenship_id')  String citizenshipId, @JsonKey(name: 'document_type_id')  String documentTypeId, @JsonKey(name: 'document_number')  String documentNumber, @JsonKey(name: 'patronymic')  String? patronymic)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PassengerCreateParams() when $default != null:
return $default(_that.firstName,_that.lastName,_that.gender,_that.birthDate,_that.citizenshipId,_that.documentTypeId,_that.documentNumber,_that.patronymic);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'first_name')  String firstName, @JsonKey(name: 'last_name')  String lastName, @JsonKey(name: 'gender')  Gender gender, @JsonKey(name: 'birthdate')@UTCDateTimeConverter()  DateTime birthDate, @JsonKey(name: 'citizenship_id')  String citizenshipId, @JsonKey(name: 'document_type_id')  String documentTypeId, @JsonKey(name: 'document_number')  String documentNumber, @JsonKey(name: 'patronymic')  String? patronymic)  $default,) {final _that = this;
switch (_that) {
case _PassengerCreateParams():
return $default(_that.firstName,_that.lastName,_that.gender,_that.birthDate,_that.citizenshipId,_that.documentTypeId,_that.documentNumber,_that.patronymic);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'first_name')  String firstName, @JsonKey(name: 'last_name')  String lastName, @JsonKey(name: 'gender')  Gender gender, @JsonKey(name: 'birthdate')@UTCDateTimeConverter()  DateTime birthDate, @JsonKey(name: 'citizenship_id')  String citizenshipId, @JsonKey(name: 'document_type_id')  String documentTypeId, @JsonKey(name: 'document_number')  String documentNumber, @JsonKey(name: 'patronymic')  String? patronymic)?  $default,) {final _that = this;
switch (_that) {
case _PassengerCreateParams() when $default != null:
return $default(_that.firstName,_that.lastName,_that.gender,_that.birthDate,_that.citizenshipId,_that.documentTypeId,_that.documentNumber,_that.patronymic);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _PassengerCreateParams implements PassengerCreateParams {
  const _PassengerCreateParams({@JsonKey(name: 'first_name') required this.firstName, @JsonKey(name: 'last_name') required this.lastName, @JsonKey(name: 'gender') required this.gender, @JsonKey(name: 'birthdate')@UTCDateTimeConverter() required this.birthDate, @JsonKey(name: 'citizenship_id') required this.citizenshipId, @JsonKey(name: 'document_type_id') required this.documentTypeId, @JsonKey(name: 'document_number') required this.documentNumber, @JsonKey(name: 'patronymic') this.patronymic});
  factory _PassengerCreateParams.fromJson(Map<String, dynamic> json) => _$PassengerCreateParamsFromJson(json);

@override@JsonKey(name: 'first_name') final  String firstName;
@override@JsonKey(name: 'last_name') final  String lastName;
@override@JsonKey(name: 'gender') final  Gender gender;
@override@JsonKey(name: 'birthdate')@UTCDateTimeConverter() final  DateTime birthDate;
@override@JsonKey(name: 'citizenship_id') final  String citizenshipId;
@override@JsonKey(name: 'document_type_id') final  String documentTypeId;
@override@JsonKey(name: 'document_number') final  String documentNumber;
@override@JsonKey(name: 'patronymic') final  String? patronymic;

/// Create a copy of PassengerCreateParams
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PassengerCreateParamsCopyWith<_PassengerCreateParams> get copyWith => __$PassengerCreateParamsCopyWithImpl<_PassengerCreateParams>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PassengerCreateParamsToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PassengerCreateParams&&(identical(other.firstName, firstName) || other.firstName == firstName)&&(identical(other.lastName, lastName) || other.lastName == lastName)&&(identical(other.gender, gender) || other.gender == gender)&&(identical(other.birthDate, birthDate) || other.birthDate == birthDate)&&(identical(other.citizenshipId, citizenshipId) || other.citizenshipId == citizenshipId)&&(identical(other.documentTypeId, documentTypeId) || other.documentTypeId == documentTypeId)&&(identical(other.documentNumber, documentNumber) || other.documentNumber == documentNumber)&&(identical(other.patronymic, patronymic) || other.patronymic == patronymic));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,firstName,lastName,gender,birthDate,citizenshipId,documentTypeId,documentNumber,patronymic);

@override
String toString() {
  return 'PassengerCreateParams(firstName: $firstName, lastName: $lastName, gender: $gender, birthDate: $birthDate, citizenshipId: $citizenshipId, documentTypeId: $documentTypeId, documentNumber: $documentNumber, patronymic: $patronymic)';
}


}

/// @nodoc
abstract mixin class _$PassengerCreateParamsCopyWith<$Res> implements $PassengerCreateParamsCopyWith<$Res> {
  factory _$PassengerCreateParamsCopyWith(_PassengerCreateParams value, $Res Function(_PassengerCreateParams) _then) = __$PassengerCreateParamsCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'first_name') String firstName,@JsonKey(name: 'last_name') String lastName,@JsonKey(name: 'gender') Gender gender,@JsonKey(name: 'birthdate')@UTCDateTimeConverter() DateTime birthDate,@JsonKey(name: 'citizenship_id') String citizenshipId,@JsonKey(name: 'document_type_id') String documentTypeId,@JsonKey(name: 'document_number') String documentNumber,@JsonKey(name: 'patronymic') String? patronymic
});




}
/// @nodoc
class __$PassengerCreateParamsCopyWithImpl<$Res>
    implements _$PassengerCreateParamsCopyWith<$Res> {
  __$PassengerCreateParamsCopyWithImpl(this._self, this._then);

  final _PassengerCreateParams _self;
  final $Res Function(_PassengerCreateParams) _then;

/// Create a copy of PassengerCreateParams
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? firstName = null,Object? lastName = null,Object? gender = null,Object? birthDate = null,Object? citizenshipId = null,Object? documentTypeId = null,Object? documentNumber = null,Object? patronymic = freezed,}) {
  return _then(_PassengerCreateParams(
firstName: null == firstName ? _self.firstName : firstName // ignore: cast_nullable_to_non_nullable
as String,lastName: null == lastName ? _self.lastName : lastName // ignore: cast_nullable_to_non_nullable
as String,gender: null == gender ? _self.gender : gender // ignore: cast_nullable_to_non_nullable
as Gender,birthDate: null == birthDate ? _self.birthDate : birthDate // ignore: cast_nullable_to_non_nullable
as DateTime,citizenshipId: null == citizenshipId ? _self.citizenshipId : citizenshipId // ignore: cast_nullable_to_non_nullable
as String,documentTypeId: null == documentTypeId ? _self.documentTypeId : documentTypeId // ignore: cast_nullable_to_non_nullable
as String,documentNumber: null == documentNumber ? _self.documentNumber : documentNumber // ignore: cast_nullable_to_non_nullable
as String,patronymic: freezed == patronymic ? _self.patronymic : patronymic // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
