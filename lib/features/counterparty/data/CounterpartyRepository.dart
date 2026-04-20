import 'package:drift/drift.dart' show Value;

import '../../../core/constants/Enums.dart';
import '../../../core/interfaces/ICounterpartyRepository.dart';
import '../../../core/domain/Counterparty.dart' as domain_cp;
import '../../../core/domain/CounterpartyAlias.dart' as domain_alias;
import '../../../core/models/TypedId.dart';
import '../../../infrastructure/database/AppDatabase.dart';
import 'CounterpartyDao.dart';

/// ICounterpartyRepository 구현체 — CounterpartyDao 주입,
/// Drift DataClass ↔ 도메인 엔티티(Counterparty) 변환 담당.
class CounterpartyRepository implements ICounterpartyRepository {
  CounterpartyRepository(this._dao);

  final CounterpartyDao _dao;

  @override
  Future<domain_cp.Counterparty?> findById(CounterpartyId id) async {
    final row = await _dao.findById(id.value);
    if (row == null) return null;
    return _toDomain(row);
  }

  @override
  Future<domain_cp.Counterparty?> findByAlias(String alias) async {
    final row = await _dao.findByAlias(alias);
    if (row == null) return null;
    return _toDomain(row);
  }

  @override
  Future<List<domain_cp.Counterparty>> search(String query) async {
    final listRows = await _dao.search(query);
    return listRows.map(_toDomain).toList();
  }

  @override
  Future<void> save(domain_cp.Counterparty counterparty) async {
    final existing = await _dao.findById(counterparty.id.value);
    if (existing == null) {
      // INSERT — ID 자동 증가이므로 absent 처리
      await _dao.insertCounterparty(
        CounterpartiesCompanion.insert(
          name: counterparty.name,
          identifier: Value(counterparty.identifier),
          identifierType: Value(counterparty.identifierType.name.toUpperCase()),
          phone: Value(counterparty.phone),
          address: Value(counterparty.address),
          confidenceLevel: Value(
            counterparty.confidenceLevel.name.toUpperCase(),
          ),
          isRelatedParty: Value(counterparty.isRelatedParty),
          counterpartyType: Value(counterparty.counterpartyType),
          countryCode: Value(counterparty.countryCode),
          relatedPartyType: Value(counterparty.relatedPartyType?.name),
          entityType: Value(counterparty.entityType?.name),
        ),
      );
    } else {
      // UPDATE
      await _dao.updateCounterparty(
        CounterpartiesCompanion(
          id: Value(counterparty.id.value),
          name: Value(counterparty.name),
          identifier: Value(counterparty.identifier),
          identifierType: Value(
            counterparty.identifierType.name.toUpperCase(),
          ),
          phone: Value(counterparty.phone),
          address: Value(counterparty.address),
          confidenceLevel: Value(
            counterparty.confidenceLevel.name.toUpperCase(),
          ),
          isRelatedParty: Value(counterparty.isRelatedParty),
          counterpartyType: Value(counterparty.counterpartyType),
          countryCode: Value(counterparty.countryCode),
          relatedPartyType: Value(counterparty.relatedPartyType?.name),
          entityType: Value(counterparty.entityType?.name),
        ),
      );
    }
  }

  @override
  Future<bool> isAliasUnique(String alias) {
    return _dao.isAliasUnique(alias);
  }

  @override
  Future<List<domain_cp.Counterparty>> findByRelatedPartyType(
      RelatedPartyType type) async {
    final listRows = await _dao.findByRelatedPartyType(type.name);
    return listRows.map(_toDomain).toList();
  }

  @override
  Future<List<domain_cp.Counterparty>> findRelatedParties() async {
    final listRows = await _dao.findRelatedParties();
    return listRows.map(_toDomain).toList();
  }

  // ---------------------------------------------------------------------------
  // Drift DataClass → 도메인 엔티티 변환
  // ---------------------------------------------------------------------------

  domain_cp.Counterparty _toDomain(CounterpartyWithAliases row) {
    final c = row.counterparty;
    return domain_cp.Counterparty.create(
      id: CounterpartyId(c.id),
      name: c.name,
      identifier: c.identifier,
      // enum 변환 — fallback 없이 byName 사용 (데이터 무결성 보장)
      identifierType: domain_cp.IdentifierType.values.byName(
        c.identifierType.toLowerCase(),
      ),
      phone: c.phone,
      address: c.address,
      confidenceLevel: domain_cp.ConfidenceLevel.values.byName(
        c.confidenceLevel.toLowerCase(),
      ),
      isRelatedParty: c.isRelatedParty,
      counterpartyType: c.counterpartyType,
      countryCode: c.countryCode,
      relatedPartyType: c.relatedPartyType != null
          ? RelatedPartyType.values.byName(c.relatedPartyType!)
          : null,
      entityType: c.entityType != null
          ? EntityType.values.byName(c.entityType!)
          : null,
      listAliases: row.listAliases
          .map(
            (a) => domain_alias.CounterpartyAlias(
              id: a.id,
              counterpartyId: CounterpartyId(a.counterpartyId),
              alias: a.alias,
            ),
          )
          .toList(),
    );
  }
}
