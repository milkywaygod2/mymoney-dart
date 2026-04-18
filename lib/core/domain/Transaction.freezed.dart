// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'Transaction.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$Transaction {

 TransactionId get id; DateTime get date; String get description; TransactionStatus get status; TransactionId? get voidedBy; CounterpartyId? get counterpartyId; String? get counterpartyName; TransactionSource get source; double? get confidence; PeriodId? get periodId; SyncStatus get syncStatus; List<JournalEntryLine> get listLines; List<TagId> get listTagIds; DateTime get createdAt; DateTime get updatedAt;
/// Create a copy of Transaction
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TransactionCopyWith<Transaction> get copyWith => _$TransactionCopyWithImpl<Transaction>(this as Transaction, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Transaction&&(identical(other.id, id) || other.id == id)&&(identical(other.date, date) || other.date == date)&&(identical(other.description, description) || other.description == description)&&(identical(other.status, status) || other.status == status)&&(identical(other.voidedBy, voidedBy) || other.voidedBy == voidedBy)&&(identical(other.counterpartyId, counterpartyId) || other.counterpartyId == counterpartyId)&&(identical(other.counterpartyName, counterpartyName) || other.counterpartyName == counterpartyName)&&(identical(other.source, source) || other.source == source)&&(identical(other.confidence, confidence) || other.confidence == confidence)&&(identical(other.periodId, periodId) || other.periodId == periodId)&&(identical(other.syncStatus, syncStatus) || other.syncStatus == syncStatus)&&const DeepCollectionEquality().equals(other.listLines, listLines)&&const DeepCollectionEquality().equals(other.listTagIds, listTagIds)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt));
}


@override
int get hashCode => Object.hash(runtimeType,id,date,description,status,voidedBy,counterpartyId,counterpartyName,source,confidence,periodId,syncStatus,const DeepCollectionEquality().hash(listLines),const DeepCollectionEquality().hash(listTagIds),createdAt,updatedAt);

@override
String toString() {
  return 'Transaction(id: $id, date: $date, description: $description, status: $status, voidedBy: $voidedBy, counterpartyId: $counterpartyId, counterpartyName: $counterpartyName, source: $source, confidence: $confidence, periodId: $periodId, syncStatus: $syncStatus, listLines: $listLines, listTagIds: $listTagIds, createdAt: $createdAt, updatedAt: $updatedAt)';
}


}

/// @nodoc
abstract mixin class $TransactionCopyWith<$Res>  {
  factory $TransactionCopyWith(Transaction value, $Res Function(Transaction) _then) = _$TransactionCopyWithImpl;
@useResult
$Res call({
 TransactionId id, DateTime date, String description, TransactionStatus status, TransactionId? voidedBy, CounterpartyId? counterpartyId, String? counterpartyName, TransactionSource source, double? confidence, PeriodId? periodId, SyncStatus syncStatus, List<JournalEntryLine> listLines, List<TagId> listTagIds, DateTime createdAt, DateTime updatedAt
});




}
/// @nodoc
class _$TransactionCopyWithImpl<$Res>
    implements $TransactionCopyWith<$Res> {
  _$TransactionCopyWithImpl(this._self, this._then);

  final Transaction _self;
  final $Res Function(Transaction) _then;

/// Create a copy of Transaction
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? date = null,Object? description = null,Object? status = null,Object? voidedBy = freezed,Object? counterpartyId = freezed,Object? counterpartyName = freezed,Object? source = null,Object? confidence = freezed,Object? periodId = freezed,Object? syncStatus = null,Object? listLines = null,Object? listTagIds = null,Object? createdAt = null,Object? updatedAt = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as TransactionId,date: null == date ? _self.date : date // ignore: cast_nullable_to_non_nullable
as DateTime,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as TransactionStatus,voidedBy: freezed == voidedBy ? _self.voidedBy : voidedBy // ignore: cast_nullable_to_non_nullable
as TransactionId?,counterpartyId: freezed == counterpartyId ? _self.counterpartyId : counterpartyId // ignore: cast_nullable_to_non_nullable
as CounterpartyId?,counterpartyName: freezed == counterpartyName ? _self.counterpartyName : counterpartyName // ignore: cast_nullable_to_non_nullable
as String?,source: null == source ? _self.source : source // ignore: cast_nullable_to_non_nullable
as TransactionSource,confidence: freezed == confidence ? _self.confidence : confidence // ignore: cast_nullable_to_non_nullable
as double?,periodId: freezed == periodId ? _self.periodId : periodId // ignore: cast_nullable_to_non_nullable
as PeriodId?,syncStatus: null == syncStatus ? _self.syncStatus : syncStatus // ignore: cast_nullable_to_non_nullable
as SyncStatus,listLines: null == listLines ? _self.listLines : listLines // ignore: cast_nullable_to_non_nullable
as List<JournalEntryLine>,listTagIds: null == listTagIds ? _self.listTagIds : listTagIds // ignore: cast_nullable_to_non_nullable
as List<TagId>,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,updatedAt: null == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}

}


/// Adds pattern-matching-related methods to [Transaction].
extension TransactionPatterns on Transaction {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Transaction value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Transaction() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Transaction value)  $default,){
final _that = this;
switch (_that) {
case _Transaction():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Transaction value)?  $default,){
final _that = this;
switch (_that) {
case _Transaction() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( TransactionId id,  DateTime date,  String description,  TransactionStatus status,  TransactionId? voidedBy,  CounterpartyId? counterpartyId,  String? counterpartyName,  TransactionSource source,  double? confidence,  PeriodId? periodId,  SyncStatus syncStatus,  List<JournalEntryLine> listLines,  List<TagId> listTagIds,  DateTime createdAt,  DateTime updatedAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Transaction() when $default != null:
return $default(_that.id,_that.date,_that.description,_that.status,_that.voidedBy,_that.counterpartyId,_that.counterpartyName,_that.source,_that.confidence,_that.periodId,_that.syncStatus,_that.listLines,_that.listTagIds,_that.createdAt,_that.updatedAt);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( TransactionId id,  DateTime date,  String description,  TransactionStatus status,  TransactionId? voidedBy,  CounterpartyId? counterpartyId,  String? counterpartyName,  TransactionSource source,  double? confidence,  PeriodId? periodId,  SyncStatus syncStatus,  List<JournalEntryLine> listLines,  List<TagId> listTagIds,  DateTime createdAt,  DateTime updatedAt)  $default,) {final _that = this;
switch (_that) {
case _Transaction():
return $default(_that.id,_that.date,_that.description,_that.status,_that.voidedBy,_that.counterpartyId,_that.counterpartyName,_that.source,_that.confidence,_that.periodId,_that.syncStatus,_that.listLines,_that.listTagIds,_that.createdAt,_that.updatedAt);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( TransactionId id,  DateTime date,  String description,  TransactionStatus status,  TransactionId? voidedBy,  CounterpartyId? counterpartyId,  String? counterpartyName,  TransactionSource source,  double? confidence,  PeriodId? periodId,  SyncStatus syncStatus,  List<JournalEntryLine> listLines,  List<TagId> listTagIds,  DateTime createdAt,  DateTime updatedAt)?  $default,) {final _that = this;
switch (_that) {
case _Transaction() when $default != null:
return $default(_that.id,_that.date,_that.description,_that.status,_that.voidedBy,_that.counterpartyId,_that.counterpartyName,_that.source,_that.confidence,_that.periodId,_that.syncStatus,_that.listLines,_that.listTagIds,_that.createdAt,_that.updatedAt);case _:
  return null;

}
}

}

/// @nodoc


class _Transaction extends Transaction {
  const _Transaction({required this.id, required this.date, required this.description, required this.status, this.voidedBy, this.counterpartyId, this.counterpartyName, required this.source, this.confidence, this.periodId, this.syncStatus = SyncStatus.pending, required final  List<JournalEntryLine> listLines, final  List<TagId> listTagIds = const [], required this.createdAt, required this.updatedAt}): _listLines = listLines,_listTagIds = listTagIds,super._();
  

@override final  TransactionId id;
@override final  DateTime date;
@override final  String description;
@override final  TransactionStatus status;
@override final  TransactionId? voidedBy;
@override final  CounterpartyId? counterpartyId;
@override final  String? counterpartyName;
@override final  TransactionSource source;
@override final  double? confidence;
@override final  PeriodId? periodId;
@override@JsonKey() final  SyncStatus syncStatus;
 final  List<JournalEntryLine> _listLines;
@override List<JournalEntryLine> get listLines {
  if (_listLines is EqualUnmodifiableListView) return _listLines;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_listLines);
}

 final  List<TagId> _listTagIds;
@override@JsonKey() List<TagId> get listTagIds {
  if (_listTagIds is EqualUnmodifiableListView) return _listTagIds;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_listTagIds);
}

@override final  DateTime createdAt;
@override final  DateTime updatedAt;

/// Create a copy of Transaction
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TransactionCopyWith<_Transaction> get copyWith => __$TransactionCopyWithImpl<_Transaction>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Transaction&&(identical(other.id, id) || other.id == id)&&(identical(other.date, date) || other.date == date)&&(identical(other.description, description) || other.description == description)&&(identical(other.status, status) || other.status == status)&&(identical(other.voidedBy, voidedBy) || other.voidedBy == voidedBy)&&(identical(other.counterpartyId, counterpartyId) || other.counterpartyId == counterpartyId)&&(identical(other.counterpartyName, counterpartyName) || other.counterpartyName == counterpartyName)&&(identical(other.source, source) || other.source == source)&&(identical(other.confidence, confidence) || other.confidence == confidence)&&(identical(other.periodId, periodId) || other.periodId == periodId)&&(identical(other.syncStatus, syncStatus) || other.syncStatus == syncStatus)&&const DeepCollectionEquality().equals(other._listLines, _listLines)&&const DeepCollectionEquality().equals(other._listTagIds, _listTagIds)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt));
}


@override
int get hashCode => Object.hash(runtimeType,id,date,description,status,voidedBy,counterpartyId,counterpartyName,source,confidence,periodId,syncStatus,const DeepCollectionEquality().hash(_listLines),const DeepCollectionEquality().hash(_listTagIds),createdAt,updatedAt);

@override
String toString() {
  return 'Transaction(id: $id, date: $date, description: $description, status: $status, voidedBy: $voidedBy, counterpartyId: $counterpartyId, counterpartyName: $counterpartyName, source: $source, confidence: $confidence, periodId: $periodId, syncStatus: $syncStatus, listLines: $listLines, listTagIds: $listTagIds, createdAt: $createdAt, updatedAt: $updatedAt)';
}


}

/// @nodoc
abstract mixin class _$TransactionCopyWith<$Res> implements $TransactionCopyWith<$Res> {
  factory _$TransactionCopyWith(_Transaction value, $Res Function(_Transaction) _then) = __$TransactionCopyWithImpl;
@override @useResult
$Res call({
 TransactionId id, DateTime date, String description, TransactionStatus status, TransactionId? voidedBy, CounterpartyId? counterpartyId, String? counterpartyName, TransactionSource source, double? confidence, PeriodId? periodId, SyncStatus syncStatus, List<JournalEntryLine> listLines, List<TagId> listTagIds, DateTime createdAt, DateTime updatedAt
});




}
/// @nodoc
class __$TransactionCopyWithImpl<$Res>
    implements _$TransactionCopyWith<$Res> {
  __$TransactionCopyWithImpl(this._self, this._then);

  final _Transaction _self;
  final $Res Function(_Transaction) _then;

/// Create a copy of Transaction
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? date = null,Object? description = null,Object? status = null,Object? voidedBy = freezed,Object? counterpartyId = freezed,Object? counterpartyName = freezed,Object? source = null,Object? confidence = freezed,Object? periodId = freezed,Object? syncStatus = null,Object? listLines = null,Object? listTagIds = null,Object? createdAt = null,Object? updatedAt = null,}) {
  return _then(_Transaction(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as TransactionId,date: null == date ? _self.date : date // ignore: cast_nullable_to_non_nullable
as DateTime,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as TransactionStatus,voidedBy: freezed == voidedBy ? _self.voidedBy : voidedBy // ignore: cast_nullable_to_non_nullable
as TransactionId?,counterpartyId: freezed == counterpartyId ? _self.counterpartyId : counterpartyId // ignore: cast_nullable_to_non_nullable
as CounterpartyId?,counterpartyName: freezed == counterpartyName ? _self.counterpartyName : counterpartyName // ignore: cast_nullable_to_non_nullable
as String?,source: null == source ? _self.source : source // ignore: cast_nullable_to_non_nullable
as TransactionSource,confidence: freezed == confidence ? _self.confidence : confidence // ignore: cast_nullable_to_non_nullable
as double?,periodId: freezed == periodId ? _self.periodId : periodId // ignore: cast_nullable_to_non_nullable
as PeriodId?,syncStatus: null == syncStatus ? _self.syncStatus : syncStatus // ignore: cast_nullable_to_non_nullable
as SyncStatus,listLines: null == listLines ? _self._listLines : listLines // ignore: cast_nullable_to_non_nullable
as List<JournalEntryLine>,listTagIds: null == listTagIds ? _self._listTagIds : listTagIds // ignore: cast_nullable_to_non_nullable
as List<TagId>,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,updatedAt: null == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}


}

// dart format on
