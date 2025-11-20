// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'passenger_document_types_list_page_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$PassengerDocumentTypesListPageState {

 String? get query; List<PassengerDocumentType> get passengerDocumentTypes;
/// Create a copy of PassengerDocumentTypesListPageState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PassengerDocumentTypesListPageStateCopyWith<PassengerDocumentTypesListPageState> get copyWith => _$PassengerDocumentTypesListPageStateCopyWithImpl<PassengerDocumentTypesListPageState>(this as PassengerDocumentTypesListPageState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PassengerDocumentTypesListPageState&&(identical(other.query, query) || other.query == query)&&const DeepCollectionEquality().equals(other.passengerDocumentTypes, passengerDocumentTypes));
}


@override
int get hashCode => Object.hash(runtimeType,query,const DeepCollectionEquality().hash(passengerDocumentTypes));

@override
String toString() {
  return 'PassengerDocumentTypesListPageState(query: $query, passengerDocumentTypes: $passengerDocumentTypes)';
}


}

/// @nodoc
abstract mixin class $PassengerDocumentTypesListPageStateCopyWith<$Res>  {
  factory $PassengerDocumentTypesListPageStateCopyWith(PassengerDocumentTypesListPageState value, $Res Function(PassengerDocumentTypesListPageState) _then) = _$PassengerDocumentTypesListPageStateCopyWithImpl;
@useResult
$Res call({
 String? query, List<PassengerDocumentType> passengerDocumentTypes
});




}
/// @nodoc
class _$PassengerDocumentTypesListPageStateCopyWithImpl<$Res>
    implements $PassengerDocumentTypesListPageStateCopyWith<$Res> {
  _$PassengerDocumentTypesListPageStateCopyWithImpl(this._self, this._then);

  final PassengerDocumentTypesListPageState _self;
  final $Res Function(PassengerDocumentTypesListPageState) _then;

/// Create a copy of PassengerDocumentTypesListPageState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? query = freezed,Object? passengerDocumentTypes = null,}) {
  return _then(_self.copyWith(
query: freezed == query ? _self.query : query // ignore: cast_nullable_to_non_nullable
as String?,passengerDocumentTypes: null == passengerDocumentTypes ? _self.passengerDocumentTypes : passengerDocumentTypes // ignore: cast_nullable_to_non_nullable
as List<PassengerDocumentType>,
  ));
}

}


/// Adds pattern-matching-related methods to [PassengerDocumentTypesListPageState].
extension PassengerDocumentTypesListPageStatePatterns on PassengerDocumentTypesListPageState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PassengerDocumentTypesListPageState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PassengerDocumentTypesListPageState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PassengerDocumentTypesListPageState value)  $default,){
final _that = this;
switch (_that) {
case _PassengerDocumentTypesListPageState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PassengerDocumentTypesListPageState value)?  $default,){
final _that = this;
switch (_that) {
case _PassengerDocumentTypesListPageState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? query,  List<PassengerDocumentType> passengerDocumentTypes)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PassengerDocumentTypesListPageState() when $default != null:
return $default(_that.query,_that.passengerDocumentTypes);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? query,  List<PassengerDocumentType> passengerDocumentTypes)  $default,) {final _that = this;
switch (_that) {
case _PassengerDocumentTypesListPageState():
return $default(_that.query,_that.passengerDocumentTypes);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? query,  List<PassengerDocumentType> passengerDocumentTypes)?  $default,) {final _that = this;
switch (_that) {
case _PassengerDocumentTypesListPageState() when $default != null:
return $default(_that.query,_that.passengerDocumentTypes);case _:
  return null;

}
}

}

/// @nodoc


class _PassengerDocumentTypesListPageState implements PassengerDocumentTypesListPageState {
  const _PassengerDocumentTypesListPageState({this.query, final  List<PassengerDocumentType> passengerDocumentTypes = const []}): _passengerDocumentTypes = passengerDocumentTypes;
  

@override final  String? query;
 final  List<PassengerDocumentType> _passengerDocumentTypes;
@override@JsonKey() List<PassengerDocumentType> get passengerDocumentTypes {
  if (_passengerDocumentTypes is EqualUnmodifiableListView) return _passengerDocumentTypes;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_passengerDocumentTypes);
}


/// Create a copy of PassengerDocumentTypesListPageState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PassengerDocumentTypesListPageStateCopyWith<_PassengerDocumentTypesListPageState> get copyWith => __$PassengerDocumentTypesListPageStateCopyWithImpl<_PassengerDocumentTypesListPageState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PassengerDocumentTypesListPageState&&(identical(other.query, query) || other.query == query)&&const DeepCollectionEquality().equals(other._passengerDocumentTypes, _passengerDocumentTypes));
}


@override
int get hashCode => Object.hash(runtimeType,query,const DeepCollectionEquality().hash(_passengerDocumentTypes));

@override
String toString() {
  return 'PassengerDocumentTypesListPageState(query: $query, passengerDocumentTypes: $passengerDocumentTypes)';
}


}

/// @nodoc
abstract mixin class _$PassengerDocumentTypesListPageStateCopyWith<$Res> implements $PassengerDocumentTypesListPageStateCopyWith<$Res> {
  factory _$PassengerDocumentTypesListPageStateCopyWith(_PassengerDocumentTypesListPageState value, $Res Function(_PassengerDocumentTypesListPageState) _then) = __$PassengerDocumentTypesListPageStateCopyWithImpl;
@override @useResult
$Res call({
 String? query, List<PassengerDocumentType> passengerDocumentTypes
});




}
/// @nodoc
class __$PassengerDocumentTypesListPageStateCopyWithImpl<$Res>
    implements _$PassengerDocumentTypesListPageStateCopyWith<$Res> {
  __$PassengerDocumentTypesListPageStateCopyWithImpl(this._self, this._then);

  final _PassengerDocumentTypesListPageState _self;
  final $Res Function(_PassengerDocumentTypesListPageState) _then;

/// Create a copy of PassengerDocumentTypesListPageState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? query = freezed,Object? passengerDocumentTypes = null,}) {
  return _then(_PassengerDocumentTypesListPageState(
query: freezed == query ? _self.query : query // ignore: cast_nullable_to_non_nullable
as String?,passengerDocumentTypes: null == passengerDocumentTypes ? _self._passengerDocumentTypes : passengerDocumentTypes // ignore: cast_nullable_to_non_nullable
as List<PassengerDocumentType>,
  ));
}


}

// dart format on
