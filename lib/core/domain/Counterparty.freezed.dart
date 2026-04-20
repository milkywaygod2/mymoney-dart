// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'Counterparty.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$Counterparty {

 CounterpartyId get id;/// 거래처 정식 명칭
 String get name;/// 고유번호 (사업자번호/주민번호 등)
 String? get identifier;/// 고유번호 유형
 IdentifierType get identifierType;/// 연락처 (보조 매칭)
 String? get phone;/// 주소 (보조 매칭)
 String? get address;/// 신뢰도 수준 — OCR 매칭 정확성
 ConfidenceLevel get confidenceLevel;/// 특수관계자 여부 (세무 확장 시 활성화)
 bool? get isRelatedParty;/// 거래처 유형 (개인/법인/정부기관, 원천징수 판정용)
 String? get counterpartyType;/// 국가 코드 (해외 확장 시)
 String? get countryCode;/// 특수관계자 5단계 분류 (v2.0)
 RelatedPartyType? get relatedPartyType;/// 법인/개인 성격 분류 (v2.0)
 EntityType? get entityType;/// OCR 표기 변형 목록 ("스타벅스", "STARBUCKS" 등)
 List<CounterpartyAlias> get listAliases;
/// Create a copy of Counterparty
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CounterpartyCopyWith<Counterparty> get copyWith => _$CounterpartyCopyWithImpl<Counterparty>(this as Counterparty, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Counterparty&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.identifier, identifier) || other.identifier == identifier)&&(identical(other.identifierType, identifierType) || other.identifierType == identifierType)&&(identical(other.phone, phone) || other.phone == phone)&&(identical(other.address, address) || other.address == address)&&(identical(other.confidenceLevel, confidenceLevel) || other.confidenceLevel == confidenceLevel)&&(identical(other.isRelatedParty, isRelatedParty) || other.isRelatedParty == isRelatedParty)&&(identical(other.counterpartyType, counterpartyType) || other.counterpartyType == counterpartyType)&&(identical(other.countryCode, countryCode) || other.countryCode == countryCode)&&(identical(other.relatedPartyType, relatedPartyType) || other.relatedPartyType == relatedPartyType)&&(identical(other.entityType, entityType) || other.entityType == entityType)&&const DeepCollectionEquality().equals(other.listAliases, listAliases));
}


@override
int get hashCode => Object.hash(runtimeType,id,name,identifier,identifierType,phone,address,confidenceLevel,isRelatedParty,counterpartyType,countryCode,relatedPartyType,entityType,const DeepCollectionEquality().hash(listAliases));

@override
String toString() {
  return 'Counterparty(id: $id, name: $name, identifier: $identifier, identifierType: $identifierType, phone: $phone, address: $address, confidenceLevel: $confidenceLevel, isRelatedParty: $isRelatedParty, counterpartyType: $counterpartyType, countryCode: $countryCode, relatedPartyType: $relatedPartyType, entityType: $entityType, listAliases: $listAliases)';
}


}

/// @nodoc
abstract mixin class $CounterpartyCopyWith<$Res>  {
  factory $CounterpartyCopyWith(Counterparty value, $Res Function(Counterparty) _then) = _$CounterpartyCopyWithImpl;
@useResult
$Res call({
 CounterpartyId id, String name, String? identifier, IdentifierType identifierType, String? phone, String? address, ConfidenceLevel confidenceLevel, bool? isRelatedParty, String? counterpartyType, String? countryCode, RelatedPartyType? relatedPartyType, EntityType? entityType, List<CounterpartyAlias> listAliases
});




}
/// @nodoc
class _$CounterpartyCopyWithImpl<$Res>
    implements $CounterpartyCopyWith<$Res> {
  _$CounterpartyCopyWithImpl(this._self, this._then);

  final Counterparty _self;
  final $Res Function(Counterparty) _then;

/// Create a copy of Counterparty
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = null,Object? identifier = freezed,Object? identifierType = null,Object? phone = freezed,Object? address = freezed,Object? confidenceLevel = null,Object? isRelatedParty = freezed,Object? counterpartyType = freezed,Object? countryCode = freezed,Object? relatedPartyType = freezed,Object? entityType = freezed,Object? listAliases = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as CounterpartyId,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,identifier: freezed == identifier ? _self.identifier : identifier // ignore: cast_nullable_to_non_nullable
as String?,identifierType: null == identifierType ? _self.identifierType : identifierType // ignore: cast_nullable_to_non_nullable
as IdentifierType,phone: freezed == phone ? _self.phone : phone // ignore: cast_nullable_to_non_nullable
as String?,address: freezed == address ? _self.address : address // ignore: cast_nullable_to_non_nullable
as String?,confidenceLevel: null == confidenceLevel ? _self.confidenceLevel : confidenceLevel // ignore: cast_nullable_to_non_nullable
as ConfidenceLevel,isRelatedParty: freezed == isRelatedParty ? _self.isRelatedParty : isRelatedParty // ignore: cast_nullable_to_non_nullable
as bool?,counterpartyType: freezed == counterpartyType ? _self.counterpartyType : counterpartyType // ignore: cast_nullable_to_non_nullable
as String?,countryCode: freezed == countryCode ? _self.countryCode : countryCode // ignore: cast_nullable_to_non_nullable
as String?,relatedPartyType: freezed == relatedPartyType ? _self.relatedPartyType : relatedPartyType // ignore: cast_nullable_to_non_nullable
as RelatedPartyType?,entityType: freezed == entityType ? _self.entityType : entityType // ignore: cast_nullable_to_non_nullable
as EntityType?,listAliases: null == listAliases ? _self.listAliases : listAliases // ignore: cast_nullable_to_non_nullable
as List<CounterpartyAlias>,
  ));
}

}



/// @nodoc


class _Counterparty extends Counterparty {
  const _Counterparty({required this.id, required this.name, this.identifier, this.identifierType = IdentifierType.none, this.phone, this.address, this.confidenceLevel = ConfidenceLevel.unknown, this.isRelatedParty, this.counterpartyType, this.countryCode, this.relatedPartyType, this.entityType, final  List<CounterpartyAlias> listAliases = const []}): _listAliases = listAliases,super._();
  

@override final  CounterpartyId id;
/// 거래처 정식 명칭
@override final  String name;
/// 고유번호 (사업자번호/주민번호 등)
@override final  String? identifier;
/// 고유번호 유형
@override@JsonKey() final  IdentifierType identifierType;
/// 연락처 (보조 매칭)
@override final  String? phone;
/// 주소 (보조 매칭)
@override final  String? address;
/// 신뢰도 수준 — OCR 매칭 정확성
@override@JsonKey() final  ConfidenceLevel confidenceLevel;
/// 특수관계자 여부 (세무 확장 시 활성화)
@override final  bool? isRelatedParty;
/// 거래처 유형 (개인/법인/정부기관, 원천징수 판정용)
@override final  String? counterpartyType;
/// 국가 코드 (해외 확장 시)
@override final  String? countryCode;
/// 특수관계자 5단계 분류 (v2.0)
@override final  RelatedPartyType? relatedPartyType;
/// 법인/개인 성격 분류 (v2.0)
@override final  EntityType? entityType;
/// OCR 표기 변형 목록 ("스타벅스", "STARBUCKS" 등)
 final  List<CounterpartyAlias> _listAliases;
/// OCR 표기 변형 목록 ("스타벅스", "STARBUCKS" 등)
@override@JsonKey() List<CounterpartyAlias> get listAliases {
  if (_listAliases is EqualUnmodifiableListView) return _listAliases;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_listAliases);
}


/// Create a copy of Counterparty
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CounterpartyCopyWith<_Counterparty> get copyWith => __$CounterpartyCopyWithImpl<_Counterparty>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Counterparty&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.identifier, identifier) || other.identifier == identifier)&&(identical(other.identifierType, identifierType) || other.identifierType == identifierType)&&(identical(other.phone, phone) || other.phone == phone)&&(identical(other.address, address) || other.address == address)&&(identical(other.confidenceLevel, confidenceLevel) || other.confidenceLevel == confidenceLevel)&&(identical(other.isRelatedParty, isRelatedParty) || other.isRelatedParty == isRelatedParty)&&(identical(other.counterpartyType, counterpartyType) || other.counterpartyType == counterpartyType)&&(identical(other.countryCode, countryCode) || other.countryCode == countryCode)&&(identical(other.relatedPartyType, relatedPartyType) || other.relatedPartyType == relatedPartyType)&&(identical(other.entityType, entityType) || other.entityType == entityType)&&const DeepCollectionEquality().equals(other._listAliases, _listAliases));
}


@override
int get hashCode => Object.hash(runtimeType,id,name,identifier,identifierType,phone,address,confidenceLevel,isRelatedParty,counterpartyType,countryCode,relatedPartyType,entityType,const DeepCollectionEquality().hash(_listAliases));

@override
String toString() {
  return 'Counterparty._internal(id: $id, name: $name, identifier: $identifier, identifierType: $identifierType, phone: $phone, address: $address, confidenceLevel: $confidenceLevel, isRelatedParty: $isRelatedParty, counterpartyType: $counterpartyType, countryCode: $countryCode, relatedPartyType: $relatedPartyType, entityType: $entityType, listAliases: $listAliases)';
}


}

/// @nodoc
abstract mixin class _$CounterpartyCopyWith<$Res> implements $CounterpartyCopyWith<$Res> {
  factory _$CounterpartyCopyWith(_Counterparty value, $Res Function(_Counterparty) _then) = __$CounterpartyCopyWithImpl;
@override @useResult
$Res call({
 CounterpartyId id, String name, String? identifier, IdentifierType identifierType, String? phone, String? address, ConfidenceLevel confidenceLevel, bool? isRelatedParty, String? counterpartyType, String? countryCode, RelatedPartyType? relatedPartyType, EntityType? entityType, List<CounterpartyAlias> listAliases
});




}
/// @nodoc
class __$CounterpartyCopyWithImpl<$Res>
    implements _$CounterpartyCopyWith<$Res> {
  __$CounterpartyCopyWithImpl(this._self, this._then);

  final _Counterparty _self;
  final $Res Function(_Counterparty) _then;

/// Create a copy of Counterparty
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,Object? identifier = freezed,Object? identifierType = null,Object? phone = freezed,Object? address = freezed,Object? confidenceLevel = null,Object? isRelatedParty = freezed,Object? counterpartyType = freezed,Object? countryCode = freezed,Object? relatedPartyType = freezed,Object? entityType = freezed,Object? listAliases = null,}) {
  return _then(_Counterparty(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as CounterpartyId,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,identifier: freezed == identifier ? _self.identifier : identifier // ignore: cast_nullable_to_non_nullable
as String?,identifierType: null == identifierType ? _self.identifierType : identifierType // ignore: cast_nullable_to_non_nullable
as IdentifierType,phone: freezed == phone ? _self.phone : phone // ignore: cast_nullable_to_non_nullable
as String?,address: freezed == address ? _self.address : address // ignore: cast_nullable_to_non_nullable
as String?,confidenceLevel: null == confidenceLevel ? _self.confidenceLevel : confidenceLevel // ignore: cast_nullable_to_non_nullable
as ConfidenceLevel,isRelatedParty: freezed == isRelatedParty ? _self.isRelatedParty : isRelatedParty // ignore: cast_nullable_to_non_nullable
as bool?,counterpartyType: freezed == counterpartyType ? _self.counterpartyType : counterpartyType // ignore: cast_nullable_to_non_nullable
as String?,countryCode: freezed == countryCode ? _self.countryCode : countryCode // ignore: cast_nullable_to_non_nullable
as String?,relatedPartyType: freezed == relatedPartyType ? _self.relatedPartyType : relatedPartyType // ignore: cast_nullable_to_non_nullable
as RelatedPartyType?,entityType: freezed == entityType ? _self.entityType : entityType // ignore: cast_nullable_to_non_nullable
as EntityType?,listAliases: null == listAliases ? _self._listAliases : listAliases // ignore: cast_nullable_to_non_nullable
as List<CounterpartyAlias>,
  ));
}


}

// dart format on
