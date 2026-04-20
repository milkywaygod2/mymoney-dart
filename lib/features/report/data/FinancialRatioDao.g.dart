// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'FinancialRatioDao.dart';

// ignore_for_file: type=lint
mixin _$FinancialRatioDaoMixin on DatabaseAccessor<AppDatabase> {
  $FiscalPeriodsTable get fiscalPeriods => attachedDatabase.fiscalPeriods;
  $FinancialRatioSnapshotsTable get financialRatioSnapshots =>
      attachedDatabase.financialRatioSnapshots;
  FinancialRatioDaoManager get managers => FinancialRatioDaoManager(this);
}

class FinancialRatioDaoManager {
  final _$FinancialRatioDaoMixin _db;
  FinancialRatioDaoManager(this._db);
  $$FiscalPeriodsTableTableManager get fiscalPeriods =>
      $$FiscalPeriodsTableTableManager(_db.attachedDatabase, _db.fiscalPeriods);
  $$FinancialRatioSnapshotsTableTableManager get financialRatioSnapshots =>
      $$FinancialRatioSnapshotsTableTableManager(
        _db.attachedDatabase,
        _db.financialRatioSnapshots,
      );
}
