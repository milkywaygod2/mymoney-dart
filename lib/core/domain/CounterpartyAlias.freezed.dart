// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'CounterpartyAlias.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$CounterpartyAlias {

 int get id; CounterpartyId get counterpartyId;/// 별칭 텍스트 (예: "스타벅스", "STARBUCKS", "스타벅스강남점")
 String get alias;
/// Create a copy of CounterpartyAlias
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CounterpartyAliasCopyWith<CounterpartyAlias> get copyWith => _$CounterpartyAliasCopyWithImpl<CounterpartyAlias>(this as CounterpartyAlias, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CounterpartyAlias&&(identical(other.id, id) || other.id == id)&&(identical(other.counterpartyId, counterpartyId) || other.counterpartyId == counterpartyId)&&(identical(other.alias, alias) || other.alias == alias));
}


@override
int get hashCode => Object.hash(runtimeType,id,counterpartyId,alias);

@override
String toString() {
  return 'CounterpartyAlias(id: $id, counterpartyId: $counterpartyId, alias: $alias)';
}


}

/// @nodoc
abstract mixin class $CounterpartyAliasCopyWith<$Res>  {
  factory $CounterpartyAliasCopyWith(CounterpartyAlias value, $Res Function(CounterpartyAlias) _then) = _$CounterpartyAliasCopyWithImpl;
@useResult
$Res call({
 int id, CounterpartyId counterpartyId, String alias
});




}
/// @nodoc
class _$CounterpartyAliasCopyWithImpl<$Res>
    implements $CounterpartyAliasCopyWith<$Res> {
  _$CounterpartyAliasCopyWithImpl(this._self, this._then);

  final CounterpartyAlias _self;
  final $Res Function(CounterpartyAlias) _then;

/// Create a copy of CounterpartyAlias
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? counterpartyId = null,Object? alias = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,counterpartyId: null == counterpartyId ? _self.counterpartyId : counterpartyId // ignore: cast_nullable_to_non_nullable
as CounterpartyId,alias: null == alias ? _self.alias : alias // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [CounterpartyAlias].
extension CounterpartyAliasPatterns on CounterpartyAlias {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CounterpartyAlias value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CounterpartyAlias() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CounterpartyAlias value)  $default,){
final _that = this;
switch (_that) {
case _CounterpartyAlias():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CounterpartyAlias value)?  $default,){
final _that = this;
switch (_that) {
case _CounterpartyAlias() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id,  CounterpartyId counterpartyId,  String alias)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CounterpartyAlias() when $default != null:
return $default(_that.id,_that.counterpartyId,_that.alias);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id,  CounterpartyId counterpartyId,  String alias)  $default,) {final _that = this;
switch (_that) {
case _CounterpartyAlias():
return $default(_that.id,_that.counterpartyId,_that.alias);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id,  CounterpartyId counterpartyId,  String alias)?  $default,) {final _that = this;
switch (_that) {
case _CounterpartyAlias() when $default != null:
return $default(_that.id,_that.counterpartyId,_that.alias);case _:
  return null;

}
}

}

/// @nodoc


class _CounterpartyAlias implements CounterpartyAlias {
  const _CounterpartyAlias({required this.id, required this.counterpartyId, required this.alias});
  

@override final  int id;
@override final  CounterpartyId counterpartyId;
/// 별칭 텍스트 (예: "스타벅스", "STARBUCKS", "스타벅스강남점")
@override final  String alias;

/// Create a copy of CounterpartyAlias
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CounterpartyAliasCopyWith<_CounterpartyAlias> get copyWith => __$CounterpartyAliasCopyWithImpl<_CounterpartyAlias>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CounterpartyAlias&&(identical(other.id, id) || other.id == id)&&(identical(other.counterpartyId, counterpartyId) || other.counterpartyId == counterpartyId)&&(identical(other.alias, alias) || other.alias == alias));
}


@override
int get hashCode => Object.hash(runtimeType,id,counterpartyId,alias);

@override
String toString() {
  return 'CounterpartyAlias(id: $id, counterpartyId: $counterpartyId, alias: $alias)';
}


}

/// @nodoc
abstract mixin class _$CounterpartyAliasCopyWith<$Res> implements $CounterpartyAliasCopyWith<$Res> {
  factory _$CounterpartyAliasCopyWith(_CounterpartyAlias value, $Res Function(_CounterpartyAlias) _then) = __$CounterpartyAliasCopyWithImpl;
@override @useResult
$Res call({
 int id, CounterpartyId counterpartyId, String alias
});




}
/// @nodoc
class __$CounterpartyAliasCopyWithImpl<$Res>
    implements _$CounterpartyAliasCopyWith<$Res> {
  __$CounterpartyAliasCopyWithImpl(this._self, this._then);

  final _CounterpartyAlias _self;
  final $Res Function(_CounterpartyAlias) _then;

/// Create a copy of CounterpartyAlias
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? counterpartyId = null,Object? alias = null,}) {
  return _then(_CounterpartyAlias(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,counterpartyId: null == counterpartyId ? _self.counterpartyId : counterpartyId // ignore: cast_nullable_to_non_nullable
as CounterpartyId,alias: null == alias ? _self.alias : alias // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
