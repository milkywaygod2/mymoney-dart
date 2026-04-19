# 태스크 상황판 (CW_STATE_TASK)

[CURRENT_PHASE: 7]
[CURRENT_WAVE: 7R+11]

## 완료 이력

| Wave | Subject | 내용 | 커밋 | 파일 수 |
|------|---------|------|------|--------|
| W0 | 스캐폴드 | DI/Router/Theme/4탭 네비게이션 | 16849fb | 5 |
| W1 | S01 | core/ 엔티티+VO+인터페이스+enum | 73993db | 30 |
| W2 | S02 | Drift 16테이블+시드+Account CRUD+BLoC | 63ab375 | 25 |
| W3 | S03a | Transaction DAO/Repo/UseCase/BLoC/Page | c6ceddb | 11 |
| W4 | S03b+S04 | 역분개/중복탐지/계정 UseCase | fcb01b2 | 4 |
| W5 | S05 | Flow Card+거래 입력 UI+Split View | 24f0c11 | 3 |
| W6 | S06 | Perspective+Lens Switcher | fdc0f4d | 9 |
| W7(일부) | S07 | Counterparty CRUD+alias | 07cafd4 | — |
| W8(일부) | S08a | 세무조정 규칙엔진 | 3472273 | — |
| W9 | S08b | 결산 프로세스 5단계 | — | — |
| QA | v1.0 | 6 iteration, 34건 수정, 연속 2회 풀패스 | 3611b18 | — |
| — | v2.0 설계 | 아키텍처 v2.0 + 플랜 v2.0 + TF 3라운드 | 815a2de | — |

---

## 태스크 상황판 v2.0

### W7R: 외환차손익 (즉시 착수)

| # | 태스크 | 할당 | 상태 | 비고 |
|---|--------|------|------|------|
| 7R-1 | ExchangeRateDao purpose AVERAGE/CLOSING 지원 | Grace-3 | 대기 | |
| 7R-2 | EvaluateUnrealizedFxGain isFxRevalTarget 기반 | Grace-3 | 대기 | |
| 7R-3 | ExchangeRates 테이블 purpose 값 확장 | Arjun-3 | 대기 | |

### W11: 스키마 마이그레이션 + 도메인 확장 (즉시 착수)

| # | 태스크 | 할당 | 상태 | 비고 |
|---|--------|------|------|------|
| 11-A1 | Counterparties +relatedPartyType +entityType | Arjun-3 | 대기 | |
| 11-A2 | Transactions +referenceNo +reversalType +source확장 | Arjun-3 | 대기 | |
| 11-A3 | FiscalPeriods +isClosed +note | Grace-3 | 대기 | |
| 11-A4 | FinancialRatioSnapshots 신규 테이블 | Grace-3 | 대기 | |
| 11-A5 | Accounts +cashFlowCategory +isFxRevalTarget +vendorRequirement | Omar-3 | 대기 | |
| 11-A6 | CashFlowCodes 신규 테이블 + 시드 113행 | Omar-3 | 대기 | |
| 11-A7 | CashFlowMappings 신규 테이블 | Omar-3 | 대기 | |
| 11-A8 | SettlementSnapshots 신규 테이블 | Omar-3 | 대기 | |
| 11-A9 | 인덱스 8건 추가 | 공동 | 대기 | |
| 11-B1 | Enums +RelatedPartyType/EntityType/ReversalType | Arjun-3 | 대기 | |
| 11-B2 | Counterparty.dart INV-C4/C5 + Transaction.dart INV-T8/T9 | Arjun-3 | 대기 | |
| 11-B3 | FinancialRatio VO + PeriodComparison VO | Grace-3 | 대기 | |
| 11-B4 | Enums +ComparisonType/RatioCategory | Grace-3 | 대기 | |
| 11-B5 | CashFlowLineItem VO + EquityChangeItem VO | Omar-3 | 대기 | |
| 11-B6 | Enums +CashFlowCategory/VendorRequirement/CfAccountIndex/OciCategory/EquityChangeType | Omar-3 | 대기 | |
| 11-C1 | DimensionValueSeeds K-IFRS L3~L4 약 180경로 | 공동 | 대기 | |
| 11-C2 | OCI 5종 시드 | Grace-3 | 대기 | |
| 11-C3 | CashFlowCodes 시드 113행 | Omar-3 | 대기 | |
| 11-C4 | 대손충당금 LegalParameter 시드 | Arjun-3 | 대기 | |
| 11-D1 | IFinancialRatioRepository 신규 | Grace-3 | 대기 | |
| 11-D2 | ICashFlowCodeRepository + ISettlementSnapshotRepository 신규 | Omar-3 | 대기 | |
| 11-D3 | ICounterpartyRepository +findByRelatedPartyType/findRelatedParties | Arjun-3 | 대기 | |
| 11-D4 | Injection.dart DI 갱신 | 공동 | 대기 | |
| 11-E1 | build_runner build + analyze 에러 0건 확인 | 공동 | 대기 | DoD |

### W12: 재무보고서 P1 (W11 완료 후)

| # | 태스크 | 할당 | 상태 | 비고 |
|---|--------|------|------|------|
| 12-1 | CalculateFinancialRatios UseCase 8종 + Rolling 12M | Grace-3 | 블록 | W11 |
| 12-2 | GenerateComprehensiveIncome UseCase | Grace-3 | 블록 | W11 |
| 12-3 | FinancialRatioDao + Repository 구현 | Grace-3 | 블록 | W11 |
| 12-4 | ReportBloc +LoadFinancialRatios/+LoadComprehensiveIncome | Grace-3 | 블록 | W11 |
| 12-5 | RunSettlement 플러그인 훅 개편 | Omar-3 | 블록 | W11 |
| 12-6 | SettlementSnapshotDao + Repository 구현 | Omar-3 | 블록 | W11 |
| 12-7 | TaxRuleEngine 대손충당금 규칙 추가 | Arjun-3 | 블록 | W11 |
| 12-8 | CounterpartyRepository relatedPartyType 조회 | Arjun-3 | 블록 | W11 |
| 12-9 | TransactionRepository referenceNo/reversalType 저장 | Arjun-3 | 블록 | W11 |

### W13: 재무보고서 P2 (W12 완료 후)

| # | 태스크 | 할당 | 상태 | 비고 |
|---|--------|------|------|------|
| 13-1 | GenerateCashFlowStatement 5분류 간접법 | Omar-3 | 블록 | W12 |
| 13-2 | GenerateEquityChangeStatement 5구성요소 | Omar-3 | 블록 | W12 |
| 13-3 | CashFlowCodeDao + Repository 구현 | Omar-3 | 블록 | W12 |
| 13-4 | ComparePeriods UseCase MOM/QOQ/YOY | Grace-3 | 블록 | W12 |
| 13-5 | CalculateFinancialRatios +5종 (총 13종) | Grace-3 | 블록 | W12 |
| 13-6 | OCI 나머지 12종 시드 + ReportBloc 확장 | Grace-3 | 블록 | W12 |
| 13-7 | ClassificationRules +creditAccountId | Arjun-3 | 블록 | W12 |
| 13-8 | Accounts +isRevenueDeduction + DashboardPage 기간비교 | Arjun-3 | 블록 | W12 |

### W14: P3 확장 (W13 완료 후)

| # | 태스크 | 할당 | 상태 | 비고 |
|---|--------|------|------|------|
| 14-1 | 재무비율 +16종 (총 29종) | Grace-3 | 블록 | W13 |
| 14-2 | CF 영업세부 확장 (이자/배당/법인세) | Omar-3 | 블록 | W13 |
| 14-3 | Account.valuationMethod enum | Omar-3 | 블록 | W13 |
| 14-4 | 매각예정 Path 시드 | Grace-3 | 블록 | W13 |
| 14-5 | DepreciationPlugin (결산 플러그인) | Omar-3 | 블록 | W13 |
| 14-6 | CalculateBadDebtAllowance UseCase | Arjun-3 | 블록 | W13 |
| 14-7 | 충당부채 롤포워드 뷰 | Arjun-3 | 블록 | W13 |
| 14-8 | 통화별 순포지션 뷰 | Grace-3 | 블록 | W13 |

### W15: Sync+Auth (서버 의존)

| # | 태스크 | 할당 | 상태 | 비고 |
|---|--------|------|------|------|
| 15-1 | Outbox+Delta Sync | Omar-3 | 블록 | W13+서버 |
| 15-2 | OAuth2+생체인증 | Arjun-3 | 블록 | W13+서버 |

### W7-OCR: OCR+Classification (패키지 의존)

| # | 태스크 | 할당 | 상태 | 비고 |
|---|--------|------|------|------|
| OCR-1 | ML Kit OCR 파이프라인 | Grace-3 | 블록 | 패키지 |
| OCR-2 | ClassificationEngine 로직트리 | Arjun-3 | 블록 | 패키지 |

---

## 업무 배분 균형

| 에이전트 | W7R | W11 | W12 | W13 | W14 | 합계 |
|----------|-----|-----|-----|-----|-----|------|
| Arjun-3 | 1 | 8 | 3 | 2 | 2 | **16** |
| Grace-3 | 2 | 7 | 4 | 3 | 3 | **19** |
| Omar-3 | 0 | 9 | 2 | 3 | 3 | **17** |

---

## QA Loop Status (v1.0)

LOOP_STATE: COMPLETE
ITERATION: 6
MAX_ITERATION: 100
CONSECUTIVE_PASS: 2

### Loop History
- Iteration 1: FIXED 19건
- Iteration 2: FIXED 10건
- Iteration 3: FIXED 4건
- Iteration 4: FIXED 1건
- Iteration 5: FIXED 0건 — 풀패스 1회
- Iteration 6: FIXED 0건 — **연속 2회 풀패스 → COMPLETE**
