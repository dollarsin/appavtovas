// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

// @dart=3.8
part of 'passenger_update_params.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$PassengerUpdateParams {

@JsonKey(name: 'first_name', includeIfNull: false) String? get firstName;@JsonKey(name: 'last_name', includeIfNull: false) String? get lastName;@JsonKey(name: 'gender', includeIfNull: false) Gender? get gender;@JsonKey(name: 'birthdate', includeIfNull: false)@UTCDateTimeConverter() DateTime? get birthDate;@JsonKey(name: 'citizenship_id', includeIfNull: false) String? get citizenshipId;@JsonKey(name: 'document_type_id', includeIfNull: false) String? get documentTypeId;@JsonKey(name: 'document_number', includeIfNull: false) String? get documentNumber;@JsonKey(name: 'patronymic', includeIfNull: false) String? get patronymic;
/// Create a copy of PassengerUpdateParams
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PassengerUpdateParamsCopyWith<PassengerUpdateParams> get copyWith => _$PassengerUpdateParamsCopyWithImpl<PassengerUpdateParams>(this as PassengerUpdateParams, _$identity);

  /// Serializes this PassengerUpdateParams to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PassengerUpdateParams&&(identical(other.firstName, firstName) || other.firstName == firstName)&&(identical(other.lastName, lastName) || other.lastName == lastName)&&(identical(other.gender, gender) || other.gender == gender)&&(identical(other.birthDate, birthDate) || other.birthDate == birthDate)&&(identical(other.citizenshipId, citizenshipId) || other.citizenshipId == citizenshipId)&&(identical(other.documentTypeId, documentTypeId) || other.documentTypeId == documentTypeId)&&(identical(other.documentNumber, documentNumber) || other.documentNumber == documentNumber)&&(identical(other.patronymic, patronymic) || other.patronymic == patronymic));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,firstName,lastName,gender,birthDate,citizenshipId,documentTypeId,documentNumber,patronymic);

@override
String toString() {
  return 'PassengerUpdateParams(firstName: $firstName, lastName: $lastName, gender: $gender, birthDate: $birthDate, citizenshipId: $citizenshipId, documentTypeId: $documentTypeId, documentNumber: $documentNumber, patronymic: $patronymic)';
}


}

/// @nodoc
abstract mixin class $PassengerUpdateParamsCopyWith<$Res>  {
  factory $PassengerUpdateParamsCopyWith(PassengerUpdateParams value, $Res Function(PassengerUpdateParams) _then) = _$PassengerUpdateParamsCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'first_name', includeIfNull: false) String? firstName,@JsonKey(name: 'last_name', includeIfNull: false) String? lastName,@JsonKey(name: 'gender', includeIfNull: false) Gender? gender,@JsonKey(name: 'birthdate', includeIfNull: false)@UTCDateTimeConverter() DateTime? birthDate,@JsonKey(name: 'citizenship_id', includeIfNull: false) String? citizenshipId,@JsonKey(name: 'document_type_id', includeIfNull: false) String? documentTypeId,@JsonKey(name: 'document_number', includeIfNull: false) String? documentNumber,@JsonKey(name: 'patronymic', includeIfNull: false) String? patronymic
});




}
/// @nodoc
class _$PassengerUpdateParamsCopyWithImpl<$Res>
    implements $PassengerUpdateParamsCopyWith<$Res> {
  _$PassengerUpdateParamsCopyWithImpl(this._self, this._then);

  final PassengerUpdateParams _self;
  final $Res Function(PassengerUpdateParams) _then;

/// Create a copy of PassengerUpdateParams
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? firstName = freezed,Object? lastName = freezed,Object? gender = freezed,Object? birthDate = freezed,Object? citizenshipId = freezed,Object? documentTypeId = freezed,Object? documentNumber = freezed,Object? patronymic = freezed,}) {
  return _then(_self.copyWith(
firstName: freezed == firstName ? _self.firstName : firstName // ignore: cast_nullable_to_non_nullable
as String?,lastName: freezed == lastName ? _self.lastName : lastName // ignore: cast_nullable_to_non_nullable
as String?,gender: freezed == gender ? _self.gender : gender // ignore: cast_nullable_to_non_nullable
as Gender?,birthDate: freezed == birthDate ? _self.birthDate : birthDate // ignore: cast_nullable_to_non_nullable
as DateTime?,citizenshipId: freezed == citizenshipId ? _self.citizenshipId : citizenshipId // ignore: cast_nullable_to_non_nullable
as String?,documentTypeId: freezed == documentTypeId ? _self.documentTypeId : documentTypeId // ignore: cast_nullable_to_non_nullable
as String?,documentNumber: freezed == documentNumber ? _self.documentNumber : documentNumber // ignore: cast_nullable_to_non_nullable
as String?,patronymic: freezed == patronymic ? _self.patronymic : patronymic // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [PassengerUpdateParams].
extension PassengerUpdateParamsPatterns on PassengerUpdateParams {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PassengerUpdateParams value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PassengerUpdateParams() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PassengerUpdateParams value)  $default,){
final _that = this;
switch (_that) {
case _PassengerUpdateParams():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PassengerUpdateParams value)?  $default,){
final _that = this;
switch (_that) {
case _PassengerUpdateParams() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'first_name', includeIfNull: false)  String? firstName, @JsonKey(name: 'last_name', includeIfNull: false)  String? lastName, @JsonKey(name: 'gender', includeIfNull: false)  Gender? gender, @JsonKey(name: 'birthdate', includeIfNull: false)@UTCDateTimeConverter()  DateTime? birthDate, @JsonKey(name: 'citizenship_id', includeIfNull: false)  String? citizenshipId, @JsonKey(name: 'document_type_id', includeIfNull: false)  String? documentTypeId, @JsonKey(name: 'document_number', includeIfNull: false)  String? documentNumber, @JsonKey(name: 'patronymic', includeIfNull: false)  String? patronymic)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PassengerUpdateParams() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'first_name', includeIfNull: false)  String? firstName, @JsonKey(name: 'last_name', includeIfNull: false)  String? lastName, @JsonKey(name: 'gender', includeIfNull: false)  Gender? gender, @JsonKey(name: 'birthdate', includeIfNull: false)@UTCDateTimeConverter()  DateTime? birthDate, @JsonKey(name: 'citizenship_id', includeIfNull: false)  String? citizenshipId, @JsonKey(name: 'document_type_id', includeIfNull: false)  String? documentTypeId, @JsonKey(name: 'document_number', includeIfNull: false)  String? documentNumber, @JsonKey(name: 'patronymic', includeIfNull: false)  String? patronymic)  $default,) {final _that = this;
switch (_that) {
case _PassengerUpdateParams():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'first_name', includeIfNull: false)  String? firstName, @JsonKey(name: 'last_name', includeIfNull: false)  String? lastName, @JsonKey(name: 'gender', includeIfNull: false)  Gender? gender, @JsonKey(name: 'birthdate', includeIfNull: false)@UTCDateTimeConverter()  DateTime? birthDate, @JsonKey(name: 'citizenship_id', includeIfNull: false)  String? citizenshipId, @JsonKey(name: 'document_type_id', includeIfNull: false)  String? documentTypeId, @JsonKey(name: 'document_number', includeIfNull: false)  String? documentNumber, @JsonKey(name: 'patronymic', includeIfNull: false)  String? patronymic)?  $default,) {final _that = this;
switch (_that) {
case _PassengerUpdateParams() when $default != null:
return $default(_that.firstName,_that.lastName,_that.gender,_that.birthDate,_that.citizenshipId,_that.documentTypeId,_that.documentNumber,_that.patronymic);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _PassengerUpdateParams implements PassengerUpdateParams {
  const _PassengerUpdateParams({@JsonKey(name: 'first_name', includeIfNull: false) this.firstName, @JsonKey(name: 'last_name', includeIfNull: false) this.lastName, @JsonKey(name: 'gender', includeIfNull: false) this.gender, @JsonKey(name: 'birthdate', includeIfNull: false)@UTCDateTimeConverter() this.birthDate, @JsonKey(name: 'citizenship_id', includeIfNull: false) this.citizenshipId, @JsonKey(name: 'document_type_id', includeIfNull: false) this.documentTypeId, @JsonKey(name: 'document_number', includeIfNull: false) this.documentNumber, @JsonKey(name: 'patronymic', includeIfNull: false) this.patronymic});
  factory _PassengerUpdateParams.fromJson(Map<String, dynamic> json) => _$PassengerUpdateParamsFromJson(json);

@override@JsonKey(name: 'first_name', includeIfNull: false) final  String? firstName;
@override@JsonKey(name: 'last_name', includeIfNull: false) final  String? lastName;
@override@JsonKey(name: 'gender', includeIfNull: false) final  Gender? gender;
@override@JsonKey(name: 'birthdate', includeIfNull: false)@UTCDateTimeConverter() final  DateTime? birthDate;
@override@JsonKey(name: 'citizenship_id', includeIfNull: false) final  String? citizenshipId;
@override@JsonKey(name: 'document_type_id', includeIfNull: false) final  String? documentTypeId;
@override@JsonKey(name: 'document_number', includeIfNull: false) final  String? documentNumber;
@override@JsonKey(name: 'patronymic', includeIfNull: false) final  String? patronymic;

/// Create a copy of PassengerUpdateParams
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PassengerUpdateParamsCopyWith<_PassengerUpdateParams> get copyWith => __$PassengerUpdateParamsCopyWithImpl<_PassengerUpdateParams>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PassengerUpdateParamsToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PassengerUpdateParams&&(identical(other.firstName, firstName) || other.firstName == firstName)&&(identical(other.lastName, lastName) || other.lastName == lastName)&&(identical(other.gender, gender) || other.gender == gender)&&(identical(other.birthDate, birthDate) || other.birthDate == birthDate)&&(identical(other.citizenshipId, citizenshipId) || other.citizenshipId == citizenshipId)&&(identical(other.documentTypeId, documentTypeId) || other.documentTypeId == documentTypeId)&&(identical(other.documentNumber, documentNumber) || other.documentNumber == documentNumber)&&(identical(other.patronymic, patronymic) || other.patronymic == patronymic));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,firstName,lastName,gender,birthDate,citizenshipId,documentTypeId,documentNumber,patronymic);

@override
String toString() {
  return 'PassengerUpdateParams(firstName: $firstName, lastName: $lastName, gender: $gender, birthDate: $birthDate, citizenshipId: $citizenshipId, documentTypeId: $documentTypeId, documentNumber: $documentNumber, patronymic: $patronymic)';
}


}

/// @nodoc
abstract mixin class _$PassengerUpdateParamsCopyWith<$Res> implements $PassengerUpdateParamsCopyWith<$Res> {
  factory _$PassengerUpdateParamsCopyWith(_PassengerUpdateParams value, $Res Function(_PassengerUpdateParams) _then) = __$PassengerUpdateParamsCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'first_name', includeIfNull: false) String? firstName,@JsonKey(name: 'last_name', includeIfNull: false) String? lastName,@JsonKey(name: 'gender', includeIfNull: false) Gender? gender,@JsonKey(name: 'birthdate', includeIfNull: false)@UTCDateTimeConverter() DateTime? birthDate,@JsonKey(name: 'citizenship_id', includeIfNull: false) String? citizenshipId,@JsonKey(name: 'document_type_id', includeIfNull: false) String? documentTypeId,@JsonKey(name: 'document_number', includeIfNull: false) String? documentNumber,@JsonKey(name: 'patronymic', includeIfNull: false) String? patronymic
});




}
/// @nodoc
class __$PassengerUpdateParamsCopyWithImpl<$Res>
    implements _$PassengerUpdateParamsCopyWith<$Res> {
  __$PassengerUpdateParamsCopyWithImpl(this._self, this._then);

  final _PassengerUpdateParams _self;
  final $Res Function(_PassengerUpdateParams) _then;

/// Create a copy of PassengerUpdateParams
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? firstName = freezed,Object? lastName = freezed,Object? gender = freezed,Object? birthDate = freezed,Object? citizenshipId = freezed,Object? documentTypeId = freezed,Object? documentNumber = freezed,Object? patronymic = freezed,}) {
  return _then(_PassengerUpdateParams(
firstName: freezed == firstName ? _self.firstName : firstName // ignore: cast_nullable_to_non_nullable
as String?,lastName: freezed == lastName ? _self.lastName : lastName // ignore: cast_nullable_to_non_nullable
as String?,gender: freezed == gender ? _self.gender : gender // ignore: cast_nullable_to_non_nullable
as Gender?,birthDate: freezed == birthDate ? _self.birthDate : birthDate // ignore: cast_nullable_to_non_nullable
as DateTime?,citizenshipId: freezed == citizenshipId ? _self.citizenshipId : citizenshipId // ignore: cast_nullable_to_non_nullable
as String?,documentTypeId: freezed == documentTypeId ? _self.documentTypeId : documentTypeId // ignore: cast_nullable_to_non_nullable
as String?,documentNumber: freezed == documentNumber ? _self.documentNumber : documentNumber // ignore: cast_nullable_to_non_nullable
as String?,patronymic: freezed == patronymic ? _self.patronymic : patronymic // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
