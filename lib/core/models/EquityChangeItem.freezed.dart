// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'EquityChangeItem.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$EquityChangeItem {

/// 변동 유형 (기초/순이익/OCI/배당/자사주/기타/기말)
 EquityChangeType get changeType;/// OCI 세부 항목 (changeType == ociChange일 때만 유효)
 OciCategory? get ociCategory;/// 자본금
 int get capitalStock;/// 자본잉여금
 int get capitalSurplus;/// 기타자본
 int get otherCapital;/// 기타포괄손익누계액 (AOCI)
 int get aoci;/// 이익잉여금
 int get retainedEarnings;
/// Create a copy of EquityChangeItem
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$EquityChangeItemCopyWith<EquityChangeItem> get copyWith => _$EquityChangeItemCopyWithImpl<EquityChangeItem>(this as EquityChangeItem, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is EquityChangeItem&&(identical(other.changeType, changeType) || other.changeType == changeType)&&(identical(other.ociCategory, ociCategory) || other.ociCategory == ociCategory)&&(identical(other.capitalStock, capitalStock) || other.capitalStock == capitalStock)&&(identical(other.capitalSurplus, capitalSurplus) || other.capitalSurplus == capitalSurplus)&&(identical(other.otherCapital, otherCapital) || other.otherCapital == otherCapital)&&(identical(other.aoci, aoci) || other.aoci == aoci)&&(identical(other.retainedEarnings, retainedEarnings) || other.retainedEarnings == retainedEarnings));
}


@override
int get hashCode => Object.hash(runtimeType,changeType,ociCategory,capitalStock,capitalSurplus,otherCapital,aoci,retainedEarnings);

@override
String toString() {
  return 'EquityChangeItem(changeType: $changeType, ociCategory: $ociCategory, capitalStock: $capitalStock, capitalSurplus: $capitalSurplus, otherCapital: $otherCapital, aoci: $aoci, retainedEarnings: $retainedEarnings)';
}


}

/// @nodoc
abstract mixin class $EquityChangeItemCopyWith<$Res>  {
  factory $EquityChangeItemCopyWith(EquityChangeItem value, $Res Function(EquityChangeItem) _then) = _$EquityChangeItemCopyWithImpl;
@useResult
$Res call({
 EquityChangeType changeType, OciCategory? ociCategory, int capitalStock, int capitalSurplus, int otherCapital, int aoci, int retainedEarnings
});




}
/// @nodoc
class _$EquityChangeItemCopyWithImpl<$Res>
    implements $EquityChangeItemCopyWith<$Res> {
  _$EquityChangeItemCopyWithImpl(this._self, this._then);

  final EquityChangeItem _self;
  final $Res Function(EquityChangeItem) _then;

/// Create a copy of EquityChangeItem
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? changeType = null,Object? ociCategory = freezed,Object? capitalStock = null,Object? capitalSurplus = null,Object? otherCapital = null,Object? aoci = null,Object? retainedEarnings = null,}) {
  return _then(_self.copyWith(
changeType: null == changeType ? _self.changeType : changeType // ignore: cast_nullable_to_non_nullable
as EquityChangeType,ociCategory: freezed == ociCategory ? _self.ociCategory : ociCategory // ignore: cast_nullable_to_non_nullable
as OciCategory?,capitalStock: null == capitalStock ? _self.capitalStock : capitalStock // ignore: cast_nullable_to_non_nullable
as int,capitalSurplus: null == capitalSurplus ? _self.capitalSurplus : capitalSurplus // ignore: cast_nullable_to_non_nullable
as int,otherCapital: null == otherCapital ? _self.otherCapital : otherCapital // ignore: cast_nullable_to_non_nullable
as int,aoci: null == aoci ? _self.aoci : aoci // ignore: cast_nullable_to_non_nullable
as int,retainedEarnings: null == retainedEarnings ? _self.retainedEarnings : retainedEarnings // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [EquityChangeItem].
extension EquityChangeItemPatterns on EquityChangeItem {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _EquityChangeItem value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _EquityChangeItem() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _EquityChangeItem value)  $default,){
final _that = this;
switch (_that) {
case _EquityChangeItem():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _EquityChangeItem value)?  $default,){
final _that = this;
switch (_that) {
case _EquityChangeItem() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( EquityChangeType changeType,  OciCategory? ociCategory,  int capitalStock,  int capitalSurplus,  int otherCapital,  int aoci,  int retainedEarnings)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _EquityChangeItem() when $default != null:
return $default(_that.changeType,_that.ociCategory,_that.capitalStock,_that.capitalSurplus,_that.otherCapital,_that.aoci,_that.retainedEarnings);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( EquityChangeType changeType,  OciCategory? ociCategory,  int capitalStock,  int capitalSurplus,  int otherCapital,  int aoci,  int retainedEarnings)  $default,) {final _that = this;
switch (_that) {
case _EquityChangeItem():
return $default(_that.changeType,_that.ociCategory,_that.capitalStock,_that.capitalSurplus,_that.otherCapital,_that.aoci,_that.retainedEarnings);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( EquityChangeType changeType,  OciCategory? ociCategory,  int capitalStock,  int capitalSurplus,  int otherCapital,  int aoci,  int retainedEarnings)?  $default,) {final _that = this;
switch (_that) {
case _EquityChangeItem() when $default != null:
return $default(_that.changeType,_that.ociCategory,_that.capitalStock,_that.capitalSurplus,_that.otherCapital,_that.aoci,_that.retainedEarnings);case _:
  return null;

}
}

}

/// @nodoc


class _EquityChangeItem extends EquityChangeItem {
  const _EquityChangeItem({required this.changeType, this.ociCategory, required this.capitalStock, required this.capitalSurplus, required this.otherCapital, required this.aoci, required this.retainedEarnings}): super._();
  

/// 변동 유형 (기초/순이익/OCI/배당/자사주/기타/기말)
@override final  EquityChangeType changeType;
/// OCI 세부 항목 (changeType == ociChange일 때만 유효)
@override final  OciCategory? ociCategory;
/// 자본금
@override final  int capitalStock;
/// 자본잉여금
@override final  int capitalSurplus;
/// 기타자본
@override final  int otherCapital;
/// 기타포괄손익누계액 (AOCI)
@override final  int aoci;
/// 이익잉여금
@override final  int retainedEarnings;

/// Create a copy of EquityChangeItem
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$EquityChangeItemCopyWith<_EquityChangeItem> get copyWith => __$EquityChangeItemCopyWithImpl<_EquityChangeItem>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _EquityChangeItem&&(identical(other.changeType, changeType) || other.changeType == changeType)&&(identical(other.ociCategory, ociCategory) || other.ociCategory == ociCategory)&&(identical(other.capitalStock, capitalStock) || other.capitalStock == capitalStock)&&(identical(other.capitalSurplus, capitalSurplus) || other.capitalSurplus == capitalSurplus)&&(identical(other.otherCapital, otherCapital) || other.otherCapital == otherCapital)&&(identical(other.aoci, aoci) || other.aoci == aoci)&&(identical(other.retainedEarnings, retainedEarnings) || other.retainedEarnings == retainedEarnings));
}


@override
int get hashCode => Object.hash(runtimeType,changeType,ociCategory,capitalStock,capitalSurplus,otherCapital,aoci,retainedEarnings);

@override
String toString() {
  return 'EquityChangeItem(changeType: $changeType, ociCategory: $ociCategory, capitalStock: $capitalStock, capitalSurplus: $capitalSurplus, otherCapital: $otherCapital, aoci: $aoci, retainedEarnings: $retainedEarnings)';
}


}

/// @nodoc
abstract mixin class _$EquityChangeItemCopyWith<$Res> implements $EquityChangeItemCopyWith<$Res> {
  factory _$EquityChangeItemCopyWith(_EquityChangeItem value, $Res Function(_EquityChangeItem) _then) = __$EquityChangeItemCopyWithImpl;
@override @useResult
$Res call({
 EquityChangeType changeType, OciCategory? ociCategory, int capitalStock, int capitalSurplus, int otherCapital, int aoci, int retainedEarnings
});




}
/// @nodoc
class __$EquityChangeItemCopyWithImpl<$Res>
    implements _$EquityChangeItemCopyWith<$Res> {
  __$EquityChangeItemCopyWithImpl(this._self, this._then);

  final _EquityChangeItem _self;
  final $Res Function(_EquityChangeItem) _then;

/// Create a copy of EquityChangeItem
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? changeType = null,Object? ociCategory = freezed,Object? capitalStock = null,Object? capitalSurplus = null,Object? otherCapital = null,Object? aoci = null,Object? retainedEarnings = null,}) {
  return _then(_EquityChangeItem(
changeType: null == changeType ? _self.changeType : changeType // ignore: cast_nullable_to_non_nullable
as EquityChangeType,ociCategory: freezed == ociCategory ? _self.ociCategory : ociCategory // ignore: cast_nullable_to_non_nullable
as OciCategory?,capitalStock: null == capitalStock ? _self.capitalStock : capitalStock // ignore: cast_nullable_to_non_nullable
as int,capitalSurplus: null == capitalSurplus ? _self.capitalSurplus : capitalSurplus // ignore: cast_nullable_to_non_nullable
as int,otherCapital: null == otherCapital ? _self.otherCapital : otherCapital // ignore: cast_nullable_to_non_nullable
as int,aoci: null == aoci ? _self.aoci : aoci // ignore: cast_nullable_to_non_nullable
as int,retainedEarnings: null == retainedEarnings ? _self.retainedEarnings : retainedEarnings // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on
