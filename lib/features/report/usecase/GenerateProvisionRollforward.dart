import '../../../core/models/TypedId.dart';
import '../../journal/data/TransactionDao.dart';

/// 충당부채 롤포워드 행 항목
class ProvisionRollforwardItem {
  const ProvisionRollforwardItem({
    required this.accountId,
    required this.accountName,
    required this.beginningBalance,
    required this.additions,
    required this.utilized,
    required this.reversed,
    required this.endingBalance,
  });

  final int accountId;
  final String accountName;

  /// 기초잔액
  final int beginningBalance;

  /// 전입 (추가 설정)
  final int additions;

  /// 사용 (실제 발생)
  final int utilized;

  /// 환입 (미사용분 환입)
  final int reversed;

  /// 기말잔액 = 기초 + 전입 - 사용 - 환입
  final int endingBalance;
}

/// 충당부채 롤포워드 결과
class ProvisionRollforwardResult {
  const ProvisionRollforwardResult({
    required this.periodId,
    required this.listItems,
    required this.totalBeginning,
    required this.totalEnding,
  });

  final int periodId;
  final List<ProvisionRollforwardItem> listItems;
  final int totalBeginning;
  final int totalEnding;
}

/// 충당부채 롤포워드 뷰 생성 UseCase (v2.0)
///
/// 대상: LIABILITY.*.PROVISIONS 경로 계정
/// 구조: 기초잔액 + 전입(추가설정) - 사용(실제발생) - 환입(미사용분) = 기말잔액
///
/// 전입/사용/환입 구분: JEL의 차변/대변 방향으로 추론
/// - 대변 증가 (부채 증가) = 전입
/// - 차변 증가 (부채 감소) = 사용 또는 환입
///   - 적요에 "환입" 포함 → 환입
///   - 그 외 → 사용
class GenerateProvisionRollforward {
  GenerateProvisionRollforward({required this.transactionDao});

  final TransactionDao transactionDao;

  /// 충당부채 롤포워드 생성
  ///
  /// [periodId] 대상 결산 기간
  /// [previousPeriodId] 전기 (기초잔액 산출용). null이면 기초=0
  Future<ProvisionRollforwardResult> execute({
    required PeriodId periodId,
    PeriodId? previousPeriodId,
  }) async {
    // 1. 전기 잔액 ��회 (기초잔액)
    final Map<int, int> mapBeginning;
    if (previousPeriodId != null) {
      mapBeginning = await transactionDao.calculateBalancesByAccount(
        periodId: previousPeriodId.value,
      );
    } else {
      mapBeginning = {};
    }

    // 2. 당기 잔액 조회 (기말잔액)
    final mapEnding = await transactionDao.calculateBalancesByAccount(
      periodId: periodId.value,
    );

    // 3. 충당부채 계정 식별
    // 부채 계정의 잔액은 대변(음수)으로 표시됨 → 절대값 사용
    // TODO: AccountRepository에서 path LIKE 'LIABILITY.%.PROVISIONS%' 필터
    // 현재는 전체 잔액에서 음수(부채 방향)인 것을 충당부채로 간주하는 간소화 구현
    // 실제 구현에서는 DimensionPath 기반 필터 필요

    final listItems = <ProvisionRollforwardItem>[];
    int totalBeginning = 0;
    int totalEnding = 0;

    // 기말 잔액이 있는 계정 중 부채(음수) 계정을 충당부채로 간주 (MVP 간소화)
    for (final entry in mapEnding.entries) {
      final accountId = entry.key;
      final endingRaw = entry.value;

      // 부채 계정은 대변 잔액(음수로 표시)
      if (endingRaw >= 0) continue;

      final beginning = -(mapBeginning[accountId] ?? 0); // 절대값
      final ending = -endingRaw; // 절대값
      final change = ending - beginning;

      // 변동분 분해 (간소화: 양수=전입, 음수=사용/환입)
      final additions = change > 0 ? change : 0;
      final utilized = change < 0 ? -change : 0;

      listItems.add(ProvisionRollforwardItem(
        accountId: accountId,
        accountName: '충당부채 #$accountId', // TODO: Account 이름 조회
        beginningBalance: beginning,
        additions: additions,
        utilized: utilized,
        reversed: 0, // TODO: 적요 기반 환입 구분
        endingBalance: ending,
      ));

      totalBeginning += beginning;
      totalEnding += ending;
    }

    return ProvisionRollforwardResult(
      periodId: periodId.value,
      listItems: listItems,
      totalBeginning: totalBeginning,
      totalEnding: totalEnding,
    );
  }
}
