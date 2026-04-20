import 'dart:convert';

import '../../../core/interfaces/ISettlementSnapshotRepository.dart';
import 'SettlementSnapshotDao.dart';

/// ISettlementSnapshotRepository 구현체 — Drift DAO 래핑
class SettlementSnapshotRepository implements ISettlementSnapshotRepository {
  SettlementSnapshotRepository({required SettlementSnapshotDao dao}) : _dao = dao;

  final SettlementSnapshotDao _dao;

  @override
  Future<void> saveSnapshot(int periodId, String snapshotType, Map<String, dynamic> data) {
    final strJson = jsonEncode(data);
    return _dao.saveSnapshot(periodId, snapshotType, strJson);
  }

  @override
  Future<Map<String, dynamic>?> findSnapshot(int periodId, String snapshotType) async {
    final row = await _dao.findSnapshot(periodId, snapshotType);
    if (row == null) return null;
    return jsonDecode(row.data) as Map<String, dynamic>;
  }

  @override
  Future<List<String>> findSnapshotTypes(int periodId) {
    return _dao.findSnapshotTypes(periodId);
  }

  @override
  Future<void> deleteByPeriod(int periodId) {
    return _dao.deleteByPeriod(periodId);
  }
}
