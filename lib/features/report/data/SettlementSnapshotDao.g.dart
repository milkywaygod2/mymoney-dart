// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'SettlementSnapshotDao.dart';

// ignore_for_file: type=lint
mixin _$SettlementSnapshotDaoMixin on DatabaseAccessor<AppDatabase> {
  $FiscalPeriodsTable get fiscalPeriods => attachedDatabase.fiscalPeriods;
  $SettlementSnapshotsTable get settlementSnapshots =>
      attachedDatabase.settlementSnapshots;
  SettlementSnapshotDaoManager get managers =>
      SettlementSnapshotDaoManager(this);
}

class SettlementSnapshotDaoManager {
  final _$SettlementSnapshotDaoMixin _db;
  SettlementSnapshotDaoManager(this._db);
  $$FiscalPeriodsTableTableManager get fiscalPeriods =>
      $$FiscalPeriodsTableTableManager(_db.attachedDatabase, _db.fiscalPeriods);
  $$SettlementSnapshotsTableTableManager get settlementSnapshots =>
      $$SettlementSnapshotsTableTableManager(
        _db.attachedDatabase,
        _db.settlementSnapshots,
      );
}
