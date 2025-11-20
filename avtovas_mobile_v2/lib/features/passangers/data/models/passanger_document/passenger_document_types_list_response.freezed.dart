// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'passenger_document_types_list_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$PassengerDocumentTypesListResponse {

@JsonKey(name: 'types') List<PassengerDocumentType> get passengersDocuments;
/// Create a copy of PassengerDocumentTypesListResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PassengerDocumentTypesListResponseCopyWith<PassengerDocumentTypesListResponse> get copyWith => _$PassengerDocumentTypesListResponseCopyWithImpl<PassengerDocumentTypesListResponse>(this as PassengerDocumentTypesListResponse, _$identity);

  /// Serializes this PassengerDocumentTypesListResponse to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PassengerDocumentTypesListResponse&&const DeepCollectionEquality().equals(other.passengersDocuments, passengersDocuments));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(passengersDocuments));

@override
String toString() {
  return 'PassengerDocumentTypesListResponse(passengersDocuments: $passengersDocuments)';
}


}

/// @nodoc
abstract mixin class $PassengerDocumentTypesListResponseCopyWith<$Res>  {
  factory $PassengerDocumentTypesListResponseCopyWith(PassengerDocumentTypesListResponse value, $Res Function(PassengerDocumentTypesListResponse) _then) = _$PassengerDocumentTypesListResponseCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'types') List<PassengerDocumentType> passengersDocuments
});




}
/// @nodoc
class _$PassengerDocumentTypesListResponseCopyWithImpl<$Res>
    implements $PassengerDocumentTypesListResponseCopyWith<$Res> {
  _$PassengerDocumentTypesListResponseCopyWithImpl(this._self, this._then);

  final PassengerDocumentTypesListResponse _self;
  final $Res Function(PassengerDocumentTypesListResponse) _then;

/// Create a copy of PassengerDocumentTypesListResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? passengersDocuments = null,}) {
  return _then(_self.copyWith(
passengersDocuments: null == passengersDocuments ? _self.passengersDocuments : passengersDocuments // ignore: cast_nullable_to_non_nullable
as List<PassengerDocumentType>,
  ));
}

}


/// Adds pattern-matching-related methods to [PassengerDocumentTypesListResponse].
extension PassengerDocumentTypesListResponsePatterns on PassengerDocumentTypesListResponse {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PassengerDocumentTypesListResponse value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PassengerDocumentTypesListResponse() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PassengerDocumentTypesListResponse value)  $default,){
final _that = this;
switch (_that) {
case _PassengerDocumentTypesListResponse():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PassengerDocumentTypesListResponse value)?  $default,){
final _that = this;
switch (_that) {
case _PassengerDocumentTypesListResponse() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'types')  List<PassengerDocumentType> passengersDocuments)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PassengerDocumentTypesListResponse() when $default != null:
return $default(_that.passengersDocuments);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'types')  List<PassengerDocumentType> passengersDocuments)  $default,) {final _that = this;
switch (_that) {
case _PassengerDocumentTypesListResponse():
return $default(_that.passengersDocuments);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'types')  List<PassengerDocumentType> passengersDocuments)?  $default,) {final _that = this;
switch (_that) {
case _PassengerDocumentTypesListResponse() when $default != null:
return $default(_that.passengersDocuments);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _PassengerDocumentTypesListResponse implements PassengerDocumentTypesListResponse {
  const _PassengerDocumentTypesListResponse({@JsonKey(name: 'types') final  List<PassengerDocumentType> passengersDocuments = const []}): _passengersDocuments = passengersDocuments;
  factory _PassengerDocumentTypesListResponse.fromJson(Map<String, dynamic> json) => _$PassengerDocumentTypesListResponseFromJson(json);

 final  List<PassengerDocumentType> _passengersDocuments;
@override@JsonKey(name: 'types') List<PassengerDocumentType> get passengersDocuments {
  if (_passengersDocuments is EqualUnmodifiableListView) return _passengersDocuments;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_passengersDocuments);
}


/// Create a copy of PassengerDocumentTypesListResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PassengerDocumentTypesListResponseCopyWith<_PassengerDocumentTypesListResponse> get copyWith => __$PassengerDocumentTypesListResponseCopyWithImpl<_PassengerDocumentTypesListResponse>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PassengerDocumentTypesListResponseToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PassengerDocumentTypesListResponse&&const DeepCollectionEquality().equals(other._passengersDocuments, _passengersDocuments));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_passengersDocuments));

@override
String toString() {
  return 'PassengerDocumentTypesListResponse(passengersDocuments: $passengersDocuments)';
}


}

/// @nodoc
abstract mixin class _$PassengerDocumentTypesListResponseCopyWith<$Res> implements $PassengerDocumentTypesListResponseCopyWith<$Res> {
  factory _$PassengerDocumentTypesListResponseCopyWith(_PassengerDocumentTypesListResponse value, $Res Function(_PassengerDocumentTypesListResponse) _then) = __$PassengerDocumentTypesListResponseCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'types') List<PassengerDocumentType> passengersDocuments
});




}
/// @nodoc
class __$PassengerDocumentTypesListResponseCopyWithImpl<$Res>
    implements _$PassengerDocumentTypesListResponseCopyWith<$Res> {
  __$PassengerDocumentTypesListResponseCopyWithImpl(this._self, this._then);

  final _PassengerDocumentTypesListResponse _self;
  final $Res Function(_PassengerDocumentTypesListResponse) _then;

/// Create a copy of PassengerDocumentTypesListResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? passengersDocuments = null,}) {
  return _then(_PassengerDocumentTypesListResponse(
passengersDocuments: null == passengersDocuments ? _self._passengersDocuments : passengersDocuments // ignore: cast_nullable_to_non_nullable
as List<PassengerDocumentType>,
  ));
}


}

// dart format on
