// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'base_page_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$BasePageState<Data extends Object> {

 Data? get data;
/// Create a copy of BasePageState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$BasePageStateCopyWith<Data, BasePageState<Data>> get copyWith => _$BasePageStateCopyWithImpl<Data, BasePageState<Data>>(this as BasePageState<Data>, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is BasePageState<Data>&&const DeepCollectionEquality().equals(other.data, data));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(data));

@override
String toString() {
  return 'BasePageState<$Data>(data: $data)';
}


}

/// @nodoc
abstract mixin class $BasePageStateCopyWith<Data extends Object,$Res>  {
  factory $BasePageStateCopyWith(BasePageState<Data> value, $Res Function(BasePageState<Data>) _then) = _$BasePageStateCopyWithImpl;
@useResult
$Res call({
 Data data
});




}
/// @nodoc
class _$BasePageStateCopyWithImpl<Data extends Object,$Res>
    implements $BasePageStateCopyWith<Data, $Res> {
  _$BasePageStateCopyWithImpl(this._self, this._then);

  final BasePageState<Data> _self;
  final $Res Function(BasePageState<Data>) _then;

/// Create a copy of BasePageState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? data = null,}) {
  return _then(_self.copyWith(
data: null == data ? _self.data! : data // ignore: cast_nullable_to_non_nullable
as Data,
  ));
}

}


/// Adds pattern-matching-related methods to [BasePageState].
extension BasePageStatePatterns<Data extends Object> on BasePageState<Data> {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( BasePageInitialState<Data> value)?  initial,TResult Function( BasePageLoadingState<Data> value)?  loading,TResult Function( BasePageDataState<Data> value)?  data,TResult Function( BasePageErrorState<Data> value)?  error,required TResult orElse(),}){
final _that = this;
switch (_that) {
case BasePageInitialState() when initial != null:
return initial(_that);case BasePageLoadingState() when loading != null:
return loading(_that);case BasePageDataState() when data != null:
return data(_that);case BasePageErrorState() when error != null:
return error(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( BasePageInitialState<Data> value)  initial,required TResult Function( BasePageLoadingState<Data> value)  loading,required TResult Function( BasePageDataState<Data> value)  data,required TResult Function( BasePageErrorState<Data> value)  error,}){
final _that = this;
switch (_that) {
case BasePageInitialState():
return initial(_that);case BasePageLoadingState():
return loading(_that);case BasePageDataState():
return data(_that);case BasePageErrorState():
return error(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( BasePageInitialState<Data> value)?  initial,TResult? Function( BasePageLoadingState<Data> value)?  loading,TResult? Function( BasePageDataState<Data> value)?  data,TResult? Function( BasePageErrorState<Data> value)?  error,}){
final _that = this;
switch (_that) {
case BasePageInitialState() when initial != null:
return initial(_that);case BasePageLoadingState() when loading != null:
return loading(_that);case BasePageDataState() when data != null:
return data(_that);case BasePageErrorState() when error != null:
return error(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( Data? data)?  initial,TResult Function( Data? data)?  loading,TResult Function( Data data)?  data,TResult Function( Object error,  Data? data)?  error,required TResult orElse(),}) {final _that = this;
switch (_that) {
case BasePageInitialState() when initial != null:
return initial(_that.data);case BasePageLoadingState() when loading != null:
return loading(_that.data);case BasePageDataState() when data != null:
return data(_that.data);case BasePageErrorState() when error != null:
return error(_that.error,_that.data);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( Data? data)  initial,required TResult Function( Data? data)  loading,required TResult Function( Data data)  data,required TResult Function( Object error,  Data? data)  error,}) {final _that = this;
switch (_that) {
case BasePageInitialState():
return initial(_that.data);case BasePageLoadingState():
return loading(_that.data);case BasePageDataState():
return data(_that.data);case BasePageErrorState():
return error(_that.error,_that.data);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( Data? data)?  initial,TResult? Function( Data? data)?  loading,TResult? Function( Data data)?  data,TResult? Function( Object error,  Data? data)?  error,}) {final _that = this;
switch (_that) {
case BasePageInitialState() when initial != null:
return initial(_that.data);case BasePageLoadingState() when loading != null:
return loading(_that.data);case BasePageDataState() when data != null:
return data(_that.data);case BasePageErrorState() when error != null:
return error(_that.error,_that.data);case _:
  return null;

}
}

}

/// @nodoc


class BasePageInitialState<Data extends Object> extends BasePageState<Data> {
  const BasePageInitialState({this.data}): super._();
  

@override final  Data? data;

/// Create a copy of BasePageState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$BasePageInitialStateCopyWith<Data, BasePageInitialState<Data>> get copyWith => _$BasePageInitialStateCopyWithImpl<Data, BasePageInitialState<Data>>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is BasePageInitialState<Data>&&const DeepCollectionEquality().equals(other.data, data));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(data));

@override
String toString() {
  return 'BasePageState<$Data>.initial(data: $data)';
}


}

/// @nodoc
abstract mixin class $BasePageInitialStateCopyWith<Data extends Object,$Res> implements $BasePageStateCopyWith<Data, $Res> {
  factory $BasePageInitialStateCopyWith(BasePageInitialState<Data> value, $Res Function(BasePageInitialState<Data>) _then) = _$BasePageInitialStateCopyWithImpl;
@override @useResult
$Res call({
 Data? data
});




}
/// @nodoc
class _$BasePageInitialStateCopyWithImpl<Data extends Object,$Res>
    implements $BasePageInitialStateCopyWith<Data, $Res> {
  _$BasePageInitialStateCopyWithImpl(this._self, this._then);

  final BasePageInitialState<Data> _self;
  final $Res Function(BasePageInitialState<Data>) _then;

/// Create a copy of BasePageState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? data = freezed,}) {
  return _then(BasePageInitialState<Data>(
data: freezed == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as Data?,
  ));
}


}

/// @nodoc


class BasePageLoadingState<Data extends Object> extends BasePageState<Data> {
  const BasePageLoadingState({this.data}): super._();
  

@override final  Data? data;

/// Create a copy of BasePageState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$BasePageLoadingStateCopyWith<Data, BasePageLoadingState<Data>> get copyWith => _$BasePageLoadingStateCopyWithImpl<Data, BasePageLoadingState<Data>>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is BasePageLoadingState<Data>&&const DeepCollectionEquality().equals(other.data, data));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(data));

@override
String toString() {
  return 'BasePageState<$Data>.loading(data: $data)';
}


}

/// @nodoc
abstract mixin class $BasePageLoadingStateCopyWith<Data extends Object,$Res> implements $BasePageStateCopyWith<Data, $Res> {
  factory $BasePageLoadingStateCopyWith(BasePageLoadingState<Data> value, $Res Function(BasePageLoadingState<Data>) _then) = _$BasePageLoadingStateCopyWithImpl;
@override @useResult
$Res call({
 Data? data
});




}
/// @nodoc
class _$BasePageLoadingStateCopyWithImpl<Data extends Object,$Res>
    implements $BasePageLoadingStateCopyWith<Data, $Res> {
  _$BasePageLoadingStateCopyWithImpl(this._self, this._then);

  final BasePageLoadingState<Data> _self;
  final $Res Function(BasePageLoadingState<Data>) _then;

/// Create a copy of BasePageState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? data = freezed,}) {
  return _then(BasePageLoadingState<Data>(
data: freezed == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as Data?,
  ));
}


}

/// @nodoc


class BasePageDataState<Data extends Object> extends BasePageState<Data> {
  const BasePageDataState({required this.data}): super._();
  

@override final  Data data;

/// Create a copy of BasePageState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$BasePageDataStateCopyWith<Data, BasePageDataState<Data>> get copyWith => _$BasePageDataStateCopyWithImpl<Data, BasePageDataState<Data>>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is BasePageDataState<Data>&&const DeepCollectionEquality().equals(other.data, data));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(data));

@override
String toString() {
  return 'BasePageState<$Data>.data(data: $data)';
}


}

/// @nodoc
abstract mixin class $BasePageDataStateCopyWith<Data extends Object,$Res> implements $BasePageStateCopyWith<Data, $Res> {
  factory $BasePageDataStateCopyWith(BasePageDataState<Data> value, $Res Function(BasePageDataState<Data>) _then) = _$BasePageDataStateCopyWithImpl;
@override @useResult
$Res call({
 Data data
});




}
/// @nodoc
class _$BasePageDataStateCopyWithImpl<Data extends Object,$Res>
    implements $BasePageDataStateCopyWith<Data, $Res> {
  _$BasePageDataStateCopyWithImpl(this._self, this._then);

  final BasePageDataState<Data> _self;
  final $Res Function(BasePageDataState<Data>) _then;

/// Create a copy of BasePageState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? data = null,}) {
  return _then(BasePageDataState<Data>(
data: null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as Data,
  ));
}


}

/// @nodoc


class BasePageErrorState<Data extends Object> extends BasePageState<Data> {
  const BasePageErrorState({required this.error, this.data}): super._();
  

 final  Object error;
@override final  Data? data;

/// Create a copy of BasePageState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$BasePageErrorStateCopyWith<Data, BasePageErrorState<Data>> get copyWith => _$BasePageErrorStateCopyWithImpl<Data, BasePageErrorState<Data>>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is BasePageErrorState<Data>&&const DeepCollectionEquality().equals(other.error, error)&&const DeepCollectionEquality().equals(other.data, data));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(error),const DeepCollectionEquality().hash(data));

@override
String toString() {
  return 'BasePageState<$Data>.error(error: $error, data: $data)';
}


}

/// @nodoc
abstract mixin class $BasePageErrorStateCopyWith<Data extends Object,$Res> implements $BasePageStateCopyWith<Data, $Res> {
  factory $BasePageErrorStateCopyWith(BasePageErrorState<Data> value, $Res Function(BasePageErrorState<Data>) _then) = _$BasePageErrorStateCopyWithImpl;
@override @useResult
$Res call({
 Object error, Data? data
});




}
/// @nodoc
class _$BasePageErrorStateCopyWithImpl<Data extends Object,$Res>
    implements $BasePageErrorStateCopyWith<Data, $Res> {
  _$BasePageErrorStateCopyWithImpl(this._self, this._then);

  final BasePageErrorState<Data> _self;
  final $Res Function(BasePageErrorState<Data>) _then;

/// Create a copy of BasePageState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? error = null,Object? data = freezed,}) {
  return _then(BasePageErrorState<Data>(
error: null == error ? _self.error : error ,data: freezed == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as Data?,
  ));
}


}

// dart format on
