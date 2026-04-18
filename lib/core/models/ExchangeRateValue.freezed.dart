// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'ExchangeRateValue.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$ExchangeRateValue {

 CurrencyCode get fromCurrency; CurrencyCode get toCurrency; int get rate;
/// Create a copy of ExchangeRateValue
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ExchangeRateValueCopyWith<ExchangeRateValue> get copyWith => _$ExchangeRateValueCopyWithImpl<ExchangeRateValue>(this as ExchangeRateValue, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ExchangeRateValue&&(identical(other.fromCurrency, fromCurrency) || other.fromCurrency == fromCurrency)&&(identical(other.toCurrency, toCurrency) || other.toCurrency == toCurrency)&&(identical(other.rate, rate) || other.rate == rate));
}


@override
int get hashCode => Object.hash(runtimeType,fromCurrency,toCurrency,rate);

@override
String toString() {
  return 'ExchangeRateValue(fromCurrency: $fromCurrency, toCurrency: $toCurrency, rate: $rate)';
}


}

/// @nodoc
abstract mixin class $ExchangeRateValueCopyWith<$Res>  {
  factory $ExchangeRateValueCopyWith(ExchangeRateValue value, $Res Function(ExchangeRateValue) _then) = _$ExchangeRateValueCopyWithImpl;
@useResult
$Res call({
 CurrencyCode fromCurrency, CurrencyCode toCurrency, int rate
});




}
/// @nodoc
class _$ExchangeRateValueCopyWithImpl<$Res>
    implements $ExchangeRateValueCopyWith<$Res> {
  _$ExchangeRateValueCopyWithImpl(this._self, this._then);

  final ExchangeRateValue _self;
  final $Res Function(ExchangeRateValue) _then;

/// Create a copy of ExchangeRateValue
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? fromCurrency = null,Object? toCurrency = null,Object? rate = null,}) {
  return _then(_self.copyWith(
fromCurrency: null == fromCurrency ? _self.fromCurrency : fromCurrency // ignore: cast_nullable_to_non_nullable
as CurrencyCode,toCurrency: null == toCurrency ? _self.toCurrency : toCurrency // ignore: cast_nullable_to_non_nullable
as CurrencyCode,rate: null == rate ? _self.rate : rate // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [ExchangeRateValue].
extension ExchangeRateValuePatterns on ExchangeRateValue {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ExchangeRateValue value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ExchangeRateValue() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ExchangeRateValue value)  $default,){
final _that = this;
switch (_that) {
case _ExchangeRateValue():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ExchangeRateValue value)?  $default,){
final _that = this;
switch (_that) {
case _ExchangeRateValue() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( CurrencyCode fromCurrency,  CurrencyCode toCurrency,  int rate)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ExchangeRateValue() when $default != null:
return $default(_that.fromCurrency,_that.toCurrency,_that.rate);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( CurrencyCode fromCurrency,  CurrencyCode toCurrency,  int rate)  $default,) {final _that = this;
switch (_that) {
case _ExchangeRateValue():
return $default(_that.fromCurrency,_that.toCurrency,_that.rate);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( CurrencyCode fromCurrency,  CurrencyCode toCurrency,  int rate)?  $default,) {final _that = this;
switch (_that) {
case _ExchangeRateValue() when $default != null:
return $default(_that.fromCurrency,_that.toCurrency,_that.rate);case _:
  return null;

}
}

}

/// @nodoc


class _ExchangeRateValue extends ExchangeRateValue {
  const _ExchangeRateValue({required this.fromCurrency, required this.toCurrency, required this.rate}): super._();
  

@override final  CurrencyCode fromCurrency;
@override final  CurrencyCode toCurrency;
@override final  int rate;

/// Create a copy of ExchangeRateValue
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ExchangeRateValueCopyWith<_ExchangeRateValue> get copyWith => __$ExchangeRateValueCopyWithImpl<_ExchangeRateValue>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ExchangeRateValue&&(identical(other.fromCurrency, fromCurrency) || other.fromCurrency == fromCurrency)&&(identical(other.toCurrency, toCurrency) || other.toCurrency == toCurrency)&&(identical(other.rate, rate) || other.rate == rate));
}


@override
int get hashCode => Object.hash(runtimeType,fromCurrency,toCurrency,rate);

@override
String toString() {
  return 'ExchangeRateValue(fromCurrency: $fromCurrency, toCurrency: $toCurrency, rate: $rate)';
}


}

/// @nodoc
abstract mixin class _$ExchangeRateValueCopyWith<$Res> implements $ExchangeRateValueCopyWith<$Res> {
  factory _$ExchangeRateValueCopyWith(_ExchangeRateValue value, $Res Function(_ExchangeRateValue) _then) = __$ExchangeRateValueCopyWithImpl;
@override @useResult
$Res call({
 CurrencyCode fromCurrency, CurrencyCode toCurrency, int rate
});




}
/// @nodoc
class __$ExchangeRateValueCopyWithImpl<$Res>
    implements _$ExchangeRateValueCopyWith<$Res> {
  __$ExchangeRateValueCopyWithImpl(this._self, this._then);

  final _ExchangeRateValue _self;
  final $Res Function(_ExchangeRateValue) _then;

/// Create a copy of ExchangeRateValue
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? fromCurrency = null,Object? toCurrency = null,Object? rate = null,}) {
  return _then(_ExchangeRateValue(
fromCurrency: null == fromCurrency ? _self.fromCurrency : fromCurrency // ignore: cast_nullable_to_non_nullable
as CurrencyCode,toCurrency: null == toCurrency ? _self.toCurrency : toCurrency // ignore: cast_nullable_to_non_nullable
as CurrencyCode,rate: null == rate ? _self.rate : rate // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on
