// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'Perspective.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$Perspective {

 PerspectiveId get id; String get name; OwnerId get ownerId;/// 시스템 기본 프리셋 여부 (true → 삭제/수정 불가)
 bool get isSystem;/// T1/T2 분류축 필터 (DimensionType → 선택된 DimensionValueId 목록)
 Map<String, List<DimensionValueId>> get mapDimensionFilters;/// Account 속성 필터 (상품구분/금융사 등)
 Map<String, List<String>> get mapAccountAttributeFilters;/// T3 태그 필터
 List<TagId> get listTagFilters;/// 기록 방향 — 정부회계 모드에서 반전
 RecordingDirection get recordingDirection;/// 기준 통화 (null = 시스템 기본 통화)
 CurrencyCode? get baseCurrency;/// 권한 수준
 PermissionLevel get permissionLevel;
/// Create a copy of Perspective
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PerspectiveCopyWith<Perspective> get copyWith => _$PerspectiveCopyWithImpl<Perspective>(this as Perspective, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Perspective&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.ownerId, ownerId) || other.ownerId == ownerId)&&(identical(other.isSystem, isSystem) || other.isSystem == isSystem)&&const DeepCollectionEquality().equals(other.mapDimensionFilters, mapDimensionFilters)&&const DeepCollectionEquality().equals(other.mapAccountAttributeFilters, mapAccountAttributeFilters)&&const DeepCollectionEquality().equals(other.listTagFilters, listTagFilters)&&(identical(other.recordingDirection, recordingDirection) || other.recordingDirection == recordingDirection)&&(identical(other.baseCurrency, baseCurrency) || other.baseCurrency == baseCurrency)&&(identical(other.permissionLevel, permissionLevel) || other.permissionLevel == permissionLevel));
}


@override
int get hashCode => Object.hash(runtimeType,id,name,ownerId,isSystem,const DeepCollectionEquality().hash(mapDimensionFilters),const DeepCollectionEquality().hash(mapAccountAttributeFilters),const DeepCollectionEquality().hash(listTagFilters),recordingDirection,baseCurrency,permissionLevel);

@override
String toString() {
  return 'Perspective(id: $id, name: $name, ownerId: $ownerId, isSystem: $isSystem, mapDimensionFilters: $mapDimensionFilters, mapAccountAttributeFilters: $mapAccountAttributeFilters, listTagFilters: $listTagFilters, recordingDirection: $recordingDirection, baseCurrency: $baseCurrency, permissionLevel: $permissionLevel)';
}


}

/// @nodoc
abstract mixin class $PerspectiveCopyWith<$Res>  {
  factory $PerspectiveCopyWith(Perspective value, $Res Function(Perspective) _then) = _$PerspectiveCopyWithImpl;
@useResult
$Res call({
 PerspectiveId id, String name, OwnerId ownerId, bool isSystem, Map<String, List<DimensionValueId>> mapDimensionFilters, Map<String, List<String>> mapAccountAttributeFilters, List<TagId> listTagFilters, RecordingDirection recordingDirection, CurrencyCode? baseCurrency, PermissionLevel permissionLevel
});




}
/// @nodoc
class _$PerspectiveCopyWithImpl<$Res>
    implements $PerspectiveCopyWith<$Res> {
  _$PerspectiveCopyWithImpl(this._self, this._then);

  final Perspective _self;
  final $Res Function(Perspective) _then;

/// Create a copy of Perspective
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = null,Object? ownerId = null,Object? isSystem = null,Object? mapDimensionFilters = null,Object? mapAccountAttributeFilters = null,Object? listTagFilters = null,Object? recordingDirection = null,Object? baseCurrency = freezed,Object? permissionLevel = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as PerspectiveId,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,ownerId: null == ownerId ? _self.ownerId : ownerId // ignore: cast_nullable_to_non_nullable
as OwnerId,isSystem: null == isSystem ? _self.isSystem : isSystem // ignore: cast_nullable_to_non_nullable
as bool,mapDimensionFilters: null == mapDimensionFilters ? _self.mapDimensionFilters : mapDimensionFilters // ignore: cast_nullable_to_non_nullable
as Map<String, List<DimensionValueId>>,mapAccountAttributeFilters: null == mapAccountAttributeFilters ? _self.mapAccountAttributeFilters : mapAccountAttributeFilters // ignore: cast_nullable_to_non_nullable
as Map<String, List<String>>,listTagFilters: null == listTagFilters ? _self.listTagFilters : listTagFilters // ignore: cast_nullable_to_non_nullable
as List<TagId>,recordingDirection: null == recordingDirection ? _self.recordingDirection : recordingDirection // ignore: cast_nullable_to_non_nullable
as RecordingDirection,baseCurrency: freezed == baseCurrency ? _self.baseCurrency : baseCurrency // ignore: cast_nullable_to_non_nullable
as CurrencyCode?,permissionLevel: null == permissionLevel ? _self.permissionLevel : permissionLevel // ignore: cast_nullable_to_non_nullable
as PermissionLevel,
  ));
}

}


/// Adds pattern-matching-related methods to [Perspective].
extension PerspectivePatterns on Perspective {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Perspective value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Perspective() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Perspective value)  $default,){
final _that = this;
switch (_that) {
case _Perspective():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Perspective value)?  $default,){
final _that = this;
switch (_that) {
case _Perspective() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( PerspectiveId id,  String name,  OwnerId ownerId,  bool isSystem,  Map<String, List<DimensionValueId>> mapDimensionFilters,  Map<String, List<String>> mapAccountAttributeFilters,  List<TagId> listTagFilters,  RecordingDirection recordingDirection,  CurrencyCode? baseCurrency,  PermissionLevel permissionLevel)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Perspective() when $default != null:
return $default(_that.id,_that.name,_that.ownerId,_that.isSystem,_that.mapDimensionFilters,_that.mapAccountAttributeFilters,_that.listTagFilters,_that.recordingDirection,_that.baseCurrency,_that.permissionLevel);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( PerspectiveId id,  String name,  OwnerId ownerId,  bool isSystem,  Map<String, List<DimensionValueId>> mapDimensionFilters,  Map<String, List<String>> mapAccountAttributeFilters,  List<TagId> listTagFilters,  RecordingDirection recordingDirection,  CurrencyCode? baseCurrency,  PermissionLevel permissionLevel)  $default,) {final _that = this;
switch (_that) {
case _Perspective():
return $default(_that.id,_that.name,_that.ownerId,_that.isSystem,_that.mapDimensionFilters,_that.mapAccountAttributeFilters,_that.listTagFilters,_that.recordingDirection,_that.baseCurrency,_that.permissionLevel);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( PerspectiveId id,  String name,  OwnerId ownerId,  bool isSystem,  Map<String, List<DimensionValueId>> mapDimensionFilters,  Map<String, List<String>> mapAccountAttributeFilters,  List<TagId> listTagFilters,  RecordingDirection recordingDirection,  CurrencyCode? baseCurrency,  PermissionLevel permissionLevel)?  $default,) {final _that = this;
switch (_that) {
case _Perspective() when $default != null:
return $default(_that.id,_that.name,_that.ownerId,_that.isSystem,_that.mapDimensionFilters,_that.mapAccountAttributeFilters,_that.listTagFilters,_that.recordingDirection,_that.baseCurrency,_that.permissionLevel);case _:
  return null;

}
}

}

/// @nodoc


class _Perspective extends Perspective {
  const _Perspective({required this.id, required this.name, required this.ownerId, this.isSystem = false, final  Map<String, List<DimensionValueId>> mapDimensionFilters = const {}, final  Map<String, List<String>> mapAccountAttributeFilters = const {}, final  List<TagId> listTagFilters = const [], this.recordingDirection = RecordingDirection.normal, this.baseCurrency, this.permissionLevel = PermissionLevel.full}): _mapDimensionFilters = mapDimensionFilters,_mapAccountAttributeFilters = mapAccountAttributeFilters,_listTagFilters = listTagFilters,super._();
  

@override final  PerspectiveId id;
@override final  String name;
@override final  OwnerId ownerId;
/// 시스템 기본 프리셋 여부 (true → 삭제/수정 불가)
@override@JsonKey() final  bool isSystem;
/// T1/T2 분류축 필터 (DimensionType → 선택된 DimensionValueId 목록)
 final  Map<String, List<DimensionValueId>> _mapDimensionFilters;
/// T1/T2 분류축 필터 (DimensionType → 선택된 DimensionValueId 목록)
@override@JsonKey() Map<String, List<DimensionValueId>> get mapDimensionFilters {
  if (_mapDimensionFilters is EqualUnmodifiableMapView) return _mapDimensionFilters;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(_mapDimensionFilters);
}

/// Account 속성 필터 (상품구분/금융사 등)
 final  Map<String, List<String>> _mapAccountAttributeFilters;
/// Account 속성 필터 (상품구분/금융사 등)
@override@JsonKey() Map<String, List<String>> get mapAccountAttributeFilters {
  if (_mapAccountAttributeFilters is EqualUnmodifiableMapView) return _mapAccountAttributeFilters;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(_mapAccountAttributeFilters);
}

/// T3 태그 필터
 final  List<TagId> _listTagFilters;
/// T3 태그 필터
@override@JsonKey() List<TagId> get listTagFilters {
  if (_listTagFilters is EqualUnmodifiableListView) return _listTagFilters;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_listTagFilters);
}

/// 기록 방향 — 정부회계 모드에서 반전
@override@JsonKey() final  RecordingDirection recordingDirection;
/// 기준 통화 (null = 시스템 기본 통화)
@override final  CurrencyCode? baseCurrency;
/// 권한 수준
@override@JsonKey() final  PermissionLevel permissionLevel;

/// Create a copy of Perspective
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PerspectiveCopyWith<_Perspective> get copyWith => __$PerspectiveCopyWithImpl<_Perspective>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Perspective&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.ownerId, ownerId) || other.ownerId == ownerId)&&(identical(other.isSystem, isSystem) || other.isSystem == isSystem)&&const DeepCollectionEquality().equals(other._mapDimensionFilters, _mapDimensionFilters)&&const DeepCollectionEquality().equals(other._mapAccountAttributeFilters, _mapAccountAttributeFilters)&&const DeepCollectionEquality().equals(other._listTagFilters, _listTagFilters)&&(identical(other.recordingDirection, recordingDirection) || other.recordingDirection == recordingDirection)&&(identical(other.baseCurrency, baseCurrency) || other.baseCurrency == baseCurrency)&&(identical(other.permissionLevel, permissionLevel) || other.permissionLevel == permissionLevel));
}


@override
int get hashCode => Object.hash(runtimeType,id,name,ownerId,isSystem,const DeepCollectionEquality().hash(_mapDimensionFilters),const DeepCollectionEquality().hash(_mapAccountAttributeFilters),const DeepCollectionEquality().hash(_listTagFilters),recordingDirection,baseCurrency,permissionLevel);

@override
String toString() {
  return 'Perspective(id: $id, name: $name, ownerId: $ownerId, isSystem: $isSystem, mapDimensionFilters: $mapDimensionFilters, mapAccountAttributeFilters: $mapAccountAttributeFilters, listTagFilters: $listTagFilters, recordingDirection: $recordingDirection, baseCurrency: $baseCurrency, permissionLevel: $permissionLevel)';
}


}

/// @nodoc
abstract mixin class _$PerspectiveCopyWith<$Res> implements $PerspectiveCopyWith<$Res> {
  factory _$PerspectiveCopyWith(_Perspective value, $Res Function(_Perspective) _then) = __$PerspectiveCopyWithImpl;
@override @useResult
$Res call({
 PerspectiveId id, String name, OwnerId ownerId, bool isSystem, Map<String, List<DimensionValueId>> mapDimensionFilters, Map<String, List<String>> mapAccountAttributeFilters, List<TagId> listTagFilters, RecordingDirection recordingDirection, CurrencyCode? baseCurrency, PermissionLevel permissionLevel
});




}
/// @nodoc
class __$PerspectiveCopyWithImpl<$Res>
    implements _$PerspectiveCopyWith<$Res> {
  __$PerspectiveCopyWithImpl(this._self, this._then);

  final _Perspective _self;
  final $Res Function(_Perspective) _then;

/// Create a copy of Perspective
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,Object? ownerId = null,Object? isSystem = null,Object? mapDimensionFilters = null,Object? mapAccountAttributeFilters = null,Object? listTagFilters = null,Object? recordingDirection = null,Object? baseCurrency = freezed,Object? permissionLevel = null,}) {
  return _then(_Perspective(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as PerspectiveId,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,ownerId: null == ownerId ? _self.ownerId : ownerId // ignore: cast_nullable_to_non_nullable
as OwnerId,isSystem: null == isSystem ? _self.isSystem : isSystem // ignore: cast_nullable_to_non_nullable
as bool,mapDimensionFilters: null == mapDimensionFilters ? _self._mapDimensionFilters : mapDimensionFilters // ignore: cast_nullable_to_non_nullable
as Map<String, List<DimensionValueId>>,mapAccountAttributeFilters: null == mapAccountAttributeFilters ? _self._mapAccountAttributeFilters : mapAccountAttributeFilters // ignore: cast_nullable_to_non_nullable
as Map<String, List<String>>,listTagFilters: null == listTagFilters ? _self._listTagFilters : listTagFilters // ignore: cast_nullable_to_non_nullable
as List<TagId>,recordingDirection: null == recordingDirection ? _self.recordingDirection : recordingDirection // ignore: cast_nullable_to_non_nullable
as RecordingDirection,baseCurrency: freezed == baseCurrency ? _self.baseCurrency : baseCurrency // ignore: cast_nullable_to_non_nullable
as CurrencyCode?,permissionLevel: null == permissionLevel ? _self.permissionLevel : permissionLevel // ignore: cast_nullable_to_non_nullable
as PermissionLevel,
  ));
}


}

// dart format on
