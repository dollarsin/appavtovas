// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'passenger_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$PassengerModel {

 String? get firstName; String? get lastName; Gender? get gender; DateTime? get birthDate; Citizenship? get citizenship; PassengerDocumentType? get documentType; String? get documentNumber; String? get patronymic;
/// Create a copy of PassengerModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PassengerModelCopyWith<PassengerModel> get copyWith => _$PassengerModelCopyWithImpl<PassengerModel>(this as PassengerModel, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PassengerModel&&(identical(other.firstName, firstName) || other.firstName == firstName)&&(identical(other.lastName, lastName) || other.lastName == lastName)&&(identical(other.gender, gender) || other.gender == gender)&&(identical(other.birthDate, birthDate) || other.birthDate == birthDate)&&(identical(other.citizenship, citizenship) || other.citizenship == citizenship)&&(identical(other.documentType, documentType) || other.documentType == documentType)&&(identical(other.documentNumber, documentNumber) || other.documentNumber == documentNumber)&&(identical(other.patronymic, patronymic) || other.patronymic == patronymic));
}


@override
int get hashCode => Object.hash(runtimeType,firstName,lastName,gender,birthDate,citizenship,documentType,documentNumber,patronymic);

@override
String toString() {
  return 'PassengerModel(firstName: $firstName, lastName: $lastName, gender: $gender, birthDate: $birthDate, citizenship: $citizenship, documentType: $documentType, documentNumber: $documentNumber, patronymic: $patronymic)';
}


}

/// @nodoc
abstract mixin class $PassengerModelCopyWith<$Res>  {
  factory $PassengerModelCopyWith(PassengerModel value, $Res Function(PassengerModel) _then) = _$PassengerModelCopyWithImpl;
@useResult
$Res call({
 String? firstName, String? lastName, Gender gender, DateTime birthDate, Citizenship citizenship, PassengerDocumentType documentType, String? documentNumber, String? patronymic
});


$CitizenshipCopyWith<$Res>? get citizenship;$PassengerDocumentTypeCopyWith<$Res>? get documentType;

}
/// @nodoc
class _$PassengerModelCopyWithImpl<$Res>
    implements $PassengerModelCopyWith<$Res> {
  _$PassengerModelCopyWithImpl(this._self, this._then);

  final PassengerModel _self;
  final $Res Function(PassengerModel) _then;

/// Create a copy of PassengerModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? firstName = freezed,Object? lastName = freezed,Object? gender = null,Object? birthDate = null,Object? citizenship = null,Object? documentType = null,Object? documentNumber = freezed,Object? patronymic = freezed,}) {
  return _then(_self.copyWith(
firstName: freezed == firstName ? _self.firstName : firstName // ignore: cast_nullable_to_non_nullable
as String?,lastName: freezed == lastName ? _self.lastName : lastName // ignore: cast_nullable_to_non_nullable
as String?,gender: null == gender ? _self.gender! : gender // ignore: cast_nullable_to_non_nullable
as Gender,birthDate: null == birthDate ? _self.birthDate! : birthDate // ignore: cast_nullable_to_non_nullable
as DateTime,citizenship: null == citizenship ? _self.citizenship! : citizenship // ignore: cast_nullable_to_non_nullable
as Citizenship,documentType: null == documentType ? _self.documentType! : documentType // ignore: cast_nullable_to_non_nullable
as PassengerDocumentType,documentNumber: freezed == documentNumber ? _self.documentNumber : documentNumber // ignore: cast_nullable_to_non_nullable
as String?,patronymic: freezed == patronymic ? _self.patronymic : patronymic // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}
/// Create a copy of PassengerModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CitizenshipCopyWith<$Res>? get citizenship {
    if (_self.citizenship == null) {
    return null;
  }

  return $CitizenshipCopyWith<$Res>(_self.citizenship!, (value) {
    return _then(_self.copyWith(citizenship: value));
  });
}/// Create a copy of PassengerModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PassengerDocumentTypeCopyWith<$Res>? get documentType {
    if (_self.documentType == null) {
    return null;
  }

  return $PassengerDocumentTypeCopyWith<$Res>(_self.documentType!, (value) {
    return _then(_self.copyWith(documentType: value));
  });
}
}


/// Adds pattern-matching-related methods to [PassengerModel].
extension PassengerModelPatterns on PassengerModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( PassengerCreateModel value)?  create,TResult Function( PassengerUpdateModel value)?  update,required TResult orElse(),}){
final _that = this;
switch (_that) {
case PassengerCreateModel() when create != null:
return create(_that);case PassengerUpdateModel() when update != null:
return update(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( PassengerCreateModel value)  create,required TResult Function( PassengerUpdateModel value)  update,}){
final _that = this;
switch (_that) {
case PassengerCreateModel():
return create(_that);case PassengerUpdateModel():
return update(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( PassengerCreateModel value)?  create,TResult? Function( PassengerUpdateModel value)?  update,}){
final _that = this;
switch (_that) {
case PassengerCreateModel() when create != null:
return create(_that);case PassengerUpdateModel() when update != null:
return update(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( String? firstName,  String? lastName,  Gender? gender,  DateTime? birthDate,  Citizenship? citizenship,  PassengerDocumentType? documentType,  String? documentNumber,  String? patronymic)?  create,TResult Function( String id,  Gender gender,  Citizenship citizenship,  PassengerDocumentType documentType,  DateTime birthDate,  String? firstName,  String? lastName,  String? patronymic,  String? documentNumber)?  update,required TResult orElse(),}) {final _that = this;
switch (_that) {
case PassengerCreateModel() when create != null:
return create(_that.firstName,_that.lastName,_that.gender,_that.birthDate,_that.citizenship,_that.documentType,_that.documentNumber,_that.patronymic);case PassengerUpdateModel() when update != null:
return update(_that.id,_that.gender,_that.citizenship,_that.documentType,_that.birthDate,_that.firstName,_that.lastName,_that.patronymic,_that.documentNumber);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( String? firstName,  String? lastName,  Gender? gender,  DateTime? birthDate,  Citizenship? citizenship,  PassengerDocumentType? documentType,  String? documentNumber,  String? patronymic)  create,required TResult Function( String id,  Gender gender,  Citizenship citizenship,  PassengerDocumentType documentType,  DateTime birthDate,  String? firstName,  String? lastName,  String? patronymic,  String? documentNumber)  update,}) {final _that = this;
switch (_that) {
case PassengerCreateModel():
return create(_that.firstName,_that.lastName,_that.gender,_that.birthDate,_that.citizenship,_that.documentType,_that.documentNumber,_that.patronymic);case PassengerUpdateModel():
return update(_that.id,_that.gender,_that.citizenship,_that.documentType,_that.birthDate,_that.firstName,_that.lastName,_that.patronymic,_that.documentNumber);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( String? firstName,  String? lastName,  Gender? gender,  DateTime? birthDate,  Citizenship? citizenship,  PassengerDocumentType? documentType,  String? documentNumber,  String? patronymic)?  create,TResult? Function( String id,  Gender gender,  Citizenship citizenship,  PassengerDocumentType documentType,  DateTime birthDate,  String? firstName,  String? lastName,  String? patronymic,  String? documentNumber)?  update,}) {final _that = this;
switch (_that) {
case PassengerCreateModel() when create != null:
return create(_that.firstName,_that.lastName,_that.gender,_that.birthDate,_that.citizenship,_that.documentType,_that.documentNumber,_that.patronymic);case PassengerUpdateModel() when update != null:
return update(_that.id,_that.gender,_that.citizenship,_that.documentType,_that.birthDate,_that.firstName,_that.lastName,_that.patronymic,_that.documentNumber);case _:
  return null;

}
}

}

/// @nodoc


class PassengerCreateModel implements PassengerModel {
  const PassengerCreateModel({this.firstName, this.lastName, this.gender, this.birthDate, this.citizenship, this.documentType, this.documentNumber, this.patronymic = ''});
  

@override final  String? firstName;
@override final  String? lastName;
@override final  Gender? gender;
@override final  DateTime? birthDate;
@override final  Citizenship? citizenship;
@override final  PassengerDocumentType? documentType;
@override final  String? documentNumber;
@override@JsonKey() final  String? patronymic;

/// Create a copy of PassengerModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PassengerCreateModelCopyWith<PassengerCreateModel> get copyWith => _$PassengerCreateModelCopyWithImpl<PassengerCreateModel>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PassengerCreateModel&&(identical(other.firstName, firstName) || other.firstName == firstName)&&(identical(other.lastName, lastName) || other.lastName == lastName)&&(identical(other.gender, gender) || other.gender == gender)&&(identical(other.birthDate, birthDate) || other.birthDate == birthDate)&&(identical(other.citizenship, citizenship) || other.citizenship == citizenship)&&(identical(other.documentType, documentType) || other.documentType == documentType)&&(identical(other.documentNumber, documentNumber) || other.documentNumber == documentNumber)&&(identical(other.patronymic, patronymic) || other.patronymic == patronymic));
}


@override
int get hashCode => Object.hash(runtimeType,firstName,lastName,gender,birthDate,citizenship,documentType,documentNumber,patronymic);

@override
String toString() {
  return 'PassengerModel.create(firstName: $firstName, lastName: $lastName, gender: $gender, birthDate: $birthDate, citizenship: $citizenship, documentType: $documentType, documentNumber: $documentNumber, patronymic: $patronymic)';
}


}

/// @nodoc
abstract mixin class $PassengerCreateModelCopyWith<$Res> implements $PassengerModelCopyWith<$Res> {
  factory $PassengerCreateModelCopyWith(PassengerCreateModel value, $Res Function(PassengerCreateModel) _then) = _$PassengerCreateModelCopyWithImpl;
@override @useResult
$Res call({
 String? firstName, String? lastName, Gender? gender, DateTime? birthDate, Citizenship? citizenship, PassengerDocumentType? documentType, String? documentNumber, String? patronymic
});


@override $CitizenshipCopyWith<$Res>? get citizenship;@override $PassengerDocumentTypeCopyWith<$Res>? get documentType;

}
/// @nodoc
class _$PassengerCreateModelCopyWithImpl<$Res>
    implements $PassengerCreateModelCopyWith<$Res> {
  _$PassengerCreateModelCopyWithImpl(this._self, this._then);

  final PassengerCreateModel _self;
  final $Res Function(PassengerCreateModel) _then;

/// Create a copy of PassengerModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? firstName = freezed,Object? lastName = freezed,Object? gender = freezed,Object? birthDate = freezed,Object? citizenship = freezed,Object? documentType = freezed,Object? documentNumber = freezed,Object? patronymic = freezed,}) {
  return _then(PassengerCreateModel(
firstName: freezed == firstName ? _self.firstName : firstName // ignore: cast_nullable_to_non_nullable
as String?,lastName: freezed == lastName ? _self.lastName : lastName // ignore: cast_nullable_to_non_nullable
as String?,gender: freezed == gender ? _self.gender : gender // ignore: cast_nullable_to_non_nullable
as Gender?,birthDate: freezed == birthDate ? _self.birthDate : birthDate // ignore: cast_nullable_to_non_nullable
as DateTime?,citizenship: freezed == citizenship ? _self.citizenship : citizenship // ignore: cast_nullable_to_non_nullable
as Citizenship?,documentType: freezed == documentType ? _self.documentType : documentType // ignore: cast_nullable_to_non_nullable
as PassengerDocumentType?,documentNumber: freezed == documentNumber ? _self.documentNumber : documentNumber // ignore: cast_nullable_to_non_nullable
as String?,patronymic: freezed == patronymic ? _self.patronymic : patronymic // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

/// Create a copy of PassengerModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CitizenshipCopyWith<$Res>? get citizenship {
    if (_self.citizenship == null) {
    return null;
  }

  return $CitizenshipCopyWith<$Res>(_self.citizenship!, (value) {
    return _then(_self.copyWith(citizenship: value));
  });
}/// Create a copy of PassengerModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PassengerDocumentTypeCopyWith<$Res>? get documentType {
    if (_self.documentType == null) {
    return null;
  }

  return $PassengerDocumentTypeCopyWith<$Res>(_self.documentType!, (value) {
    return _then(_self.copyWith(documentType: value));
  });
}
}

/// @nodoc


class PassengerUpdateModel implements PassengerModel {
  const PassengerUpdateModel({required this.id, required this.gender, required this.citizenship, required this.documentType, required this.birthDate, this.firstName, this.lastName, this.patronymic, this.documentNumber});
  

 final  String id;
@override final  Gender gender;
@override final  Citizenship citizenship;
@override final  PassengerDocumentType documentType;
@override final  DateTime birthDate;
@override final  String? firstName;
@override final  String? lastName;
@override final  String? patronymic;
@override final  String? documentNumber;

/// Create a copy of PassengerModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PassengerUpdateModelCopyWith<PassengerUpdateModel> get copyWith => _$PassengerUpdateModelCopyWithImpl<PassengerUpdateModel>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PassengerUpdateModel&&(identical(other.id, id) || other.id == id)&&(identical(other.gender, gender) || other.gender == gender)&&(identical(other.citizenship, citizenship) || other.citizenship == citizenship)&&(identical(other.documentType, documentType) || other.documentType == documentType)&&(identical(other.birthDate, birthDate) || other.birthDate == birthDate)&&(identical(other.firstName, firstName) || other.firstName == firstName)&&(identical(other.lastName, lastName) || other.lastName == lastName)&&(identical(other.patronymic, patronymic) || other.patronymic == patronymic)&&(identical(other.documentNumber, documentNumber) || other.documentNumber == documentNumber));
}


@override
int get hashCode => Object.hash(runtimeType,id,gender,citizenship,documentType,birthDate,firstName,lastName,patronymic,documentNumber);

@override
String toString() {
  return 'PassengerModel.update(id: $id, gender: $gender, citizenship: $citizenship, documentType: $documentType, birthDate: $birthDate, firstName: $firstName, lastName: $lastName, patronymic: $patronymic, documentNumber: $documentNumber)';
}


}

/// @nodoc
abstract mixin class $PassengerUpdateModelCopyWith<$Res> implements $PassengerModelCopyWith<$Res> {
  factory $PassengerUpdateModelCopyWith(PassengerUpdateModel value, $Res Function(PassengerUpdateModel) _then) = _$PassengerUpdateModelCopyWithImpl;
@override @useResult
$Res call({
 String id, Gender gender, Citizenship citizenship, PassengerDocumentType documentType, DateTime birthDate, String? firstName, String? lastName, String? patronymic, String? documentNumber
});


@override $CitizenshipCopyWith<$Res> get citizenship;@override $PassengerDocumentTypeCopyWith<$Res> get documentType;

}
/// @nodoc
class _$PassengerUpdateModelCopyWithImpl<$Res>
    implements $PassengerUpdateModelCopyWith<$Res> {
  _$PassengerUpdateModelCopyWithImpl(this._self, this._then);

  final PassengerUpdateModel _self;
  final $Res Function(PassengerUpdateModel) _then;

/// Create a copy of PassengerModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? gender = null,Object? citizenship = null,Object? documentType = null,Object? birthDate = null,Object? firstName = freezed,Object? lastName = freezed,Object? patronymic = freezed,Object? documentNumber = freezed,}) {
  return _then(PassengerUpdateModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,gender: null == gender ? _self.gender : gender // ignore: cast_nullable_to_non_nullable
as Gender,citizenship: null == citizenship ? _self.citizenship : citizenship // ignore: cast_nullable_to_non_nullable
as Citizenship,documentType: null == documentType ? _self.documentType : documentType // ignore: cast_nullable_to_non_nullable
as PassengerDocumentType,birthDate: null == birthDate ? _self.birthDate : birthDate // ignore: cast_nullable_to_non_nullable
as DateTime,firstName: freezed == firstName ? _self.firstName : firstName // ignore: cast_nullable_to_non_nullable
as String?,lastName: freezed == lastName ? _self.lastName : lastName // ignore: cast_nullable_to_non_nullable
as String?,patronymic: freezed == patronymic ? _self.patronymic : patronymic // ignore: cast_nullable_to_non_nullable
as String?,documentNumber: freezed == documentNumber ? _self.documentNumber : documentNumber // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

/// Create a copy of PassengerModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CitizenshipCopyWith<$Res> get citizenship {
  
  return $CitizenshipCopyWith<$Res>(_self.citizenship, (value) {
    return _then(_self.copyWith(citizenship: value));
  });
}/// Create a copy of PassengerModel
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
