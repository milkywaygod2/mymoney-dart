import 'package:drift/drift.dart';

import '../../../infrastructure/database/AppDatabase.dart';
import '../../../infrastructure/database/tables/CounterpartyTable.dart';
import '../../../infrastructure/database/tables/CounterpartyAliasTable.dart';

part 'CounterpartyDao.g.dart';

/// Counterparty + Aliases 조인 결과 데이터 클래스
class CounterpartyWithAliases {
  const CounterpartyWithAliases({
    required this.counterparty,
    required this.listAliases,
  });

  final Counterparty counterparty;
  final List<CounterpartyAliase> listAliases;
}

/// Counterparty Drift DAO — CRUD + alias 관리 + 검색
@DriftAccessor(tables: [Counterparties, CounterpartyAliases])
class CounterpartyDao extends DatabaseAccessor<AppDatabase>
    with _$CounterpartyDaoMixin {
  CounterpartyDao(super.db);

  // ---------------------------------------------------------------------------
  // CRUD
  // ---------------------------------------------------------------------------

  /// 거래처 삽입 — 자동 증가 ID 반환
  Future<int> insertCounterparty(CounterpartiesCompanion entry) {
    return into(counterparties).insert(entry);
  }

  /// 거래처 수정
  Future<bool> updateCounterparty(CounterpartiesCompanion entry) {
    return update(counterparties).replace(entry);
  }

  /// 거래처 삭제 — alias도 함께 삭제 (FK cascade 보장)
  Future<void> deleteCounterparty(int id) async {
    return transaction(() async {
      await (delete(counterpartyAliases)
            ..where((a) => a.counterpartyId.equals(id)))
          .go();
      await (delete(counterparties)..where((c) => c.id.equals(id))).go();
    });
  }

  // ---------------------------------------------------------------------------
  // Alias 관리
  // ---------------------------------------------------------------------------

  /// 별칭 추가 — 삽입 전 유일성은 Repository에서 검증
  Future<int> addAlias(CounterpartyAliasesCompanion entry) {
    return into(counterpartyAliases).insert(entry);
  }

  /// 별칭 삭제
  Future<int> removeAlias(int counterpartyId, String alias) {
    return (delete(counterpartyAliases)
          ..where(
            (a) =>
                a.counterpartyId.equals(counterpartyId) &
                a.alias.equals(alias),
          ))
        .go();
  }

  /// 거래처에 속한 모든 별칭 조회
  Future<List<CounterpartyAliase>> findAliasesOf(int counterpartyId) {
    return (select(counterpartyAliases)
          ..where((a) => a.counterpartyId.equals(counterpartyId)))
        .get();
  }

  // ---------------------------------------------------------------------------
  // 조회
  // ---------------------------------------------------------------------------

  /// ID로 거래처 + alias 조회
  Future<CounterpartyWithAliases?> findById(int id) async {
    final row = await (select(counterparties)
          ..where((c) => c.id.equals(id)))
        .getSingleOrNull();
    if (row == null) return null;
    return _attachAliases(row);
  }

  /// 별칭으로 거래처 조회 — 정확히 일치하는 alias를 보유한 거래처 반환
  Future<CounterpartyWithAliases?> findByAlias(String alias) async {
    final aliasRow = await (select(counterpartyAliases)
          ..where((a) => a.alias.equals(alias)))
        .getSingleOrNull();
    if (aliasRow == null) return null;
    return findById(aliasRow.counterpartyId);
  }

  /// 이름/별칭 부분 일치 검색
  ///
  /// 1순위: 거래처 name LIKE
  /// 2순위: alias LIKE
  /// 중복 제거 후 반환
  Future<List<CounterpartyWithAliases>> search(String query) async {
    final pattern = '%$query%';

    // 이름 매칭
    final listByName = await (select(counterparties)
          ..where((c) => c.name.like(pattern)))
        .get();

    // alias 매칭 — 이미 이름으로 찾은 ID는 제외
    final setFoundIds = listByName.map((c) => c.id).toSet();
    final listAliasRows = await (select(counterpartyAliases)
          ..where((a) => a.alias.like(pattern)))
        .get();

    // alias 매칭된 거래처 ID 중 중복 제거
    final setAliasCounterpartyIds = listAliasRows
        .map((a) => a.counterpartyId)
        .where((id) => !setFoundIds.contains(id))
        .toSet();

    final listByAlias = setAliasCounterpartyIds.isEmpty
        ? <Counterparty>[]
        : await (select(counterparties)
              ..where(
                (c) => c.id.isIn(setAliasCounterpartyIds),
              ))
            .get();

    final listAll = [...listByName, ...listByAlias];
    return Future.wait(listAll.map(_attachAliases));
  }

  /// 별칭 유일성 확인 — 전체 거래처에서 동일 별칭 존재 여부
  Future<bool> isAliasUnique(String alias) async {
    final count = await (select(counterpartyAliases)
          ..where((a) => a.alias.equals(alias)))
        .get();
    return count.isEmpty;
  }

  // ---------------------------------------------------------------------------
  // 내부 헬퍼
  // ---------------------------------------------------------------------------

  /// 거래처 row에 alias 목록을 붙여 CounterpartyWithAliases로 변환
  Future<CounterpartyWithAliases> _attachAliases(Counterparty row) async {
    final listAliases = await findAliasesOf(row.id);
    return CounterpartyWithAliases(
      counterparty: row,
      listAliases: listAliases,
    );
  }
}
