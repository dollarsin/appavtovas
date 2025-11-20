// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'country_code_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$CountryCodeModel {

@JsonKey(name: 'name') String get name;@JsonKey(name: 'code') String get code;@JsonKey(name: 'dial_code') String get dialCode;@JsonKey(name: 'phone_hint') String get phoneHint;@JsonKey(name: 'formatter') FormatterModel get formatter;

  /// Serializes this CountryCodeModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CountryCodeModel&&(identical(other.name, name) || other.name == name)&&(identical(other.code, code) || other.code == code)&&(identical(other.dialCode, dialCode) || other.dialCode == dialCode)&&(identical(other.phoneHint, phoneHint) || other.phoneHint == phoneHint)&&(identical(other.formatter, formatter) || other.formatter == formatter));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name,code,dialCode,phoneHint,formatter);

@override
String toString() {
  return 'CountryCodeModel(name: $name, code: $code, dialCode: $dialCode, phoneHint: $phoneHint, formatter: $formatter)';
}


}




/// Adds pattern-matching-related methods to [CountryCodeModel].
extension CountryCodeModelPatterns on CountryCodeModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CountryCodeModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CountryCodeModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CountryCodeModel value)  $default,){
final _that = this;
switch (_that) {
case _CountryCodeModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CountryCodeModel value)?  $default,){
final _that = this;
switch (_that) {
case _CountryCodeModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'name')  String name, @JsonKey(name: 'code')  String code, @JsonKey(name: 'dial_code')  String dialCode, @JsonKey(name: 'phone_hint')  String phoneHint, @JsonKey(name: 'formatter')  FormatterModel formatter)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CountryCodeModel() when $default != null:
return $default(_that.name,_that.code,_that.dialCode,_that.phoneHint,_that.formatter);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'name')  String name, @JsonKey(name: 'code')  String code, @JsonKey(name: 'dial_code')  String dialCode, @JsonKey(name: 'phone_hint')  String phoneHint, @JsonKey(name: 'formatter')  FormatterModel formatter)  $default,) {final _that = this;
switch (_that) {
case _CountryCodeModel():
return $default(_that.name,_that.code,_that.dialCode,_that.phoneHint,_that.formatter);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'name')  String name, @JsonKey(name: 'code')  String code, @JsonKey(name: 'dial_code')  String dialCode, @JsonKey(name: 'phone_hint')  String phoneHint, @JsonKey(name: 'formatter')  FormatterModel formatter)?  $default,) {final _that = this;
switch (_that) {
case _CountryCodeModel() when $default != null:
return $default(_that.name,_that.code,_that.dialCode,_that.phoneHint,_that.formatter);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CountryCodeModel implements CountryCodeModel {
  const _CountryCodeModel({@JsonKey(name: 'name') required this.name, @JsonKey(name: 'code') required this.code, @JsonKey(name: 'dial_code') required this.dialCode, @JsonKey(name: 'phone_hint') required this.phoneHint, @JsonKey(name: 'formatter') required this.formatter});
  factory _CountryCodeModel.fromJson(Map<String, dynamic> json) => _$CountryCodeModelFromJson(json);

@override@JsonKey(name: 'name') final  String name;
@override@JsonKey(name: 'code') final  String code;
@override@JsonKey(name: 'dial_code') final  String dialCode;
@override@JsonKey(name: 'phone_hint') final  String phoneHint;
@override@JsonKey(name: 'formatter') final  FormatterModel formatter;


@override
Map<String, dynamic> toJson() {
  return _$CountryCodeModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CountryCodeModel&&(identical(other.name, name) || other.name == name)&&(identical(other.code, code) || other.code == code)&&(identical(other.dialCode, dialCode) || other.dialCode == dialCode)&&(identical(other.phoneHint, phoneHint) || other.phoneHint == phoneHint)&&(identical(other.formatter, formatter) || other.formatter == formatter));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name,code,dialCode,phoneHint,formatter);

@override
String toString() {
  return 'CountryCodeModel(name: $name, code: $code, dialCode: $dialCode, phoneHint: $phoneHint, formatter: $formatter)';
}


}




// dart format on
