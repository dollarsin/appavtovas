// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'passenger.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Passenger {

@JsonKey(name: 'id') String get id;@JsonKey(name: 'first_name') String get firstName;@JsonKey(name: 'last_name') String get lastName;@JsonKey(name: 'gender') Gender get gender;@JsonKey(name: 'birthdate')@UTCDateTimeConverter() DateTime get birthDate;@JsonKey(name: 'citizenship') Citizenship get citizenship;@JsonKey(name: 'document_type') PassengerDocumentType get documentType;@JsonKey(name: 'document_number') String get documentNumber;@JsonKey(name: 'patronymic') String? get patronymic;
/// Create a copy of Passenger
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PassengerCopyWith<Passenger> get copyWith => _$PassengerCopyWithImpl<Passenger>(this as Passenger, _$identity);

  /// Serializes this Passenger to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Passenger&&(identical(other.id, id) || other.id == id)&&(identical(other.firstName, firstName) || other.firstName == firstName)&&(identical(other.lastName, lastName) || other.lastName == lastName)&&(identical(other.gender, gender) || other.gender == gender)&&(identical(other.birthDate, birthDate) || other.birthDate == birthDate)&&(identical(other.citizenship, citizenship) || other.citizenship == citizenship)&&(identical(other.documentType, documentType) || other.documentType == documentType)&&(identical(other.documentNumber, documentNumber) || other.documentNumber == documentNumber)&&(identical(other.patronymic, patronymic) || other.patronymic == patronymic));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,firstName,lastName,gender,birthDate,citizenship,documentType,documentNumber,patronymic);

@override
String toString() {
  return 'Passenger(id: $id, firstName: $firstName, lastName: $lastName, gender: $gender, birthDate: $birthDate, citizenship: $citizenship, documentType: $documentType, documentNumber: $documentNumber, patronymic: $patronymic)';
}


}

/// @nodoc
abstract mixin class $PassengerCopyWith<$Res>  {
  factory $PassengerCopyWith(Passenger value, $Res Function(Passenger) _then) = _$PassengerCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'id') String id,@JsonKey(name: 'first_name') String firstName,@JsonKey(name: 'last_name') String lastName,@JsonKey(name: 'gender') Gender gender,@JsonKey(name: 'birthdate')@UTCDateTimeConverter() DateTime birthDate,@JsonKey(name: 'citizenship') Citizenship citizenship,@JsonKey(name: 'document_type') PassengerDocumentType documentType,@JsonKey(name: 'document_number') String documentNumber,@JsonKey(name: 'patronymic') String? patronymic
});


$CitizenshipCopyWith<$Res> get citizenship;$PassengerDocumentTypeCopyWith<$Res> get documentType;

}
/// @nodoc
class _$PassengerCopyWithImpl<$Res>
    implements $PassengerCopyWith<$Res> {
  _$PassengerCopyWithImpl(this._self, this._then);

  final Passenger _self;
  final $Res Function(Passenger) _then;

/// Create a copy of Passenger
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? firstName = null,Object? lastName = null,Object? gender = null,Object? birthDate = null,Object? citizenship = null,Object? documentType = null,Object? documentNumber = null,Object? patronymic = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,firstName: null == firstName ? _self.firstName : firstName // ignore: cast_nullable_to_non_nullable
as String,lastName: null == lastName ? _self.lastName : lastName // ignore: cast_nullable_to_non_nullable
as String,gender: null == gender ? _self.gender : gender // ignore: cast_nullable_to_non_nullable
as Gender,birthDate: null == birthDate ? _self.birthDate : birthDate // ignore: cast_nullable_to_non_nullable
as DateTime,citizenship: null == citizenship ? _self.citizenship : citizenship // ignore: cast_nullable_to_non_nullable
as Citizenship,documentType: null == documentType ? _self.documentType : documentType // ignore: cast_nullable_to_non_nullable
as PassengerDocumentType,documentNumber: null == documentNumber ? _self.documentNumber : documentNumber // ignore: cast_nullable_to_non_nullable
as String,patronymic: freezed == patronymic ? _self.patronymic : patronymic // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}
/// Create a copy of Passenger
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CitizenshipCopyWith<$Res> get citizenship {
  
  return $CitizenshipCopyWith<$Res>(_self.citizenship, (value) {
    return _then(_self.copyWith(citizenship: value));
  });
}/// Create a copy of Passenger
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PassengerDocumentTypeCopyWith<$Res> get documentType {
  
  return $PassengerDocumentTypeCopyWith<$Res>(_self.documentType, (value) {
    return _then(_self.copyWith(documentType: value));
  });
}
}


/// Adds pattern-matching-related methods to [Passenger].
extension PassengerPatterns on Passenger {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Passenger value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Passenger() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Passenger value)  $default,){
final _that = this;
switch (_that) {
case _Passenger():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Passenger value)?  $default,){
final _that = this;
switch (_that) {
case _Passenger() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'id')  String id, @JsonKey(name: 'first_name')  String firstName, @JsonKey(name: 'last_name')  String lastName, @JsonKey(name: 'gender')  Gender gender, @JsonKey(name: 'birthdate')@UTCDateTimeConverter()  DateTime birthDate, @JsonKey(name: 'citizenship')  Citizenship citizenship, @JsonKey(name: 'document_type')  PassengerDocumentType documentType, @JsonKey(name: 'document_number')  String documentNumber, @JsonKey(name: 'patronymic')  String? patronymic)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Passenger() when $default != null:
return $default(_that.id,_that.firstName,_that.lastName,_that.gender,_that.birthDate,_that.citizenship,_that.documentType,_that.documentNumber,_that.patronymic);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'id')  String id, @JsonKey(name: 'first_name')  String firstName, @JsonKey(name: 'last_name')  String lastName, @JsonKey(name: 'gender')  Gender gender, @JsonKey(name: 'birthdate')@UTCDateTimeConverter()  DateTime birthDate, @JsonKey(name: 'citizenship')  Citizenship citizenship, @JsonKey(name: 'document_type')  PassengerDocumentType documentType, @JsonKey(name: 'document_number')  String documentNumber, @JsonKey(name: 'patronymic')  String? patronymic)  $default,) {final _that = this;
switch (_that) {
case _Passenger():
return $default(_that.id,_that.firstName,_that.lastName,_that.gender,_that.birthDate,_that.citizenship,_that.documentType,_that.documentNumber,_that.patronymic);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'id')  String id, @JsonKey(name: 'first_name')  String firstName, @JsonKey(name: 'last_name')  String lastName, @JsonKey(name: 'gender')  Gender gender, @JsonKey(name: 'birthdate')@UTCDateTimeConverter()  DateTime birthDate, @JsonKey(name: 'citizenship')  Citizenship citizenship, @JsonKey(name: 'document_type')  PassengerDocumentType documentType, @JsonKey(name: 'document_number')  String documentNumber, @JsonKey(name: 'patronymic')  String? patronymic)?  $default,) {final _that = this;
switch (_that) {
case _Passenger() when $default != null:
return $default(_that.id,_that.firstName,_that.lastName,_that.gender,_that.birthDate,_that.citizenship,_that.documentType,_that.documentNumber,_that.patronymic);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Passenger implements Passenger {
  const _Passenger({@JsonKey(name: 'id') required this.id, @JsonKey(name: 'first_name') required this.firstName, @JsonKey(name: 'last_name') required this.lastName, @JsonKey(name: 'gender') required this.gender, @JsonKey(name: 'birthdate')@UTCDateTimeConverter() required this.birthDate, @JsonKey(name: 'citizenship') required this.citizenship, @JsonKey(name: 'document_type') required this.documentType, @JsonKey(name: 'document_number') required this.documentNumber, @JsonKey(name: 'patronymic') this.patronymic});
  factory _Passenger.fromJson(Map<String, dynamic> json) => _$PassengerFromJson(json);

@override@JsonKey(name: 'id') final  String id;
@override@JsonKey(name: 'first_name') final  String firstName;
@override@JsonKey(name: 'last_name') final  String lastName;
@override@JsonKey(name: 'gender') final  Gender gender;
@override@JsonKey(name: 'birthdate')@UTCDateTimeConverter() final  DateTime birthDate;
@override@JsonKey(name: 'citizenship') final  Citizenship citizenship;
@override@JsonKey(name: 'document_type') final  PassengerDocumentType documentType;
@override@JsonKey(name: 'document_number') final  String documentNumber;
@override@JsonKey(name: 'patronymic') final  String? patronymic;

/// Create a copy of Passenger
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PassengerCopyWith<_Passenger> get copyWith => __$PassengerCopyWithImpl<_Passenger>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PassengerToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Passenger&&(identical(other.id, id) || other.id == id)&&(identical(other.firstName, firstName) || other.firstName == firstName)&&(identical(other.lastName, lastName) || other.lastName == lastName)&&(identical(other.gender, gender) || other.gender == gender)&&(identical(other.birthDate, birthDate) || other.birthDate == birthDate)&&(identical(other.citizenship, citizenship) || other.citizenship == citizenship)&&(identical(other.documentType, documentType) || other.documentType == documentType)&&(identical(other.documentNumber, documentNumber) || other.documentNumber == documentNumber)&&(identical(other.patronymic, patronymic) || other.patronymic == patronymic));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,firstName,lastName,gender,birthDate,citizenship,documentType,documentNumber,patronymic);

@override
String toString() {
  return 'Passenger(id: $id, firstName: $firstName, lastName: $lastName, gender: $gender, birthDate: $birthDate, citizenship: $citizenship, documentType: $documentType, documentNumber: $documentNumber, patronymic: $patronymic)';
}


}

/// @nodoc
abstract mixin class _$PassengerCopyWith<$Res> implements $PassengerCopyWith<$Res> {
  factory _$PassengerCopyWith(_Passenger value, $Res Function(_Passenger) _then) = __$PassengerCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'id') String id,@JsonKey(name: 'first_name') String firstName,@JsonKey(name: 'last_name') String lastName,@JsonKey(name: 'gender') Gender gender,@JsonKey(name: 'birthdate')@UTCDateTimeConverter() DateTime birthDate,@JsonKey(name: 'citizenship') Citizenship citizenship,@JsonKey(name: 'document_type') PassengerDocumentType documentType,@JsonKey(name: 'document_number') String documentNumber,@JsonKey(name: 'patronymic') String? patronymic
});


@override $CitizenshipCopyWith<$Res> get citizenship;@override $PassengerDocumentTypeCopyWith<$Res> get documentType;

}
/// @nodoc
class __$PassengerCopyWithImpl<$Res>
    implements _$PassengerCopyWith<$Res> {
  __$PassengerCopyWithImpl(this._self, this._then);

  final _Passenger _self;
  final $Res Function(_Passenger) _then;

/// Create a copy of Passenger
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? firstName = null,Object? lastName = null,Object? gender = null,Object? birthDate = null,Object? citizenship = null,Object? documentType = null,Object? documentNumber = null,Object? patronymic = freezed,}) {
  return _then(_Passenger(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,firstName: null == firstName ? _self.firstName : firstName // ignore: cast_nullable_to_non_nullable
as String,lastName: null == lastName ? _self.lastName : lastName // ignore: cast_nullable_to_non_nullable
as String,gender: null == gender ? _self.gender : gender // ignore: cast_nullable_to_non_nullable
as Gender,birthDate: null == birthDate ? _self.birthDate : birthDate // ignore: cast_nullable_to_non_nullable
as DateTime,citizenship: null == citizenship ? _self.citizenship : citizenship // ignore: cast_nullable_to_non_nullable
as Citizenship,documentType: null == documentType ? _self.documentType : documentType // ignore: cast_nullable_to_non_nullable
as PassengerDocumentType,documentNumber: null == documentNumber ? _self.documentNumber : documentNumber // ignore: cast_nullable_to_non_nullable
as String,patronymic: freezed == patronymic ? _self.patronymic : patronymic // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

/// Create a copy of Passenger
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CitizenshipCopyWith<$Res> get citizenship {
  
  return $CitizenshipCopyWith<$Res>(_self.citizenship, (value) {
    return _then(_self.copyWith(citizenship: value));
  });
}/// Create a copy of Passenger
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PassengerDocumentTypeCopyWith<$Res> get documentType {
  
  return $PassengerDocumentTypeCopyWith<$Res>(_self.documentType, (value) {
    return _then(_self.copyWith(documentType: value));
  });
}
}

// dart format on
