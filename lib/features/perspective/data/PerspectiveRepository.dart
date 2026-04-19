import 'dart:convert';

import 'package:drift/drift.dart';

import '../../../core/constants/Enums.dart';
import '../../../core/domain/Perspective.dart' as domain;
import '../../../core/errors/DomainErrors.dart';
import '../../../core/interfaces/IPerspectiveRepository.dart';
import '../../../core/models/TypedId.dart';
import '../../../infrastructure/database/AppDatabase.dart';
import 'PerspectiveDao.dart';

/// IPerspectiveRepository 구현체
class PerspectiveRepository implements IPerspectiveRepository {
  PerspectiveRepository(this._dao);
  final PerspectiveDao _dao;

  @override
  Future<domain.Perspective?> findById(PerspectiveId id) async {
    final row = await _dao.findById(id.value);
    if (row == null) return null;
    return _toDomain(row);
  }

  @override
  Future<List<domain.Perspective>> findByOwner(OwnerId ownerId) async {
    final listRows = await _dao.findByOwner(ownerId.value);
    return listRows.map(_toDomain).toList();
  }

  @override
  Future<List<domain.Perspective>> findSystem() async {
    final listRows = await _dao.findSystem();
    return listRows.map(_toDomain).toList();
  }

  @override
  Future<void> save(domain.Perspective perspective) async {
    // mapDimensionFilters: Map<String, List<DimensionValueId>> → JSON
    final mapDimJson = perspective.mapDimensionFilters.map(
      (k, v) => MapEntry(k, v.map((id) => id.value).toList()),
    );
    // mapAccountAttributeFilters: Map<String, List<String>> → JSON
    final mapAttrJson = perspective.mapAccountAttributeFilters;
    // listTagFilters: List<TagId> → JSON
    final listTagJson = perspective.listTagFilters.map((t) => t.value).toList();

    final companion = PerspectivesCompanion(
      id: perspective.id.value == 0
          ? const Value.absent()
          : Value(perspective.id.value),
      name: Value(perspective.name),
      ownerId: Value(perspective.ownerId.value),
      isSystem: Value(perspective.isSystem),
      dimensionFilters: Value(jsonEncode(mapDimJson)),
      accountAttributeFilters: Value(jsonEncode(mapAttrJson)),
      tagFilters: Value(jsonEncode(listTagJson)),
      recordingDirection: Value(perspective.recordingDirection.name.toUpperCase()),
      baseCurrency: Value(perspective.baseCurrency?.name),
      permissionLevel: Value(perspective.permissionLevel.name.toUpperCase()),
    );

    final existing = await _dao.findById(perspective.id.value);
    if (existing == null) {
      await _dao.insertPerspective(companion);
    } else {
      await _dao.updatePerspective(companion);
    }
  }

  @override
  Future<void> delete(PerspectiveId id) async {
    final row = await _dao.findById(id.value);
    if (row != null && row.isSystem) {
      throw const SystemPresetModificationError();
    }
    await _dao.deletePerspective(id.value);
  }

  /// Drift Perspective row -> domain.Perspective 변환
  domain.Perspective _toDomain(dynamic row) {
    return domain.Perspective(
      id: PerspectiveId(row.id as int),
      name: row.name as String,
      ownerId: OwnerId(row.ownerId as int),
      isSystem: row.isSystem as bool,
      mapDimensionFilters: const {},
      mapAccountAttributeFilters: const {},
      listTagFilters: const [],
      recordingDirection: RecordingDirection.normal,
      baseCurrency: null,
      permissionLevel: PermissionLevel.full,
    );
  }
}
