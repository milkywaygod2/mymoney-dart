import '../../../core/interfaces/ICounterpartyMatcher.dart';
import '../../../core/models/TypedId.dart';
import 'CounterpartyDao.dart';

/// ICounterpartyMatcher 구현체 — alias DB 기반 텍스트 매칭.
///
/// 매칭 순서:
///   1순위: rawText와 alias가 정확히 일치 (confidence: 1.0)
///   2순위: alias가 rawText를 포함하거나 rawText가 alias를 포함 (confidence: 0.7)
///
/// Classification BC → Counterparty BC 연동 계약(ICounterpartyMatcher) 구현체.
class CounterpartyMatcher implements ICounterpartyMatcher {
  CounterpartyMatcher(this._dao);

  final CounterpartyDao _dao;

  @override
  Future<CounterpartyMatch?> matchByText(String rawText) async {
    if (rawText.isEmpty) return null;

    final strNormalized = rawText.trim();

    // 1순위: 정확히 일치하는 alias 탐색
    final exactRow = await _dao.findByAlias(strNormalized);
    if (exactRow != null) {
      return CounterpartyMatch(
        counterpartyId: CounterpartyId(exactRow.counterparty.id),
        matchedAlias: strNormalized,
        confidence: 1.0,
      );
    }

    // 2순위: 부분 일치 — search()의 LIKE 쿼리를 활용
    final listPartial = await _dao.search(strNormalized);
    if (listPartial.isEmpty) return null;

    // 검색 결과 중 첫 번째를 선택 (name LIKE 우선, alias LIKE 차순)
    final bestRow = listPartial.first;

    // 매칭된 alias 찾기 — rawText를 포함하는 alias 중 최초 항목
    final strLower = strNormalized.toLowerCase();
    final matchedAlias = bestRow.listAliases
        .where(
          (a) =>
              a.alias.toLowerCase().contains(strLower) ||
              strLower.contains(a.alias.toLowerCase()),
        )
        .map((a) => a.alias)
        .firstOrNull;

    return CounterpartyMatch(
      counterpartyId: CounterpartyId(bestRow.counterparty.id),
      // alias 없으면 거래처 이름으로 대체
      matchedAlias: matchedAlias ?? bestRow.counterparty.name,
      confidence: 0.7,
    );
  }
}
