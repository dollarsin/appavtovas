// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'formatter_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$FormatterModel {

@JsonKey(name: 'mask') String get mask;@JsonKey(name: 'filters') Map<String, String> get filters;

  /// Serializes this FormatterModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FormatterModel&&(identical(other.mask, mask) || other.mask == mask)&&const DeepCollectionEquality().equals(other.filters, filters));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,mask,const DeepCollectionEquality().hash(filters));

@override
String toString() {
  return 'FormatterModel(mask: $mask, filters: $filters)';
}


}




/// Adds pattern-matching-related methods to [FormatterModel].
extension FormatterModelPatterns on FormatterModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _FormatterModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _FormatterModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _FormatterModel value)  $default,){
final _that = this;
switch (_that) {
case _FormatterModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _FormatterModel value)?  $default,){
final _that = this;
switch (_that) {
case _FormatterModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'mask')  String mask, @JsonKey(name: 'filters')  Map<String, String> filters)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _FormatterModel() when $default != null:
return $default(_that.mask,_that.filters);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'mask')  String mask, @JsonKey(name: 'filters')  Map<String, String> filters)  $default,) {final _that = this;
switch (_that) {
case _FormatterModel():
return $default(_that.mask,_that.filters);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'mask')  String mask, @JsonKey(name: 'filters')  Map<String, String> filters)?  $default,) {final _that = this;
switch (_that) {
case _FormatterModel() when $default != null:
return $default(_that.mask,_that.filters);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _FormatterModel implements FormatterModel {
  const _FormatterModel({@JsonKey(name: 'mask') required this.mask, @JsonKey(name: 'filters') final  Map<String, String> filters = const {}}): _filters = filters;
  factory _FormatterModel.fromJson(Map<String, dynamic> json) => _$FormatterModelFromJson(json);

@override@JsonKey(name: 'mask') final  String mask;
 final  Map<String, String> _filters;
@override@JsonKey(name: 'filters') Map<String, String> get filters {
  if (_filters is EqualUnmodifiableMapView) return _filters;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(_filters);
}



@override
Map<String, dynamic> toJson() {
  return _$FormatterModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _FormatterModel&&(identical(other.mask, mask) || other.mask == mask)&&const DeepCollectionEquality().equals(other._filters, _filters));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,mask,const DeepCollectionEquality().hash(_filters));

@override
String toString() {
  return 'FormatterModel(mask: $mask, filters: $filters)';
}


}




// dart format on
