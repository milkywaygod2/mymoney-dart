// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'LegalParameterDao.dart';

// ignore_for_file: type=lint
mixin _$LegalParameterDaoMixin on DatabaseAccessor<AppDatabase> {
  $LegalParametersTable get legalParameters => attachedDatabase.legalParameters;
  LegalParameterDaoManager get managers => LegalParameterDaoManager(this);
}

class LegalParameterDaoManager {
  final _$LegalParameterDaoMixin _db;
  LegalParameterDaoManager(this._db);
  $$LegalParametersTableTableManager get legalParameters =>
      $$LegalParametersTableTableManager(
        _db.attachedDatabase,
        _db.legalParameters,
      );
}
