// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'tour_list_page_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$TourListPageState {

 DateTime get date; String? get departureId; String? get destinationId; String? get departureName; String? get destinationName; List<Tour> get tours; ToursSortOptions get sortOption;
/// Create a copy of TourListPageState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TourListPageStateCopyWith<TourListPageState> get copyWith => _$TourListPageStateCopyWithImpl<TourListPageState>(this as TourListPageState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TourListPageState&&(identical(other.date, date) || other.date == date)&&(identical(other.departureId, departureId) || other.departureId == departureId)&&(identical(other.destinationId, destinationId) || other.destinationId == destinationId)&&(identical(other.departureName, departureName) || other.departureName == departureName)&&(identical(other.destinationName, destinationName) || other.destinationName == destinationName)&&const DeepCollectionEquality().equals(other.tours, tours)&&(identical(other.sortOption, sortOption) || other.sortOption == sortOption));
}


@override
int get hashCode => Object.hash(runtimeType,date,departureId,destinationId,departureName,destinationName,const DeepCollectionEquality().hash(tours),sortOption);

@override
String toString() {
  return 'TourListPageState(date: $date, departureId: $departureId, destinationId: $destinationId, departureName: $departureName, destinationName: $destinationName, tours: $tours, sortOption: $sortOption)';
}


}

/// @nodoc
abstract mixin class $TourListPageStateCopyWith<$Res>  {
  factory $TourListPageStateCopyWith(TourListPageState value, $Res Function(TourListPageState) _then) = _$TourListPageStateCopyWithImpl;
@useResult
$Res call({
 DateTime date, String? departureId, String? destinationId, String? departureName, String? destinationName, List<Tour> tours, ToursSortOptions sortOption
});




}
/// @nodoc
class _$TourListPageStateCopyWithImpl<$Res>
    implements $TourListPageStateCopyWith<$Res> {
  _$TourListPageStateCopyWithImpl(this._self, this._then);

  final TourListPageState _self;
  final $Res Function(TourListPageState) _then;

/// Create a copy of TourListPageState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? date = null,Object? departureId = freezed,Object? destinationId = freezed,Object? departureName = freezed,Object? destinationName = freezed,Object? tours = null,Object? sortOption = null,}) {
  return _then(_self.copyWith(
date: null == date ? _self.date : date // ignore: cast_nullable_to_non_nullable
as DateTime,departureId: freezed == departureId ? _self.departureId : departureId // ignore: cast_nullable_to_non_nullable
as String?,destinationId: freezed == destinationId ? _self.destinationId : destinationId // ignore: cast_nullable_to_non_nullable
as String?,departureName: freezed == departureName ? _self.departureName : departureName // ignore: cast_nullable_to_non_nullable
as String?,destinationName: freezed == destinationName ? _self.destinationName : destinationName // ignore: cast_nullable_to_non_nullable
as String?,tours: null == tours ? _self.tours : tours // ignore: cast_nullable_to_non_nullable
as List<Tour>,sortOption: null == sortOption ? _self.sortOption : sortOption // ignore: cast_nullable_to_non_nullable
as ToursSortOptions,
  ));
}

}


/// Adds pattern-matching-related methods to [TourListPageState].
extension TourListPageStatePatterns on TourListPageState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _TourListPageState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _TourListPageState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _TourListPageState value)  $default,){
final _that = this;
switch (_that) {
case _TourListPageState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _TourListPageState value)?  $default,){
final _that = this;
switch (_that) {
case _TourListPageState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( DateTime date,  String? departureId,  String? destinationId,  String? departureName,  String? destinationName,  List<Tour> tours,  ToursSortOptions sortOption)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _TourListPageState() when $default != null:
return $default(_that.date,_that.departureId,_that.destinationId,_that.departureName,_that.destinationName,_that.tours,_that.sortOption);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( DateTime date,  String? departureId,  String? destinationId,  String? departureName,  String? destinationName,  List<Tour> tours,  ToursSortOptions sortOption)  $default,) {final _that = this;
switch (_that) {
case _TourListPageState():
return $default(_that.date,_that.departureId,_that.destinationId,_that.departureName,_that.destinationName,_that.tours,_that.sortOption);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( DateTime date,  String? departureId,  String? destinationId,  String? departureName,  String? destinationName,  List<Tour> tours,  ToursSortOptions sortOption)?  $default,) {final _that = this;
switch (_that) {
case _TourListPageState() when $default != null:
return $default(_that.date,_that.departureId,_that.destinationId,_that.departureName,_that.destinationName,_that.tours,_that.sortOption);case _:
  return null;

}
}

}

/// @nodoc


class _TourListPageState implements TourListPageState {
  const _TourListPageState({required this.date, this.departureId, this.destinationId, this.departureName, this.destinationName, final  List<Tour> tours = const [], this.sortOption = ToursSortOptions.byTime}): _tours = tours;
  

@override final  DateTime date;
@override final  String? departureId;
@override final  String? destinationId;
@override final  String? departureName;
@override final  String? destinationName;
 final  List<Tour> _tours;
@override@JsonKey() List<Tour> get tours {
  if (_tours is EqualUnmodifiableListView) return _tours;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_tours);
}

@override@JsonKey() final  ToursSortOptions sortOption;

/// Create a copy of TourListPageState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TourListPageStateCopyWith<_TourListPageState> get copyWith => __$TourListPageStateCopyWithImpl<_TourListPageState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _TourListPageState&&(identical(other.date, date) || other.date == date)&&(identical(other.departureId, departureId) || other.departureId == departureId)&&(identical(other.destinationId, destinationId) || other.destinationId == destinationId)&&(identical(other.departureName, departureName) || other.departureName == departureName)&&(identical(other.destinationName, destinationName) || other.destinationName == destinationName)&&const DeepCollectionEquality().equals(other._tours, _tours)&&(identical(other.sortOption, sortOption) || other.sortOption == sortOption));
}


@override
int get hashCode => Object.hash(runtimeType,date,departureId,destinationId,departureName,destinationName,const DeepCollectionEquality().hash(_tours),sortOption);

@override
String toString() {
  return 'TourListPageState(date: $date, departureId: $departureId, destinationId: $destinationId, departureName: $departureName, destinationName: $destinationName, tours: $tours, sortOption: $sortOption)';
}


}

/// @nodoc
abstract mixin class _$TourListPageStateCopyWith<$Res> implements $TourListPageStateCopyWith<$Res> {
  factory _$TourListPageStateCopyWith(_TourListPageState value, $Res Function(_TourListPageState) _then) = __$TourListPageStateCopyWithImpl;
@override @useResult
$Res call({
 DateTime date, String? departureId, String? destinationId, String? departureName, String? destinationName, List<Tour> tours, ToursSortOptions sortOption
});




}
/// @nodoc
class __$TourListPageStateCopyWithImpl<$Res>
    implements _$TourListPageStateCopyWith<$Res> {
  __$TourListPageStateCopyWithImpl(this._self, this._then);

  final _TourListPageState _self;
  final $Res Function(_TourListPageState) _then;

/// Create a copy of TourListPageState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? date = null,Object? departureId = freezed,Object? destinationId = freezed,Object? departureName = freezed,Object? destinationName = freezed,Object? tours = null,Object? sortOption = null,}) {
  return _then(_TourListPageState(
date: null == date ? _self.date : date // ignore: cast_nullable_to_non_nullable
as DateTime,departureId: freezed == departureId ? _self.departureId : departureId // ignore: cast_nullable_to_non_nullable
as String?,destinationId: freezed == destinationId ? _self.destinationId : destinationId // ignore: cast_nullable_to_non_nullable
as String?,departureName: freezed == departureName ? _self.departureName : departureName // ignore: cast_nullable_to_non_nullable
as String?,destinationName: freezed == destinationName ? _self.destinationName : destinationName // ignore: cast_nullable_to_non_nullable
as String?,tours: null == tours ? _self._tours : tours // ignore: cast_nullable_to_non_nullable
as List<Tour>,sortOption: null == sortOption ? _self.sortOption : sortOption // ignore: cast_nullable_to_non_nullable
as ToursSortOptions,
  ));
}


}

// dart format on
