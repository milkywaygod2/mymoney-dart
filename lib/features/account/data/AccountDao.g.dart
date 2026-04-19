// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'AccountDao.dart';

// ignore_for_file: type=lint
mixin _$AccountDaoMixin on DatabaseAccessor<AppDatabase> {
  $DimensionValuesTable get dimensionValues => attachedDatabase.dimensionValues;
  $OwnersTable get owners => attachedDatabase.owners;
  $AccountsTable get accounts => attachedDatabase.accounts;
  $AccountOwnerSharesTable get accountOwnerShares =>
      attachedDatabase.accountOwnerShares;
  AccountDaoManager get managers => AccountDaoManager(this);
}

class AccountDaoManager {
  final _$AccountDaoMixin _db;
  AccountDaoManager(this._db);
  $$DimensionValuesTableTableManager get dimensionValues =>
      $$DimensionValuesTableTableManager(
        _db.attachedDatabase,
        _db.dimensionValues,
      );
  $$OwnersTableTableManager get owners =>
      $$OwnersTableTableManager(_db.attachedDatabase, _db.owners);
  $$AccountsTableTableManager get accounts =>
      $$AccountsTableTableManager(_db.attachedDatabase, _db.accounts);
  $$AccountOwnerSharesTableTableManager get accountOwnerShares =>
      $$AccountOwnerSharesTableTableManager(
        _db.attachedDatabase,
        _db.accountOwnerShares,
      );
}
