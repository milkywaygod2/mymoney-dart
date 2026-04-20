// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'CashFlowLineItem.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$CashFlowLineItem {

/// CashFlowCodes.code (예: "C100000")
 String get code;/// 항목명 (예: "Cash flows from operating activities")
 String get name;/// 금액 (최소 단위 int)
 int get amount;/// 계층 깊이 (1~4)
 int get level;/// 계정 인덱스 유형
 CfAccountIndex get indexType;
/// Create a copy of CashFlowLineItem
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CashFlowLineItemCopyWith<CashFlowLineItem> get copyWith => _$CashFlowLineItemCopyWithImpl<CashFlowLineItem>(this as CashFlowLineItem, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CashFlowLineItem&&(identical(other.code, code) || other.code == code)&&(identical(other.name, name) || other.name == name)&&(identical(other.amount, amount) || other.amount == amount)&&(identical(other.level, level) || other.level == level)&&(identical(other.indexType, indexType) || other.indexType == indexType));
}


@override
int get hashCode => Object.hash(runtimeType,code,name,amount,level,indexType);

@override
String toString() {
  return 'CashFlowLineItem(code: $code, name: $name, amount: $amount, level: $level, indexType: $indexType)';
}


}

/// @nodoc
abstract mixin class $CashFlowLineItemCopyWith<$Res>  {
  factory $CashFlowLineItemCopyWith(CashFlowLineItem value, $Res Function(CashFlowLineItem) _then) = _$CashFlowLineItemCopyWithImpl;
@useResult
$Res call({
 String code, String name, int amount, int level, CfAccountIndex indexType
});




}
/// @nodoc
class _$CashFlowLineItemCopyWithImpl<$Res>
    implements $CashFlowLineItemCopyWith<$Res> {
  _$CashFlowLineItemCopyWithImpl(this._self, this._then);

  final CashFlowLineItem _self;
  final $Res Function(CashFlowLineItem) _then;

/// Create a copy of CashFlowLineItem
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? code = null,Object? name = null,Object? amount = null,Object? level = null,Object? indexType = null,}) {
  return _then(_self.copyWith(
code: null == code ? _self.code : code // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,amount: null == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
as int,level: null == level ? _self.level : level // ignore: cast_nullable_to_non_nullable
as int,indexType: null == indexType ? _self.indexType : indexType // ignore: cast_nullable_to_non_nullable
as CfAccountIndex,
  ));
}

}


/// Adds pattern-matching-related methods to [CashFlowLineItem].
extension CashFlowLineItemPatterns on CashFlowLineItem {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CashFlowLineItem value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CashFlowLineItem() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CashFlowLineItem value)  $default,){
final _that = this;
switch (_that) {
case _CashFlowLineItem():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CashFlowLineItem value)?  $default,){
final _that = this;
switch (_that) {
case _CashFlowLineItem() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String code,  String name,  int amount,  int level,  CfAccountIndex indexType)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CashFlowLineItem() when $default != null:
return $default(_that.code,_that.name,_that.amount,_that.level,_that.indexType);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String code,  String name,  int amount,  int level,  CfAccountIndex indexType)  $default,) {final _that = this;
switch (_that) {
case _CashFlowLineItem():
return $default(_that.code,_that.name,_that.amount,_that.level,_that.indexType);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String code,  String name,  int amount,  int level,  CfAccountIndex indexType)?  $default,) {final _that = this;
switch (_that) {
case _CashFlowLineItem() when $default != null:
return $default(_that.code,_that.name,_that.amount,_that.level,_that.indexType);case _:
  return null;

}
}

}

/// @nodoc


class _CashFlowLineItem extends CashFlowLineItem {
  const _CashFlowLineItem({required this.code, required this.name, required this.amount, required this.level, required this.indexType}): super._();
  

/// CashFlowCodes.code (예: "C100000")
@override final  String code;
/// 항목명 (예: "Cash flows from operating activities")
@override final  String name;
/// 금액 (최소 단위 int)
@override final  int amount;
/// 계층 깊이 (1~4)
@override final  int level;
/// 계정 인덱스 유형
@override final  CfAccountIndex indexType;

/// Create a copy of CashFlowLineItem
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CashFlowLineItemCopyWith<_CashFlowLineItem> get copyWith => __$CashFlowLineItemCopyWithImpl<_CashFlowLineItem>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CashFlowLineItem&&(identical(other.code, code) || other.code == code)&&(identical(other.name, name) || other.name == name)&&(identical(other.amount, amount) || other.amount == amount)&&(identical(other.level, level) || other.level == level)&&(identical(other.indexType, indexType) || other.indexType == indexType));
}


@override
int get hashCode => Object.hash(runtimeType,code,name,amount,level,indexType);

@override
String toString() {
  return 'CashFlowLineItem(code: $code, name: $name, amount: $amount, level: $level, indexType: $indexType)';
}


}

/// @nodoc
abstract mixin class _$CashFlowLineItemCopyWith<$Res> implements $CashFlowLineItemCopyWith<$Res> {
  factory _$CashFlowLineItemCopyWith(_CashFlowLineItem value, $Res Function(_CashFlowLineItem) _then) = __$CashFlowLineItemCopyWithImpl;
@override @useResult
$Res call({
 String code, String name, int amount, int level, CfAccountIndex indexType
});




}
/// @nodoc
class __$CashFlowLineItemCopyWithImpl<$Res>
    implements _$CashFlowLineItemCopyWith<$Res> {
  __$CashFlowLineItemCopyWithImpl(this._self, this._then);

  final _CashFlowLineItem _self;
  final $Res Function(_CashFlowLineItem) _then;

/// Create a copy of CashFlowLineItem
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? code = null,Object? name = null,Object? amount = null,Object? level = null,Object? indexType = null,}) {
  return _then(_CashFlowLineItem(
code: null == code ? _self.code : code // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,amount: null == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
as int,level: null == level ? _self.level : level // ignore: cast_nullable_to_non_nullable
as int,indexType: null == indexType ? _self.indexType : indexType // ignore: cast_nullable_to_non_nullable
as CfAccountIndex,
  ));
}


}

// dart format on
