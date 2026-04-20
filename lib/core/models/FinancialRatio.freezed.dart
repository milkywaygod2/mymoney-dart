// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'FinancialRatio.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$FinancialRatio {

 String get ratioCode; String get category; int get periodId; int get numerator; int get denominator; int get ratioValue; DateTime? get calculatedAt;
/// Create a copy of FinancialRatio
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FinancialRatioCopyWith<FinancialRatio> get copyWith => _$FinancialRatioCopyWithImpl<FinancialRatio>(this as FinancialRatio, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FinancialRatio&&(identical(other.ratioCode, ratioCode) || other.ratioCode == ratioCode)&&(identical(other.category, category) || other.category == category)&&(identical(other.periodId, periodId) || other.periodId == periodId)&&(identical(other.numerator, numerator) || other.numerator == numerator)&&(identical(other.denominator, denominator) || other.denominator == denominator)&&(identical(other.ratioValue, ratioValue) || other.ratioValue == ratioValue)&&(identical(other.calculatedAt, calculatedAt) || other.calculatedAt == calculatedAt));
}


@override
int get hashCode => Object.hash(runtimeType,ratioCode,category,periodId,numerator,denominator,ratioValue,calculatedAt);

@override
String toString() {
  return 'FinancialRatio(ratioCode: $ratioCode, category: $category, periodId: $periodId, numerator: $numerator, denominator: $denominator, ratioValue: $ratioValue, calculatedAt: $calculatedAt)';
}


}

/// @nodoc
abstract mixin class $FinancialRatioCopyWith<$Res>  {
  factory $FinancialRatioCopyWith(FinancialRatio value, $Res Function(FinancialRatio) _then) = _$FinancialRatioCopyWithImpl;
@useResult
$Res call({
 String ratioCode, String category, int periodId, int numerator, int denominator, int ratioValue, DateTime? calculatedAt
});




}
/// @nodoc
class _$FinancialRatioCopyWithImpl<$Res>
    implements $FinancialRatioCopyWith<$Res> {
  _$FinancialRatioCopyWithImpl(this._self, this._then);

  final FinancialRatio _self;
  final $Res Function(FinancialRatio) _then;

/// Create a copy of FinancialRatio
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? ratioCode = null,Object? category = null,Object? periodId = null,Object? numerator = null,Object? denominator = null,Object? ratioValue = null,Object? calculatedAt = freezed,}) {
  return _then(_self.copyWith(
ratioCode: null == ratioCode ? _self.ratioCode : ratioCode // ignore: cast_nullable_to_non_nullable
as String,category: null == category ? _self.category : category // ignore: cast_nullable_to_non_nullable
as String,periodId: null == periodId ? _self.periodId : periodId // ignore: cast_nullable_to_non_nullable
as int,numerator: null == numerator ? _self.numerator : numerator // ignore: cast_nullable_to_non_nullable
as int,denominator: null == denominator ? _self.denominator : denominator // ignore: cast_nullable_to_non_nullable
as int,ratioValue: null == ratioValue ? _self.ratioValue : ratioValue // ignore: cast_nullable_to_non_nullable
as int,calculatedAt: freezed == calculatedAt ? _self.calculatedAt : calculatedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}

}


/// Adds pattern-matching-related methods to [FinancialRatio].
extension FinancialRatioPatterns on FinancialRatio {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _FinancialRatio value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _FinancialRatio() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _FinancialRatio value)  $default,){
final _that = this;
switch (_that) {
case _FinancialRatio():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _FinancialRatio value)?  $default,){
final _that = this;
switch (_that) {
case _FinancialRatio() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String ratioCode,  String category,  int periodId,  int numerator,  int denominator,  int ratioValue,  DateTime? calculatedAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _FinancialRatio() when $default != null:
return $default(_that.ratioCode,_that.category,_that.periodId,_that.numerator,_that.denominator,_that.ratioValue,_that.calculatedAt);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String ratioCode,  String category,  int periodId,  int numerator,  int denominator,  int ratioValue,  DateTime? calculatedAt)  $default,) {final _that = this;
switch (_that) {
case _FinancialRatio():
return $default(_that.ratioCode,_that.category,_that.periodId,_that.numerator,_that.denominator,_that.ratioValue,_that.calculatedAt);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String ratioCode,  String category,  int periodId,  int numerator,  int denominator,  int ratioValue,  DateTime? calculatedAt)?  $default,) {final _that = this;
switch (_that) {
case _FinancialRatio() when $default != null:
return $default(_that.ratioCode,_that.category,_that.periodId,_that.numerator,_that.denominator,_that.ratioValue,_that.calculatedAt);case _:
  return null;

}
}

}

/// @nodoc


class _FinancialRatio implements FinancialRatio {
  const _FinancialRatio({required this.ratioCode, required this.category, required this.periodId, required this.numerator, required this.denominator, required this.ratioValue, this.calculatedAt});
  

@override final  String ratioCode;
@override final  String category;
@override final  int periodId;
@override final  int numerator;
@override final  int denominator;
@override final  int ratioValue;
@override final  DateTime? calculatedAt;

/// Create a copy of FinancialRatio
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$FinancialRatioCopyWith<_FinancialRatio> get copyWith => __$FinancialRatioCopyWithImpl<_FinancialRatio>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _FinancialRatio&&(identical(other.ratioCode, ratioCode) || other.ratioCode == ratioCode)&&(identical(other.category, category) || other.category == category)&&(identical(other.periodId, periodId) || other.periodId == periodId)&&(identical(other.numerator, numerator) || other.numerator == numerator)&&(identical(other.denominator, denominator) || other.denominator == denominator)&&(identical(other.ratioValue, ratioValue) || other.ratioValue == ratioValue)&&(identical(other.calculatedAt, calculatedAt) || other.calculatedAt == calculatedAt));
}


@override
int get hashCode => Object.hash(runtimeType,ratioCode,category,periodId,numerator,denominator,ratioValue,calculatedAt);

@override
String toString() {
  return 'FinancialRatio(ratioCode: $ratioCode, category: $category, periodId: $periodId, numerator: $numerator, denominator: $denominator, ratioValue: $ratioValue, calculatedAt: $calculatedAt)';
}


}

/// @nodoc
abstract mixin class _$FinancialRatioCopyWith<$Res> implements $FinancialRatioCopyWith<$Res> {
  factory _$FinancialRatioCopyWith(_FinancialRatio value, $Res Function(_FinancialRatio) _then) = __$FinancialRatioCopyWithImpl;
@override @useResult
$Res call({
 String ratioCode, String category, int periodId, int numerator, int denominator, int ratioValue, DateTime? calculatedAt
});




}
/// @nodoc
class __$FinancialRatioCopyWithImpl<$Res>
    implements _$FinancialRatioCopyWith<$Res> {
  __$FinancialRatioCopyWithImpl(this._self, this._then);

  final _FinancialRatio _self;
  final $Res Function(_FinancialRatio) _then;

/// Create a copy of FinancialRatio
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? ratioCode = null,Object? category = null,Object? periodId = null,Object? numerator = null,Object? denominator = null,Object? ratioValue = null,Object? calculatedAt = freezed,}) {
  return _then(_FinancialRatio(
ratioCode: null == ratioCode ? _self.ratioCode : ratioCode // ignore: cast_nullable_to_non_nullable
as String,category: null == category ? _self.category : category // ignore: cast_nullable_to_non_nullable
as String,periodId: null == periodId ? _self.periodId : periodId // ignore: cast_nullable_to_non_nullable
as int,numerator: null == numerator ? _self.numerator : numerator // ignore: cast_nullable_to_non_nullable
as int,denominator: null == denominator ? _self.denominator : denominator // ignore: cast_nullable_to_non_nullable
as int,ratioValue: null == ratioValue ? _self.ratioValue : ratioValue // ignore: cast_nullable_to_non_nullable
as int,calculatedAt: freezed == calculatedAt ? _self.calculatedAt : calculatedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}


}

// dart format on
