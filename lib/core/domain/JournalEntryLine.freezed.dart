// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'JournalEntryLine.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$JournalEntryLine {

 JournalEntryLineId get id; AccountId get accountId; EntryType get entryType;/// 거래원화 금액 (최소 단위 int, 항상 양수)
 int get originalAmount;/// 거래원화 — 실제 거래에 사용된 화폐 (ISO 4217)
 CurrencyCode get originalCurrency;/// 거래시점 기준통화 환율 (배율 1,000,000, 불변)
 int get exchangeRateAtTrade;/// 기준통화 — 환율 정산의 기축통화
 CurrencyCode get baseCurrency;/// 기준통화 환산액 (파생값, 거래시점 기준)
 int get baseAmount;/// T2 활동구분 재정의 (null = Account 기본값 사용)
 DimensionValueId? get activityTypeOverride;/// T2 소유자 재정의 (null = Account 기본 소유자 사용)
 OwnerId? get ownerIdOverride;/// T2 소득유형 재정의 (null = Account 기본값 사용)
 DimensionValueId? get incomeTypeOverride;/// T2 손익금구분 (기본: 미판정)
 Deductibility get deductibility;/// 실질 수혜자 (세무 실질과세 원칙 + 통계)
 OwnerId? get beneficiaryId;/// 세무 분류 (확장용)
 String? get taxClassification;/// 적요 메모
 String? get memo;
/// Create a copy of JournalEntryLine
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$JournalEntryLineCopyWith<JournalEntryLine> get copyWith => _$JournalEntryLineCopyWithImpl<JournalEntryLine>(this as JournalEntryLine, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is JournalEntryLine&&(identical(other.id, id) || other.id == id)&&(identical(other.accountId, accountId) || other.accountId == accountId)&&(identical(other.entryType, entryType) || other.entryType == entryType)&&(identical(other.originalAmount, originalAmount) || other.originalAmount == originalAmount)&&(identical(other.originalCurrency, originalCurrency) || other.originalCurrency == originalCurrency)&&(identical(other.exchangeRateAtTrade, exchangeRateAtTrade) || other.exchangeRateAtTrade == exchangeRateAtTrade)&&(identical(other.baseCurrency, baseCurrency) || other.baseCurrency == baseCurrency)&&(identical(other.baseAmount, baseAmount) || other.baseAmount == baseAmount)&&(identical(other.activityTypeOverride, activityTypeOverride) || other.activityTypeOverride == activityTypeOverride)&&(identical(other.ownerIdOverride, ownerIdOverride) || other.ownerIdOverride == ownerIdOverride)&&(identical(other.incomeTypeOverride, incomeTypeOverride) || other.incomeTypeOverride == incomeTypeOverride)&&(identical(other.deductibility, deductibility) || other.deductibility == deductibility)&&(identical(other.beneficiaryId, beneficiaryId) || other.beneficiaryId == beneficiaryId)&&(identical(other.taxClassification, taxClassification) || other.taxClassification == taxClassification)&&(identical(other.memo, memo) || other.memo == memo));
}


@override
int get hashCode => Object.hash(runtimeType,id,accountId,entryType,originalAmount,originalCurrency,exchangeRateAtTrade,baseCurrency,baseAmount,activityTypeOverride,ownerIdOverride,incomeTypeOverride,deductibility,beneficiaryId,taxClassification,memo);

@override
String toString() {
  return 'JournalEntryLine(id: $id, accountId: $accountId, entryType: $entryType, originalAmount: $originalAmount, originalCurrency: $originalCurrency, exchangeRateAtTrade: $exchangeRateAtTrade, baseCurrency: $baseCurrency, baseAmount: $baseAmount, activityTypeOverride: $activityTypeOverride, ownerIdOverride: $ownerIdOverride, incomeTypeOverride: $incomeTypeOverride, deductibility: $deductibility, beneficiaryId: $beneficiaryId, taxClassification: $taxClassification, memo: $memo)';
}


}

/// @nodoc
abstract mixin class $JournalEntryLineCopyWith<$Res>  {
  factory $JournalEntryLineCopyWith(JournalEntryLine value, $Res Function(JournalEntryLine) _then) = _$JournalEntryLineCopyWithImpl;
@useResult
$Res call({
 JournalEntryLineId id, AccountId accountId, EntryType entryType, int originalAmount, CurrencyCode originalCurrency, int exchangeRateAtTrade, CurrencyCode baseCurrency, int baseAmount, DimensionValueId? activityTypeOverride, OwnerId? ownerIdOverride, DimensionValueId? incomeTypeOverride, Deductibility deductibility, OwnerId? beneficiaryId, String? taxClassification, String? memo
});




}
/// @nodoc
class _$JournalEntryLineCopyWithImpl<$Res>
    implements $JournalEntryLineCopyWith<$Res> {
  _$JournalEntryLineCopyWithImpl(this._self, this._then);

  final JournalEntryLine _self;
  final $Res Function(JournalEntryLine) _then;

/// Create a copy of JournalEntryLine
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? accountId = null,Object? entryType = null,Object? originalAmount = null,Object? originalCurrency = null,Object? exchangeRateAtTrade = null,Object? baseCurrency = null,Object? baseAmount = null,Object? activityTypeOverride = freezed,Object? ownerIdOverride = freezed,Object? incomeTypeOverride = freezed,Object? deductibility = null,Object? beneficiaryId = freezed,Object? taxClassification = freezed,Object? memo = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as JournalEntryLineId,accountId: null == accountId ? _self.accountId : accountId // ignore: cast_nullable_to_non_nullable
as AccountId,entryType: null == entryType ? _self.entryType : entryType // ignore: cast_nullable_to_non_nullable
as EntryType,originalAmount: null == originalAmount ? _self.originalAmount : originalAmount // ignore: cast_nullable_to_non_nullable
as int,originalCurrency: null == originalCurrency ? _self.originalCurrency : originalCurrency // ignore: cast_nullable_to_non_nullable
as CurrencyCode,exchangeRateAtTrade: null == exchangeRateAtTrade ? _self.exchangeRateAtTrade : exchangeRateAtTrade // ignore: cast_nullable_to_non_nullable
as int,baseCurrency: null == baseCurrency ? _self.baseCurrency : baseCurrency // ignore: cast_nullable_to_non_nullable
as CurrencyCode,baseAmount: null == baseAmount ? _self.baseAmount : baseAmount // ignore: cast_nullable_to_non_nullable
as int,activityTypeOverride: freezed == activityTypeOverride ? _self.activityTypeOverride : activityTypeOverride // ignore: cast_nullable_to_non_nullable
as DimensionValueId?,ownerIdOverride: freezed == ownerIdOverride ? _self.ownerIdOverride : ownerIdOverride // ignore: cast_nullable_to_non_nullable
as OwnerId?,incomeTypeOverride: freezed == incomeTypeOverride ? _self.incomeTypeOverride : incomeTypeOverride // ignore: cast_nullable_to_non_nullable
as DimensionValueId?,deductibility: null == deductibility ? _self.deductibility : deductibility // ignore: cast_nullable_to_non_nullable
as Deductibility,beneficiaryId: freezed == beneficiaryId ? _self.beneficiaryId : beneficiaryId // ignore: cast_nullable_to_non_nullable
as OwnerId?,taxClassification: freezed == taxClassification ? _self.taxClassification : taxClassification // ignore: cast_nullable_to_non_nullable
as String?,memo: freezed == memo ? _self.memo : memo // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [JournalEntryLine].
extension JournalEntryLinePatterns on JournalEntryLine {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _JournalEntryLine value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _JournalEntryLine() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _JournalEntryLine value)  $default,){
final _that = this;
switch (_that) {
case _JournalEntryLine():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _JournalEntryLine value)?  $default,){
final _that = this;
switch (_that) {
case _JournalEntryLine() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( JournalEntryLineId id,  AccountId accountId,  EntryType entryType,  int originalAmount,  CurrencyCode originalCurrency,  int exchangeRateAtTrade,  CurrencyCode baseCurrency,  int baseAmount,  DimensionValueId? activityTypeOverride,  OwnerId? ownerIdOverride,  DimensionValueId? incomeTypeOverride,  Deductibility deductibility,  OwnerId? beneficiaryId,  String? taxClassification,  String? memo)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _JournalEntryLine() when $default != null:
return $default(_that.id,_that.accountId,_that.entryType,_that.originalAmount,_that.originalCurrency,_that.exchangeRateAtTrade,_that.baseCurrency,_that.baseAmount,_that.activityTypeOverride,_that.ownerIdOverride,_that.incomeTypeOverride,_that.deductibility,_that.beneficiaryId,_that.taxClassification,_that.memo);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( JournalEntryLineId id,  AccountId accountId,  EntryType entryType,  int originalAmount,  CurrencyCode originalCurrency,  int exchangeRateAtTrade,  CurrencyCode baseCurrency,  int baseAmount,  DimensionValueId? activityTypeOverride,  OwnerId? ownerIdOverride,  DimensionValueId? incomeTypeOverride,  Deductibility deductibility,  OwnerId? beneficiaryId,  String? taxClassification,  String? memo)  $default,) {final _that = this;
switch (_that) {
case _JournalEntryLine():
return $default(_that.id,_that.accountId,_that.entryType,_that.originalAmount,_that.originalCurrency,_that.exchangeRateAtTrade,_that.baseCurrency,_that.baseAmount,_that.activityTypeOverride,_that.ownerIdOverride,_that.incomeTypeOverride,_that.deductibility,_that.beneficiaryId,_that.taxClassification,_that.memo);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( JournalEntryLineId id,  AccountId accountId,  EntryType entryType,  int originalAmount,  CurrencyCode originalCurrency,  int exchangeRateAtTrade,  CurrencyCode baseCurrency,  int baseAmount,  DimensionValueId? activityTypeOverride,  OwnerId? ownerIdOverride,  DimensionValueId? incomeTypeOverride,  Deductibility deductibility,  OwnerId? beneficiaryId,  String? taxClassification,  String? memo)?  $default,) {final _that = this;
switch (_that) {
case _JournalEntryLine() when $default != null:
return $default(_that.id,_that.accountId,_that.entryType,_that.originalAmount,_that.originalCurrency,_that.exchangeRateAtTrade,_that.baseCurrency,_that.baseAmount,_that.activityTypeOverride,_that.ownerIdOverride,_that.incomeTypeOverride,_that.deductibility,_that.beneficiaryId,_that.taxClassification,_that.memo);case _:
  return null;

}
}

}

/// @nodoc


class _JournalEntryLine extends JournalEntryLine {
  const _JournalEntryLine({required this.id, required this.accountId, required this.entryType, required this.originalAmount, required this.originalCurrency, required this.exchangeRateAtTrade, required this.baseCurrency, required this.baseAmount, this.activityTypeOverride, this.ownerIdOverride, this.incomeTypeOverride, this.deductibility = Deductibility.undetermined, this.beneficiaryId, this.taxClassification, this.memo}): super._();
  

@override final  JournalEntryLineId id;
@override final  AccountId accountId;
@override final  EntryType entryType;
/// 거래원화 금액 (최소 단위 int, 항상 양수)
@override final  int originalAmount;
/// 거래원화 — 실제 거래에 사용된 화폐 (ISO 4217)
@override final  CurrencyCode originalCurrency;
/// 거래시점 기준통화 환율 (배율 1,000,000, 불변)
@override final  int exchangeRateAtTrade;
/// 기준통화 — 환율 정산의 기축통화
@override final  CurrencyCode baseCurrency;
/// 기준통화 환산액 (파생값, 거래시점 기준)
@override final  int baseAmount;
/// T2 활동구분 재정의 (null = Account 기본값 사용)
@override final  DimensionValueId? activityTypeOverride;
/// T2 소유자 재정의 (null = Account 기본 소유자 사용)
@override final  OwnerId? ownerIdOverride;
/// T2 소득유형 재정의 (null = Account 기본값 사용)
@override final  DimensionValueId? incomeTypeOverride;
/// T2 손익금구분 (기본: 미판정)
@override@JsonKey() final  Deductibility deductibility;
/// 실질 수혜자 (세무 실질과세 원칙 + 통계)
@override final  OwnerId? beneficiaryId;
/// 세무 분류 (확장용)
@override final  String? taxClassification;
/// 적요 메모
@override final  String? memo;

/// Create a copy of JournalEntryLine
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$JournalEntryLineCopyWith<_JournalEntryLine> get copyWith => __$JournalEntryLineCopyWithImpl<_JournalEntryLine>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _JournalEntryLine&&(identical(other.id, id) || other.id == id)&&(identical(other.accountId, accountId) || other.accountId == accountId)&&(identical(other.entryType, entryType) || other.entryType == entryType)&&(identical(other.originalAmount, originalAmount) || other.originalAmount == originalAmount)&&(identical(other.originalCurrency, originalCurrency) || other.originalCurrency == originalCurrency)&&(identical(other.exchangeRateAtTrade, exchangeRateAtTrade) || other.exchangeRateAtTrade == exchangeRateAtTrade)&&(identical(other.baseCurrency, baseCurrency) || other.baseCurrency == baseCurrency)&&(identical(other.baseAmount, baseAmount) || other.baseAmount == baseAmount)&&(identical(other.activityTypeOverride, activityTypeOverride) || other.activityTypeOverride == activityTypeOverride)&&(identical(other.ownerIdOverride, ownerIdOverride) || other.ownerIdOverride == ownerIdOverride)&&(identical(other.incomeTypeOverride, incomeTypeOverride) || other.incomeTypeOverride == incomeTypeOverride)&&(identical(other.deductibility, deductibility) || other.deductibility == deductibility)&&(identical(other.beneficiaryId, beneficiaryId) || other.beneficiaryId == beneficiaryId)&&(identical(other.taxClassification, taxClassification) || other.taxClassification == taxClassification)&&(identical(other.memo, memo) || other.memo == memo));
}


@override
int get hashCode => Object.hash(runtimeType,id,accountId,entryType,originalAmount,originalCurrency,exchangeRateAtTrade,baseCurrency,baseAmount,activityTypeOverride,ownerIdOverride,incomeTypeOverride,deductibility,beneficiaryId,taxClassification,memo);

@override
String toString() {
  return 'JournalEntryLine(id: $id, accountId: $accountId, entryType: $entryType, originalAmount: $originalAmount, originalCurrency: $originalCurrency, exchangeRateAtTrade: $exchangeRateAtTrade, baseCurrency: $baseCurrency, baseAmount: $baseAmount, activityTypeOverride: $activityTypeOverride, ownerIdOverride: $ownerIdOverride, incomeTypeOverride: $incomeTypeOverride, deductibility: $deductibility, beneficiaryId: $beneficiaryId, taxClassification: $taxClassification, memo: $memo)';
}


}

/// @nodoc
abstract mixin class _$JournalEntryLineCopyWith<$Res> implements $JournalEntryLineCopyWith<$Res> {
  factory _$JournalEntryLineCopyWith(_JournalEntryLine value, $Res Function(_JournalEntryLine) _then) = __$JournalEntryLineCopyWithImpl;
@override @useResult
$Res call({
 JournalEntryLineId id, AccountId accountId, EntryType entryType, int originalAmount, CurrencyCode originalCurrency, int exchangeRateAtTrade, CurrencyCode baseCurrency, int baseAmount, DimensionValueId? activityTypeOverride, OwnerId? ownerIdOverride, DimensionValueId? incomeTypeOverride, Deductibility deductibility, OwnerId? beneficiaryId, String? taxClassification, String? memo
});




}
/// @nodoc
class __$JournalEntryLineCopyWithImpl<$Res>
    implements _$JournalEntryLineCopyWith<$Res> {
  __$JournalEntryLineCopyWithImpl(this._self, this._then);

  final _JournalEntryLine _self;
  final $Res Function(_JournalEntryLine) _then;

/// Create a copy of JournalEntryLine
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? accountId = null,Object? entryType = null,Object? originalAmount = null,Object? originalCurrency = null,Object? exchangeRateAtTrade = null,Object? baseCurrency = null,Object? baseAmount = null,Object? activityTypeOverride = freezed,Object? ownerIdOverride = freezed,Object? incomeTypeOverride = freezed,Object? deductibility = null,Object? beneficiaryId = freezed,Object? taxClassification = freezed,Object? memo = freezed,}) {
  return _then(_JournalEntryLine(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as JournalEntryLineId,accountId: null == accountId ? _self.accountId : accountId // ignore: cast_nullable_to_non_nullable
as AccountId,entryType: null == entryType ? _self.entryType : entryType // ignore: cast_nullable_to_non_nullable
as EntryType,originalAmount: null == originalAmount ? _self.originalAmount : originalAmount // ignore: cast_nullable_to_non_nullable
as int,originalCurrency: null == originalCurrency ? _self.originalCurrency : originalCurrency // ignore: cast_nullable_to_non_nullable
as CurrencyCode,exchangeRateAtTrade: null == exchangeRateAtTrade ? _self.exchangeRateAtTrade : exchangeRateAtTrade // ignore: cast_nullable_to_non_nullable
as int,baseCurrency: null == baseCurrency ? _self.baseCurrency : baseCurrency // ignore: cast_nullable_to_non_nullable
as CurrencyCode,baseAmount: null == baseAmount ? _self.baseAmount : baseAmount // ignore: cast_nullable_to_non_nullable
as int,activityTypeOverride: freezed == activityTypeOverride ? _self.activityTypeOverride : activityTypeOverride // ignore: cast_nullable_to_non_nullable
as DimensionValueId?,ownerIdOverride: freezed == ownerIdOverride ? _self.ownerIdOverride : ownerIdOverride // ignore: cast_nullable_to_non_nullable
as OwnerId?,incomeTypeOverride: freezed == incomeTypeOverride ? _self.incomeTypeOverride : incomeTypeOverride // ignore: cast_nullable_to_non_nullable
as DimensionValueId?,deductibility: null == deductibility ? _self.deductibility : deductibility // ignore: cast_nullable_to_non_nullable
as Deductibility,beneficiaryId: freezed == beneficiaryId ? _self.beneficiaryId : beneficiaryId // ignore: cast_nullable_to_non_nullable
as OwnerId?,taxClassification: freezed == taxClassification ? _self.taxClassification : taxClassification // ignore: cast_nullable_to_non_nullable
as String?,memo: freezed == memo ? _self.memo : memo // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
