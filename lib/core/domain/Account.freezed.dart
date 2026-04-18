// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'Account.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$OwnerShare {

 OwnerId get ownerId;/// 지분율 (배율 10000, 합계=10000)
 int get shareRatio;
/// Create a copy of OwnerShare
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$OwnerShareCopyWith<OwnerShare> get copyWith => _$OwnerShareCopyWithImpl<OwnerShare>(this as OwnerShare, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is OwnerShare&&(identical(other.ownerId, ownerId) || other.ownerId == ownerId)&&(identical(other.shareRatio, shareRatio) || other.shareRatio == shareRatio));
}


@override
int get hashCode => Object.hash(runtimeType,ownerId,shareRatio);

@override
String toString() {
  return 'OwnerShare(ownerId: $ownerId, shareRatio: $shareRatio)';
}


}

/// @nodoc
abstract mixin class $OwnerShareCopyWith<$Res>  {
  factory $OwnerShareCopyWith(OwnerShare value, $Res Function(OwnerShare) _then) = _$OwnerShareCopyWithImpl;
@useResult
$Res call({
 OwnerId ownerId, int shareRatio
});




}
/// @nodoc
class _$OwnerShareCopyWithImpl<$Res>
    implements $OwnerShareCopyWith<$Res> {
  _$OwnerShareCopyWithImpl(this._self, this._then);

  final OwnerShare _self;
  final $Res Function(OwnerShare) _then;

/// Create a copy of OwnerShare
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? ownerId = null,Object? shareRatio = null,}) {
  return _then(_self.copyWith(
ownerId: null == ownerId ? _self.ownerId : ownerId // ignore: cast_nullable_to_non_nullable
as OwnerId,shareRatio: null == shareRatio ? _self.shareRatio : shareRatio // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [OwnerShare].
extension OwnerSharePatterns on OwnerShare {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _OwnerShare value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _OwnerShare() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _OwnerShare value)  $default,){
final _that = this;
switch (_that) {
case _OwnerShare():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _OwnerShare value)?  $default,){
final _that = this;
switch (_that) {
case _OwnerShare() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( OwnerId ownerId,  int shareRatio)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _OwnerShare() when $default != null:
return $default(_that.ownerId,_that.shareRatio);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( OwnerId ownerId,  int shareRatio)  $default,) {final _that = this;
switch (_that) {
case _OwnerShare():
return $default(_that.ownerId,_that.shareRatio);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( OwnerId ownerId,  int shareRatio)?  $default,) {final _that = this;
switch (_that) {
case _OwnerShare() when $default != null:
return $default(_that.ownerId,_that.shareRatio);case _:
  return null;

}
}

}

/// @nodoc


class _OwnerShare implements OwnerShare {
  const _OwnerShare({required this.ownerId, required this.shareRatio});
  

@override final  OwnerId ownerId;
/// 지분율 (배율 10000, 합계=10000)
@override final  int shareRatio;

/// Create a copy of OwnerShare
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$OwnerShareCopyWith<_OwnerShare> get copyWith => __$OwnerShareCopyWithImpl<_OwnerShare>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _OwnerShare&&(identical(other.ownerId, ownerId) || other.ownerId == ownerId)&&(identical(other.shareRatio, shareRatio) || other.shareRatio == shareRatio));
}


@override
int get hashCode => Object.hash(runtimeType,ownerId,shareRatio);

@override
String toString() {
  return 'OwnerShare(ownerId: $ownerId, shareRatio: $shareRatio)';
}


}

/// @nodoc
abstract mixin class _$OwnerShareCopyWith<$Res> implements $OwnerShareCopyWith<$Res> {
  factory _$OwnerShareCopyWith(_OwnerShare value, $Res Function(_OwnerShare) _then) = __$OwnerShareCopyWithImpl;
@override @useResult
$Res call({
 OwnerId ownerId, int shareRatio
});




}
/// @nodoc
class __$OwnerShareCopyWithImpl<$Res>
    implements _$OwnerShareCopyWith<$Res> {
  __$OwnerShareCopyWithImpl(this._self, this._then);

  final _OwnerShare _self;
  final $Res Function(_OwnerShare) _then;

/// Create a copy of OwnerShare
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? ownerId = null,Object? shareRatio = null,}) {
  return _then(_OwnerShare(
ownerId: null == ownerId ? _self.ownerId : ownerId // ignore: cast_nullable_to_non_nullable
as OwnerId,shareRatio: null == shareRatio ? _self.shareRatio : shareRatio // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

/// @nodoc
mixin _$Account {

 AccountId get id; String get name;/// 5대 계정 성격 — 차변/대변 정상 방향 결정, 재무제표 위치 결정
 AccountNature get nature;/// T1 자기자본성 (이중 저장: FK=쓰기, Path=읽기)
 DimensionValueId get equityTypeId; String get equityTypePath;/// T1 유동성 (이중 저장)
 DimensionValueId get liquidityId; String get liquidityPath;/// T1 자산종류 (이중 저장)
 DimensionValueId get assetTypeId; String get assetTypePath;/// T2 활동구분 기본값 (JEL에서 Override 가능)
 DimensionValueId? get defaultActivityTypeId;/// T2 소득유형 기본값 (수익/비용 계정만 해당)
 DimensionValueId? get defaultIncomeTypeId;/// T2 기본 소유자
 OwnerId get ownerId;/// Account 속성: 상품구분 (예금/적금/주식 등)
 String? get productType;/// Account 속성: 금융사 (우리은행/국민은행 등)
 String? get financialInstitution;/// 국가별 추가 정보 (JSON, 확장용)
 String? get countrySpecific;/// 활성 여부 — 비활성 계정은 새 JEL 참조 불가 (INV-A5)
 bool get isActive;/// 공동명의 지분율 — 합계=10000 (INV-A3)
 List<OwnerShare> get listOwnerShares;
/// Create a copy of Account
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AccountCopyWith<Account> get copyWith => _$AccountCopyWithImpl<Account>(this as Account, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Account&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.nature, nature) || other.nature == nature)&&(identical(other.equityTypeId, equityTypeId) || other.equityTypeId == equityTypeId)&&(identical(other.equityTypePath, equityTypePath) || other.equityTypePath == equityTypePath)&&(identical(other.liquidityId, liquidityId) || other.liquidityId == liquidityId)&&(identical(other.liquidityPath, liquidityPath) || other.liquidityPath == liquidityPath)&&(identical(other.assetTypeId, assetTypeId) || other.assetTypeId == assetTypeId)&&(identical(other.assetTypePath, assetTypePath) || other.assetTypePath == assetTypePath)&&(identical(other.defaultActivityTypeId, defaultActivityTypeId) || other.defaultActivityTypeId == defaultActivityTypeId)&&(identical(other.defaultIncomeTypeId, defaultIncomeTypeId) || other.defaultIncomeTypeId == defaultIncomeTypeId)&&(identical(other.ownerId, ownerId) || other.ownerId == ownerId)&&(identical(other.productType, productType) || other.productType == productType)&&(identical(other.financialInstitution, financialInstitution) || other.financialInstitution == financialInstitution)&&(identical(other.countrySpecific, countrySpecific) || other.countrySpecific == countrySpecific)&&(identical(other.isActive, isActive) || other.isActive == isActive)&&const DeepCollectionEquality().equals(other.listOwnerShares, listOwnerShares));
}


@override
int get hashCode => Object.hash(runtimeType,id,name,nature,equityTypeId,equityTypePath,liquidityId,liquidityPath,assetTypeId,assetTypePath,defaultActivityTypeId,defaultIncomeTypeId,ownerId,productType,financialInstitution,countrySpecific,isActive,const DeepCollectionEquality().hash(listOwnerShares));

@override
String toString() {
  return 'Account(id: $id, name: $name, nature: $nature, equityTypeId: $equityTypeId, equityTypePath: $equityTypePath, liquidityId: $liquidityId, liquidityPath: $liquidityPath, assetTypeId: $assetTypeId, assetTypePath: $assetTypePath, defaultActivityTypeId: $defaultActivityTypeId, defaultIncomeTypeId: $defaultIncomeTypeId, ownerId: $ownerId, productType: $productType, financialInstitution: $financialInstitution, countrySpecific: $countrySpecific, isActive: $isActive, listOwnerShares: $listOwnerShares)';
}


}

/// @nodoc
abstract mixin class $AccountCopyWith<$Res>  {
  factory $AccountCopyWith(Account value, $Res Function(Account) _then) = _$AccountCopyWithImpl;
@useResult
$Res call({
 AccountId id, String name, AccountNature nature, DimensionValueId equityTypeId, String equityTypePath, DimensionValueId liquidityId, String liquidityPath, DimensionValueId assetTypeId, String assetTypePath, DimensionValueId? defaultActivityTypeId, DimensionValueId? defaultIncomeTypeId, OwnerId ownerId, String? productType, String? financialInstitution, String? countrySpecific, bool isActive, List<OwnerShare> listOwnerShares
});




}
/// @nodoc
class _$AccountCopyWithImpl<$Res>
    implements $AccountCopyWith<$Res> {
  _$AccountCopyWithImpl(this._self, this._then);

  final Account _self;
  final $Res Function(Account) _then;

/// Create a copy of Account
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = null,Object? nature = null,Object? equityTypeId = null,Object? equityTypePath = null,Object? liquidityId = null,Object? liquidityPath = null,Object? assetTypeId = null,Object? assetTypePath = null,Object? defaultActivityTypeId = freezed,Object? defaultIncomeTypeId = freezed,Object? ownerId = null,Object? productType = freezed,Object? financialInstitution = freezed,Object? countrySpecific = freezed,Object? isActive = null,Object? listOwnerShares = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as AccountId,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,nature: null == nature ? _self.nature : nature // ignore: cast_nullable_to_non_nullable
as AccountNature,equityTypeId: null == equityTypeId ? _self.equityTypeId : equityTypeId // ignore: cast_nullable_to_non_nullable
as DimensionValueId,equityTypePath: null == equityTypePath ? _self.equityTypePath : equityTypePath // ignore: cast_nullable_to_non_nullable
as String,liquidityId: null == liquidityId ? _self.liquidityId : liquidityId // ignore: cast_nullable_to_non_nullable
as DimensionValueId,liquidityPath: null == liquidityPath ? _self.liquidityPath : liquidityPath // ignore: cast_nullable_to_non_nullable
as String,assetTypeId: null == assetTypeId ? _self.assetTypeId : assetTypeId // ignore: cast_nullable_to_non_nullable
as DimensionValueId,assetTypePath: null == assetTypePath ? _self.assetTypePath : assetTypePath // ignore: cast_nullable_to_non_nullable
as String,defaultActivityTypeId: freezed == defaultActivityTypeId ? _self.defaultActivityTypeId : defaultActivityTypeId // ignore: cast_nullable_to_non_nullable
as DimensionValueId?,defaultIncomeTypeId: freezed == defaultIncomeTypeId ? _self.defaultIncomeTypeId : defaultIncomeTypeId // ignore: cast_nullable_to_non_nullable
as DimensionValueId?,ownerId: null == ownerId ? _self.ownerId : ownerId // ignore: cast_nullable_to_non_nullable
as OwnerId,productType: freezed == productType ? _self.productType : productType // ignore: cast_nullable_to_non_nullable
as String?,financialInstitution: freezed == financialInstitution ? _self.financialInstitution : financialInstitution // ignore: cast_nullable_to_non_nullable
as String?,countrySpecific: freezed == countrySpecific ? _self.countrySpecific : countrySpecific // ignore: cast_nullable_to_non_nullable
as String?,isActive: null == isActive ? _self.isActive : isActive // ignore: cast_nullable_to_non_nullable
as bool,listOwnerShares: null == listOwnerShares ? _self.listOwnerShares : listOwnerShares // ignore: cast_nullable_to_non_nullable
as List<OwnerShare>,
  ));
}

}


/// Adds pattern-matching-related methods to [Account].
extension AccountPatterns on Account {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Account value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Account() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Account value)  $default,){
final _that = this;
switch (_that) {
case _Account():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Account value)?  $default,){
final _that = this;
switch (_that) {
case _Account() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( AccountId id,  String name,  AccountNature nature,  DimensionValueId equityTypeId,  String equityTypePath,  DimensionValueId liquidityId,  String liquidityPath,  DimensionValueId assetTypeId,  String assetTypePath,  DimensionValueId? defaultActivityTypeId,  DimensionValueId? defaultIncomeTypeId,  OwnerId ownerId,  String? productType,  String? financialInstitution,  String? countrySpecific,  bool isActive,  List<OwnerShare> listOwnerShares)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Account() when $default != null:
return $default(_that.id,_that.name,_that.nature,_that.equityTypeId,_that.equityTypePath,_that.liquidityId,_that.liquidityPath,_that.assetTypeId,_that.assetTypePath,_that.defaultActivityTypeId,_that.defaultIncomeTypeId,_that.ownerId,_that.productType,_that.financialInstitution,_that.countrySpecific,_that.isActive,_that.listOwnerShares);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( AccountId id,  String name,  AccountNature nature,  DimensionValueId equityTypeId,  String equityTypePath,  DimensionValueId liquidityId,  String liquidityPath,  DimensionValueId assetTypeId,  String assetTypePath,  DimensionValueId? defaultActivityTypeId,  DimensionValueId? defaultIncomeTypeId,  OwnerId ownerId,  String? productType,  String? financialInstitution,  String? countrySpecific,  bool isActive,  List<OwnerShare> listOwnerShares)  $default,) {final _that = this;
switch (_that) {
case _Account():
return $default(_that.id,_that.name,_that.nature,_that.equityTypeId,_that.equityTypePath,_that.liquidityId,_that.liquidityPath,_that.assetTypeId,_that.assetTypePath,_that.defaultActivityTypeId,_that.defaultIncomeTypeId,_that.ownerId,_that.productType,_that.financialInstitution,_that.countrySpecific,_that.isActive,_that.listOwnerShares);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( AccountId id,  String name,  AccountNature nature,  DimensionValueId equityTypeId,  String equityTypePath,  DimensionValueId liquidityId,  String liquidityPath,  DimensionValueId assetTypeId,  String assetTypePath,  DimensionValueId? defaultActivityTypeId,  DimensionValueId? defaultIncomeTypeId,  OwnerId ownerId,  String? productType,  String? financialInstitution,  String? countrySpecific,  bool isActive,  List<OwnerShare> listOwnerShares)?  $default,) {final _that = this;
switch (_that) {
case _Account() when $default != null:
return $default(_that.id,_that.name,_that.nature,_that.equityTypeId,_that.equityTypePath,_that.liquidityId,_that.liquidityPath,_that.assetTypeId,_that.assetTypePath,_that.defaultActivityTypeId,_that.defaultIncomeTypeId,_that.ownerId,_that.productType,_that.financialInstitution,_that.countrySpecific,_that.isActive,_that.listOwnerShares);case _:
  return null;

}
}

}

/// @nodoc


class _Account extends Account {
  const _Account({required this.id, required this.name, required this.nature, required this.equityTypeId, required this.equityTypePath, required this.liquidityId, required this.liquidityPath, required this.assetTypeId, required this.assetTypePath, this.defaultActivityTypeId, this.defaultIncomeTypeId, required this.ownerId, this.productType, this.financialInstitution, this.countrySpecific, this.isActive = true, final  List<OwnerShare> listOwnerShares = const []}): _listOwnerShares = listOwnerShares,super._();
  

@override final  AccountId id;
@override final  String name;
/// 5대 계정 성격 — 차변/대변 정상 방향 결정, 재무제표 위치 결정
@override final  AccountNature nature;
/// T1 자기자본성 (이중 저장: FK=쓰기, Path=읽기)
@override final  DimensionValueId equityTypeId;
@override final  String equityTypePath;
/// T1 유동성 (이중 저장)
@override final  DimensionValueId liquidityId;
@override final  String liquidityPath;
/// T1 자산종류 (이중 저장)
@override final  DimensionValueId assetTypeId;
@override final  String assetTypePath;
/// T2 활동구분 기본값 (JEL에서 Override 가능)
@override final  DimensionValueId? defaultActivityTypeId;
/// T2 소득유형 기본값 (수익/비용 계정만 해당)
@override final  DimensionValueId? defaultIncomeTypeId;
/// T2 기본 소유자
@override final  OwnerId ownerId;
/// Account 속성: 상품구분 (예금/적금/주식 등)
@override final  String? productType;
/// Account 속성: 금융사 (우리은행/국민은행 등)
@override final  String? financialInstitution;
/// 국가별 추가 정보 (JSON, 확장용)
@override final  String? countrySpecific;
/// 활성 여부 — 비활성 계정은 새 JEL 참조 불가 (INV-A5)
@override@JsonKey() final  bool isActive;
/// 공동명의 지분율 — 합계=10000 (INV-A3)
 final  List<OwnerShare> _listOwnerShares;
/// 공동명의 지분율 — 합계=10000 (INV-A3)
@override@JsonKey() List<OwnerShare> get listOwnerShares {
  if (_listOwnerShares is EqualUnmodifiableListView) return _listOwnerShares;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_listOwnerShares);
}


/// Create a copy of Account
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AccountCopyWith<_Account> get copyWith => __$AccountCopyWithImpl<_Account>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Account&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.nature, nature) || other.nature == nature)&&(identical(other.equityTypeId, equityTypeId) || other.equityTypeId == equityTypeId)&&(identical(other.equityTypePath, equityTypePath) || other.equityTypePath == equityTypePath)&&(identical(other.liquidityId, liquidityId) || other.liquidityId == liquidityId)&&(identical(other.liquidityPath, liquidityPath) || other.liquidityPath == liquidityPath)&&(identical(other.assetTypeId, assetTypeId) || other.assetTypeId == assetTypeId)&&(identical(other.assetTypePath, assetTypePath) || other.assetTypePath == assetTypePath)&&(identical(other.defaultActivityTypeId, defaultActivityTypeId) || other.defaultActivityTypeId == defaultActivityTypeId)&&(identical(other.defaultIncomeTypeId, defaultIncomeTypeId) || other.defaultIncomeTypeId == defaultIncomeTypeId)&&(identical(other.ownerId, ownerId) || other.ownerId == ownerId)&&(identical(other.productType, productType) || other.productType == productType)&&(identical(other.financialInstitution, financialInstitution) || other.financialInstitution == financialInstitution)&&(identical(other.countrySpecific, countrySpecific) || other.countrySpecific == countrySpecific)&&(identical(other.isActive, isActive) || other.isActive == isActive)&&const DeepCollectionEquality().equals(other._listOwnerShares, _listOwnerShares));
}


@override
int get hashCode => Object.hash(runtimeType,id,name,nature,equityTypeId,equityTypePath,liquidityId,liquidityPath,assetTypeId,assetTypePath,defaultActivityTypeId,defaultIncomeTypeId,ownerId,productType,financialInstitution,countrySpecific,isActive,const DeepCollectionEquality().hash(_listOwnerShares));

@override
String toString() {
  return 'Account(id: $id, name: $name, nature: $nature, equityTypeId: $equityTypeId, equityTypePath: $equityTypePath, liquidityId: $liquidityId, liquidityPath: $liquidityPath, assetTypeId: $assetTypeId, assetTypePath: $assetTypePath, defaultActivityTypeId: $defaultActivityTypeId, defaultIncomeTypeId: $defaultIncomeTypeId, ownerId: $ownerId, productType: $productType, financialInstitution: $financialInstitution, countrySpecific: $countrySpecific, isActive: $isActive, listOwnerShares: $listOwnerShares)';
}


}

/// @nodoc
abstract mixin class _$AccountCopyWith<$Res> implements $AccountCopyWith<$Res> {
  factory _$AccountCopyWith(_Account value, $Res Function(_Account) _then) = __$AccountCopyWithImpl;
@override @useResult
$Res call({
 AccountId id, String name, AccountNature nature, DimensionValueId equityTypeId, String equityTypePath, DimensionValueId liquidityId, String liquidityPath, DimensionValueId assetTypeId, String assetTypePath, DimensionValueId? defaultActivityTypeId, DimensionValueId? defaultIncomeTypeId, OwnerId ownerId, String? productType, String? financialInstitution, String? countrySpecific, bool isActive, List<OwnerShare> listOwnerShares
});




}
/// @nodoc
class __$AccountCopyWithImpl<$Res>
    implements _$AccountCopyWith<$Res> {
  __$AccountCopyWithImpl(this._self, this._then);

  final _Account _self;
  final $Res Function(_Account) _then;

/// Create a copy of Account
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,Object? nature = null,Object? equityTypeId = null,Object? equityTypePath = null,Object? liquidityId = null,Object? liquidityPath = null,Object? assetTypeId = null,Object? assetTypePath = null,Object? defaultActivityTypeId = freezed,Object? defaultIncomeTypeId = freezed,Object? ownerId = null,Object? productType = freezed,Object? financialInstitution = freezed,Object? countrySpecific = freezed,Object? isActive = null,Object? listOwnerShares = null,}) {
  return _then(_Account(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as AccountId,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,nature: null == nature ? _self.nature : nature // ignore: cast_nullable_to_non_nullable
as AccountNature,equityTypeId: null == equityTypeId ? _self.equityTypeId : equityTypeId // ignore: cast_nullable_to_non_nullable
as DimensionValueId,equityTypePath: null == equityTypePath ? _self.equityTypePath : equityTypePath // ignore: cast_nullable_to_non_nullable
as String,liquidityId: null == liquidityId ? _self.liquidityId : liquidityId // ignore: cast_nullable_to_non_nullable
as DimensionValueId,liquidityPath: null == liquidityPath ? _self.liquidityPath : liquidityPath // ignore: cast_nullable_to_non_nullable
as String,assetTypeId: null == assetTypeId ? _self.assetTypeId : assetTypeId // ignore: cast_nullable_to_non_nullable
as DimensionValueId,assetTypePath: null == assetTypePath ? _self.assetTypePath : assetTypePath // ignore: cast_nullable_to_non_nullable
as String,defaultActivityTypeId: freezed == defaultActivityTypeId ? _self.defaultActivityTypeId : defaultActivityTypeId // ignore: cast_nullable_to_non_nullable
as DimensionValueId?,defaultIncomeTypeId: freezed == defaultIncomeTypeId ? _self.defaultIncomeTypeId : defaultIncomeTypeId // ignore: cast_nullable_to_non_nullable
as DimensionValueId?,ownerId: null == ownerId ? _self.ownerId : ownerId // ignore: cast_nullable_to_non_nullable
as OwnerId,productType: freezed == productType ? _self.productType : productType // ignore: cast_nullable_to_non_nullable
as String?,financialInstitution: freezed == financialInstitution ? _self.financialInstitution : financialInstitution // ignore: cast_nullable_to_non_nullable
as String?,countrySpecific: freezed == countrySpecific ? _self.countrySpecific : countrySpecific // ignore: cast_nullable_to_non_nullable
as String?,isActive: null == isActive ? _self.isActive : isActive // ignore: cast_nullable_to_non_nullable
as bool,listOwnerShares: null == listOwnerShares ? _self._listOwnerShares : listOwnerShares // ignore: cast_nullable_to_non_nullable
as List<OwnerShare>,
  ));
}


}

// dart format on
