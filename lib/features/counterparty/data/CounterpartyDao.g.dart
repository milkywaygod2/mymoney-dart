// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'CounterpartyDao.dart';

// ignore_for_file: type=lint
mixin _$CounterpartyDaoMixin on DatabaseAccessor<AppDatabase> {
  $CounterpartiesTable get counterparties => attachedDatabase.counterparties;
  $CounterpartyAliasesTable get counterpartyAliases =>
      attachedDatabase.counterpartyAliases;
  CounterpartyDaoManager get managers => CounterpartyDaoManager(this);
}

class CounterpartyDaoManager {
  final _$CounterpartyDaoMixin _db;
  CounterpartyDaoManager(this._db);
  $$CounterpartiesTableTableManager get counterparties =>
      $$CounterpartiesTableTableManager(
        _db.attachedDatabase,
        _db.counterparties,
      );
  $$CounterpartyAliasesTableTableManager get counterpartyAliases =>
      $$CounterpartyAliasesTableTableManager(
        _db.attachedDatabase,
        _db.counterpartyAliases,
      );
}
