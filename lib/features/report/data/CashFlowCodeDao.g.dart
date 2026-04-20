// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'CashFlowCodeDao.dart';

// ignore_for_file: type=lint
mixin _$CashFlowCodeDaoMixin on DatabaseAccessor<AppDatabase> {
  $CashFlowCodesTable get cashFlowCodes => attachedDatabase.cashFlowCodes;
  CashFlowCodeDaoManager get managers => CashFlowCodeDaoManager(this);
}

class CashFlowCodeDaoManager {
  final _$CashFlowCodeDaoMixin _db;
  CashFlowCodeDaoManager(this._db);
  $$CashFlowCodesTableTableManager get cashFlowCodes =>
      $$CashFlowCodesTableTableManager(_db.attachedDatabase, _db.cashFlowCodes);
}
