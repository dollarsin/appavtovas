// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'tour_details_page_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$TourDetailsPageData {

@JsonKey(name: 'tour_id') String get tourId;
/// Create a copy of TourDetailsPageData
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TourDetailsPageDataCopyWith<TourDetailsPageData> get copyWith => _$TourDetailsPageDataCopyWithImpl<TourDetailsPageData>(this as TourDetailsPageData, _$identity);

  /// Serializes this TourDetailsPageData to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TourDetailsPageData&&(identical(other.tourId, tourId) || other.tourId == tourId));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,tourId);

@override
String toString() {
  return 'TourDetailsPageData(tourId: $tourId)';
}


}

/// @nodoc
abstract mixin class $TourDetailsPageDataCopyWith<$Res>  {
  factory $TourDetailsPageDataCopyWith(TourDetailsPageData value, $Res Function(TourDetailsPageData) _then) = _$TourDetailsPageDataCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'tour_id') String tourId
});




}
/// @nodoc
class _$TourDetailsPageDataCopyWithImpl<$Res>
    implements $TourDetailsPageDataCopyWith<$Res> {
  _$TourDetailsPageDataCopyWithImpl(this._self, this._then);

  final TourDetailsPageData _self;
  final $Res Function(TourDetailsPageData) _then;

/// Create a copy of TourDetailsPageData
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? tourId = null,}) {
  return _then(_self.copyWith(
tourId: null == tourId ? _self.tourId : tourId // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [TourDetailsPageData].
extension TourDetailsPageDataPatterns on TourDetailsPageData {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _TourDetailsPageData value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _TourDetailsPageData() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _TourDetailsPageData value)  $default,){
final _that = this;
switch (_that) {
case _TourDetailsPageData():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _TourDetailsPageData value)?  $default,){
final _that = this;
switch (_that) {
case _TourDetailsPageData() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'tour_id')  String tourId)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _TourDetailsPageData() when $default != null:
return $default(_that.tourId);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'tour_id')  String tourId)  $default,) {final _that = this;
switch (_that) {
case _TourDetailsPageData():
return $default(_that.tourId);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'tour_id')  String tourId)?  $default,) {final _that = this;
switch (_that) {
case _TourDetailsPageData() when $default != null:
return $default(_that.tourId);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _TourDetailsPageData implements TourDetailsPageData {
  const _TourDetailsPageData({@JsonKey(name: 'tour_id') required this.tourId});
  factory _TourDetailsPageData.fromJson(Map<String, dynamic> json) => _$TourDetailsPageDataFromJson(json);

@override@JsonKey(name: 'tour_id') final  String tourId;

/// Create a copy of TourDetailsPageData
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TourDetailsPageDataCopyWith<_TourDetailsPageData> get copyWith => __$TourDetailsPageDataCopyWithImpl<_TourDetailsPageData>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$TourDetailsPageDataToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _TourDetailsPageData&&(identical(other.tourId, tourId) || other.tourId == tourId));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,tourId);

@override
String toString() {
  return 'TourDetailsPageData(tourId: $tourId)';
}


}

/// @nodoc
abstract mixin class _$TourDetailsPageDataCopyWith<$Res> implements $TourDetailsPageDataCopyWith<$Res> {
  factory _$TourDetailsPageDataCopyWith(_TourDetailsPageData value, $Res Function(_TourDetailsPageData) _then) = __$TourDetailsPageDataCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'tour_id') String tourId
});




}
/// @nodoc
class __$TourDetailsPageDataCopyWithImpl<$Res>
    implements _$TourDetailsPageDataCopyWith<$Res> {
  __$TourDetailsPageDataCopyWithImpl(this._self, this._then);

  final _TourDetailsPageData _self;
  final $Res Function(_TourDetailsPageData) _then;

/// Create a copy of TourDetailsPageData
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? tourId = null,}) {
  return _then(_TourDetailsPageData(
tourId: null == tourId ? _self.tourId : tourId // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
