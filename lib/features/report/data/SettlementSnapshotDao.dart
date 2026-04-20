import 'package:drift/drift.dart';

import '../../../infrastructure/database/AppDatabase.dart';
import '../../../infrastructure/database/tables/SettlementSnapshotTable.dart';

part 'SettlementSnapshotDao.g.dart';

/// SettlementSnapshots Drift DAO — 결산 스냅샷 CRUD
@DriftAccessor(tables: [SettlementSnapshots])
class SettlementSnapshotDao extends DatabaseAccessor<AppDatabase>
    with _$SettlementSnapshotDaoMixin {
  SettlementSnapshotDao(super.db);

  /// 스냅샷 저장 (동일 periodId+snapshotType 존재 시 덮어쓰기)
  Future<void> saveSnapshot(int periodId, String snapshotType, String dataJson) async {
    // 기존 삭제 후 재삽입 (upsert 대용)
    await (delete(settlementSnapshots)
          ..where((s) => s.periodId.equals(periodId) & s.snapshotType.equals(snapshotType)))
        .go();
    await into(settlementSnapshots).insert(
      SettlementSnapshotsCompanion(
        periodId: Value(periodId),
        snapshotType: Value(snapshotType),
        data: Value(dataJson),
      ),
    );
  }

  /// 특정 기간+유형의 스냅샷 조회
  Future<SettlementSnapshot?> findSnapshot(int periodId, String snapshotType) {
    return (select(settlementSnapshots)
          ..where((s) => s.periodId.equals(periodId) & s.snapshotType.equals(snapshotType))
          ..limit(1))
        .getSingleOrNull();
  }

  /// 특정 기간에 저장된 스냅샷 유형 목록
  Future<List<String>> findSnapshotTypes(int periodId) async {
    final listRows = await (select(settlementSnapshots)
          ..where((s) => s.periodId.equals(periodId)))
        .get();
    return listRows.map((r) => r.snapshotType).toList();
  }

  /// 특정 기간의 모든 스냅샷 삭제 (결산 재실행 시)
  Future<void> deleteByPeriod(int periodId) {
    return (delete(settlementSnapshots)
          ..where((s) => s.periodId.equals(periodId)))
        .go();
  }
}
