// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

// @dart=3.8
part of 'tour_list_page_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$TourListPageData {

@JsonKey(name: 'departure_id', includeIfNull: false) String? get departureId;@JsonKey(name: 'departure_name', includeIfNull: false) String? get departureName;@JsonKey(name: 'destination_id', includeIfNull: false) String? get destinationId;@JsonKey(name: 'destination_name', includeIfNull: false) String? get destinationName;@JsonKey(name: 'date', includeIfNull: false)@UTCDateTimeConverter() DateTime? get date;

  /// Serializes this TourListPageData to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TourListPageData&&(identical(other.departureId, departureId) || other.departureId == departureId)&&(identical(other.departureName, departureName) || other.departureName == departureName)&&(identical(other.destinationId, destinationId) || other.destinationId == destinationId)&&(identical(other.destinationName, destinationName) || other.destinationName == destinationName)&&(identical(other.date, date) || other.date == date));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,departureId,departureName,destinationId,destinationName,date);

@override
String toString() {
  return 'TourListPageData(departureId: $departureId, departureName: $departureName, destinationId: $destinationId, destinationName: $destinationName, date: $date)';
}


}




/// Adds pattern-matching-related methods to [TourListPageData].
extension TourListPageDataPatterns on TourListPageData {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _TourListPageData value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _TourListPageData() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _TourListPageData value)  $default,){
final _that = this;
switch (_that) {
case _TourListPageData():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _TourListPageData value)?  $default,){
final _that = this;
switch (_that) {
case _TourListPageData() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'departure_id', includeIfNull: false)  String? departureId, @JsonKey(name: 'departure_name', includeIfNull: false)  String? departureName, @JsonKey(name: 'destination_id', includeIfNull: false)  String? destinationId, @JsonKey(name: 'destination_name', includeIfNull: false)  String? destinationName, @JsonKey(name: 'date', includeIfNull: false)@UTCDateTimeConverter()  DateTime? date)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _TourListPageData() when $default != null:
return $default(_that.departureId,_that.departureName,_that.destinationId,_that.destinationName,_that.date);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'departure_id', includeIfNull: false)  String? departureId, @JsonKey(name: 'departure_name', includeIfNull: false)  String? departureName, @JsonKey(name: 'destination_id', includeIfNull: false)  String? destinationId, @JsonKey(name: 'destination_name', includeIfNull: false)  String? destinationName, @JsonKey(name: 'date', includeIfNull: false)@UTCDateTimeConverter()  DateTime? date)  $default,) {final _that = this;
switch (_that) {
case _TourListPageData():
return $default(_that.departureId,_that.departureName,_that.destinationId,_that.destinationName,_that.date);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'departure_id', includeIfNull: false)  String? departureId, @JsonKey(name: 'departure_name', includeIfNull: false)  String? departureName, @JsonKey(name: 'destination_id', includeIfNull: false)  String? destinationId, @JsonKey(name: 'destination_name', includeIfNull: false)  String? destinationName, @JsonKey(name: 'date', includeIfNull: false)@UTCDateTimeConverter()  DateTime? date)?  $default,) {final _that = this;
switch (_that) {
case _TourListPageData() when $default != null:
return $default(_that.departureId,_that.departureName,_that.destinationId,_that.destinationName,_that.date);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _TourListPageData implements TourListPageData {
  const _TourListPageData({@JsonKey(name: 'departure_id', includeIfNull: false) this.departureId, @JsonKey(name: 'departure_name', includeIfNull: false) this.departureName, @JsonKey(name: 'destination_id', includeIfNull: false) this.destinationId, @JsonKey(name: 'destination_name', includeIfNull: false) this.destinationName, @JsonKey(name: 'date', includeIfNull: false)@UTCDateTimeConverter() this.date});
  factory _TourListPageData.fromJson(Map<String, dynamic> json) => _$TourListPageDataFromJson(json);

@override@JsonKey(name: 'departure_id', includeIfNull: false) final  String? departureId;
@override@JsonKey(name: 'departure_name', includeIfNull: false) final  String? departureName;
@override@JsonKey(name: 'destination_id', includeIfNull: false) final  String? destinationId;
@override@JsonKey(name: 'destination_name', includeIfNull: false) final  String? destinationName;
@override@JsonKey(name: 'date', includeIfNull: false)@UTCDateTimeConverter() final  DateTime? date;


@override
Map<String, dynamic> toJson() {
  return _$TourListPageDataToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _TourListPageData&&(identical(other.departureId, departureId) || other.departureId == departureId)&&(identical(other.departureName, departureName) || other.departureName == departureName)&&(identical(other.destinationId, destinationId) || other.destinationId == destinationId)&&(identical(other.destinationName, destinationName) || other.destinationName == destinationName)&&(identical(other.date, date) || other.date == date));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,departureId,departureName,destinationId,destinationName,date);

@override
String toString() {
  return 'TourListPageData(departureId: $departureId, departureName: $departureName, destinationId: $destinationId, destinationName: $destinationName, date: $date)';
}


}




// dart format on
