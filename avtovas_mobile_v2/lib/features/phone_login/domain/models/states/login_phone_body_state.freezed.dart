// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'login_phone_body_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$LoginPhoneBodyState {

 MaskTextInputFormatter get _formatter; String get maskedPhone; bool get isPhoneValid; List<CountryCodeModel> get countryCodes; CountryCodeModel get selectedCountryCode; bool get isPrivacyPolicyConfirmed; bool get isTermsConfirmed; DateTime? get requestAbleAt; String get phone;
/// Create a copy of LoginPhoneBodyState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LoginPhoneBodyStateCopyWith<LoginPhoneBodyState> get copyWith => _$LoginPhoneBodyStateCopyWithImpl<LoginPhoneBodyState>(this as LoginPhoneBodyState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LoginPhoneBodyState&&(identical(other._formatter, _formatter) || other._formatter == _formatter)&&(identical(other.maskedPhone, maskedPhone) || other.maskedPhone == maskedPhone)&&(identical(other.isPhoneValid, isPhoneValid) || other.isPhoneValid == isPhoneValid)&&const DeepCollectionEquality().equals(other.countryCodes, countryCodes)&&(identical(other.selectedCountryCode, selectedCountryCode) || other.selectedCountryCode == selectedCountryCode)&&(identical(other.isPrivacyPolicyConfirmed, isPrivacyPolicyConfirmed) || other.isPrivacyPolicyConfirmed == isPrivacyPolicyConfirmed)&&(identical(other.isTermsConfirmed, isTermsConfirmed) || other.isTermsConfirmed == isTermsConfirmed)&&(identical(other.requestAbleAt, requestAbleAt) || other.requestAbleAt == requestAbleAt)&&(identical(other.phone, phone) || other.phone == phone));
}


@override
int get hashCode => Object.hash(runtimeType,_formatter,maskedPhone,isPhoneValid,const DeepCollectionEquality().hash(countryCodes),selectedCountryCode,isPrivacyPolicyConfirmed,isTermsConfirmed,requestAbleAt,phone);

@override
String toString() {
  return 'LoginPhoneBodyState(_formatter: $_formatter, maskedPhone: $maskedPhone, isPhoneValid: $isPhoneValid, countryCodes: $countryCodes, selectedCountryCode: $selectedCountryCode, isPrivacyPolicyConfirmed: $isPrivacyPolicyConfirmed, isTermsConfirmed: $isTermsConfirmed, requestAbleAt: $requestAbleAt, phone: $phone)';
}


}

/// @nodoc
abstract mixin class $LoginPhoneBodyStateCopyWith<$Res>  {
  factory $LoginPhoneBodyStateCopyWith(LoginPhoneBodyState value, $Res Function(LoginPhoneBodyState) _then) = _$LoginPhoneBodyStateCopyWithImpl;
@useResult
$Res call({
 List<CountryCodeModel> countryCodes, CountryCodeModel selectedCountryCode, bool isPrivacyPolicyConfirmed, bool isTermsConfirmed, DateTime? requestAbleAt, String phone
});




}
/// @nodoc
class _$LoginPhoneBodyStateCopyWithImpl<$Res>
    implements $LoginPhoneBodyStateCopyWith<$Res> {
  _$LoginPhoneBodyStateCopyWithImpl(this._self, this._then);

  final LoginPhoneBodyState _self;
  final $Res Function(LoginPhoneBodyState) _then;

/// Create a copy of LoginPhoneBodyState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? countryCodes = null,Object? selectedCountryCode = null,Object? isPrivacyPolicyConfirmed = null,Object? isTermsConfirmed = null,Object? requestAbleAt = freezed,Object? phone = null,}) {
  return _then(_self.copyWith(
countryCodes: null == countryCodes ? _self.countryCodes : countryCodes // ignore: cast_nullable_to_non_nullable
as List<CountryCodeModel>,selectedCountryCode: null == selectedCountryCode ? _self.selectedCountryCode : selectedCountryCode // ignore: cast_nullable_to_non_nullable
as CountryCodeModel,isPrivacyPolicyConfirmed: null == isPrivacyPolicyConfirmed ? _self.isPrivacyPolicyConfirmed : isPrivacyPolicyConfirmed // ignore: cast_nullable_to_non_nullable
as bool,isTermsConfirmed: null == isTermsConfirmed ? _self.isTermsConfirmed : isTermsConfirmed // ignore: cast_nullable_to_non_nullable
as bool,requestAbleAt: freezed == requestAbleAt ? _self.requestAbleAt : requestAbleAt // ignore: cast_nullable_to_non_nullable
as DateTime?,phone: null == phone ? _self.phone : phone // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [LoginPhoneBodyState].
extension LoginPhoneBodyStatePatterns on LoginPhoneBodyState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _LoginPhoneBodyState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _LoginPhoneBodyState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _LoginPhoneBodyState value)  $default,){
final _that = this;
switch (_that) {
case _LoginPhoneBodyState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _LoginPhoneBodyState value)?  $default,){
final _that = this;
switch (_that) {
case _LoginPhoneBodyState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<CountryCodeModel> countryCodes,  CountryCodeModel selectedCountryCode,  bool isPrivacyPolicyConfirmed,  bool isTermsConfirmed,  DateTime? requestAbleAt,  String phone)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _LoginPhoneBodyState() when $default != null:
return $default(_that.countryCodes,_that.selectedCountryCode,_that.isPrivacyPolicyConfirmed,_that.isTermsConfirmed,_that.requestAbleAt,_that.phone);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<CountryCodeModel> countryCodes,  CountryCodeModel selectedCountryCode,  bool isPrivacyPolicyConfirmed,  bool isTermsConfirmed,  DateTime? requestAbleAt,  String phone)  $default,) {final _that = this;
switch (_that) {
case _LoginPhoneBodyState():
return $default(_that.countryCodes,_that.selectedCountryCode,_that.isPrivacyPolicyConfirmed,_that.isTermsConfirmed,_that.requestAbleAt,_that.phone);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<CountryCodeModel> countryCodes,  CountryCodeModel selectedCountryCode,  bool isPrivacyPolicyConfirmed,  bool isTermsConfirmed,  DateTime? requestAbleAt,  String phone)?  $default,) {final _that = this;
switch (_that) {
case _LoginPhoneBodyState() when $default != null:
return $default(_that.countryCodes,_that.selectedCountryCode,_that.isPrivacyPolicyConfirmed,_that.isTermsConfirmed,_that.requestAbleAt,_that.phone);case _:
  return null;

}
}

}

/// @nodoc


class _LoginPhoneBodyState extends LoginPhoneBodyState {
   _LoginPhoneBodyState({required final  List<CountryCodeModel> countryCodes, required this.selectedCountryCode, this.isPrivacyPolicyConfirmed = false, this.isTermsConfirmed = false, this.requestAbleAt, this.phone = ''}): _countryCodes = countryCodes,super._();
  

 final  List<CountryCodeModel> _countryCodes;
@override List<CountryCodeModel> get countryCodes {
  if (_countryCodes is EqualUnmodifiableListView) return _countryCodes;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_countryCodes);
}

@override final  CountryCodeModel selectedCountryCode;
@override@JsonKey() final  bool isPrivacyPolicyConfirmed;
@override@JsonKey() final  bool isTermsConfirmed;
@override final  DateTime? requestAbleAt;
@override@JsonKey() final  String phone;

/// Create a copy of LoginPhoneBodyState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$LoginPhoneBodyStateCopyWith<_LoginPhoneBodyState> get copyWith => __$LoginPhoneBodyStateCopyWithImpl<_LoginPhoneBodyState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _LoginPhoneBodyState&&const DeepCollectionEquality().equals(other._countryCodes, _countryCodes)&&(identical(other.selectedCountryCode, selectedCountryCode) || other.selectedCountryCode == selectedCountryCode)&&(identical(other.isPrivacyPolicyConfirmed, isPrivacyPolicyConfirmed) || other.isPrivacyPolicyConfirmed == isPrivacyPolicyConfirmed)&&(identical(other.isTermsConfirmed, isTermsConfirmed) || other.isTermsConfirmed == isTermsConfirmed)&&(identical(other.requestAbleAt, requestAbleAt) || other.requestAbleAt == requestAbleAt)&&(identical(other.phone, phone) || other.phone == phone));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_countryCodes),selectedCountryCode,isPrivacyPolicyConfirmed,isTermsConfirmed,requestAbleAt,phone);

@override
String toString() {
  return 'LoginPhoneBodyState(countryCodes: $countryCodes, selectedCountryCode: $selectedCountryCode, isPrivacyPolicyConfirmed: $isPrivacyPolicyConfirmed, isTermsConfirmed: $isTermsConfirmed, requestAbleAt: $requestAbleAt, phone: $phone)';
}


}

/// @nodoc
abstract mixin class _$LoginPhoneBodyStateCopyWith<$Res> implements $LoginPhoneBodyStateCopyWith<$Res> {
  factory _$LoginPhoneBodyStateCopyWith(_LoginPhoneBodyState value, $Res Function(_LoginPhoneBodyState) _then) = __$LoginPhoneBodyStateCopyWithImpl;
@override @useResult
$Res call({
 List<CountryCodeModel> countryCodes, CountryCodeModel selectedCountryCode, bool isPrivacyPolicyConfirmed, bool isTermsConfirmed, DateTime? requestAbleAt, String phone
});




}
/// @nodoc
class __$LoginPhoneBodyStateCopyWithImpl<$Res>
    implements _$LoginPhoneBodyStateCopyWith<$Res> {
  __$LoginPhoneBodyStateCopyWithImpl(this._self, this._then);

  final _LoginPhoneBodyState _self;
  final $Res Function(_LoginPhoneBodyState) _then;

/// Create a copy of LoginPhoneBodyState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? countryCodes = null,Object? selectedCountryCode = null,Object? isPrivacyPolicyConfirmed = null,Object? isTermsConfirmed = null,Object? requestAbleAt = freezed,Object? phone = null,}) {
  return _then(_LoginPhoneBodyState(
countryCodes: null == countryCodes ? _self._countryCodes : countryCodes // ignore: cast_nullable_to_non_nullable
as List<CountryCodeModel>,selectedCountryCode: null == selectedCountryCode ? _self.selectedCountryCode : selectedCountryCode // ignore: cast_nullable_to_non_nullable
as CountryCodeModel,isPrivacyPolicyConfirmed: null == isPrivacyPolicyConfirmed ? _self.isPrivacyPolicyConfirmed : isPrivacyPolicyConfirmed // ignore: cast_nullable_to_non_nullable
as bool,isTermsConfirmed: null == isTermsConfirmed ? _self.isTermsConfirmed : isTermsConfirmed // ignore: cast_nullable_to_non_nullable
as bool,requestAbleAt: freezed == requestAbleAt ? _self.requestAbleAt : requestAbleAt // ignore: cast_nullable_to_non_nullable
as DateTime?,phone: null == phone ? _self.phone : phone // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
