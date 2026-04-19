# CW_HANDOFF_Grace.md — Grace 인계 문서

> 담당: Grace (ExchangeRate + Report + Settlement)
> 워크트리: `E:/_Develop/dart/mymoney-wk-grace` (브랜치: `wk-w8-grace`)
> 최종 갱신: 2026-04-19

---

## 완료 이력

| Wave | 태스크 | 커밋 | 변경 파일 |
|------|--------|------|-----------|
| W7 보조 | CounterpartyPage UI | `c736a2b` | `lib/features/counterparty/presentation/CounterpartyPage.dart` (805줄) |

---

## W7 보조: CounterpartyPage UI (`c736a2b`)

**파일**: `lib/features/counterparty/presentation/CounterpartyPage.dart:1-805`

**구현 내용**:
- `CounterpartyPage` — 거래처 관리 메인 페이지 (`StatefulWidget`, ICounterpartyRepository 주입)
  - 전체 거래처 로드 + 실시간 검색 필터 (이름/별칭/식별번호)
  - FAB → 거래처 추가 BottomSheet
  - 리스트 탭 → 상세 BottomSheet
- `_SearchBar` — 검색 바 (TextField + 실시간 onChanged)
- `_CounterpartyTile` — 리스트 타일 (이름 + 식별번호 + 신뢰도 뱃지 + 유형 아이콘)
- `_TypeIcon` — 거래처 유형별 아이콘 (법인/개인/정부기관/기타)
- `_ConfidenceBadge` — 신뢰도 뱃지 (verified/high/medium/low/unknown 5단계 색상)
- `_CounterpartyDetailSheet` — 상세 BottomSheet
  - 기본 정보 (유형/식별번호/연락처/주소/특수관계자)
  - alias 목록 + 삭제 (INV-C3 유일성 검증 포함)
  - alias 추가 입력란
- `_CounterpartyAddSheet` — 추가 BottomSheet
  - Form 유효성 검증 (이름 필수, 번호유형-번호 쌍 검증)
  - 거래처명/유형/식별번호/연락처/주소 입력

**특이사항**:
- BLoC 미구현 상태이므로 ICounterpartyRepository 직접 주입 방식으로 구현
- Wave 7 CounterpartyBloc 완성 후 BlocBuilder로 마이그레이션 필요
- alias id=0으로 임시 생성 (DB save 후 실제 ID 갱신 필요 — DAO 구현 몫)

---

## 대기 중 (W8 본 담당)

S09 외환차손익 + S08b 결산 프로세스 — W7 완료 후 착수 예정

| Subject | 태스크 | 의존 |
|---------|--------|------|
| S09 | ExchangeRateDao + Repository 구현 | W7 완료 |
| S09 | 다통화 거래 base_amount 파생 계산 | S09 DAO |
| S09 | 온디맨드 미실현 손익 계산 UseCase | S09 DAO |
| S09 | ExchangeRate 캐시 (최근 30일, 1일 1회) | S09 DAO |
| S09 | Flow Card 다통화 노드 표시 | S09 UseCase |
| S08b | ReportBloc + B/S·P/L·CF 집계 쿼리 | S09 완료 |
| S08b | 결산 5단계 UseCase | S08a(세무), S09 |
| S08b | 외환차손익 자동 전표 생성 | S09 |
| S08b | 손익 마감 UseCase (수익/비용 → 이익잉여금) | S08b 집계 |
| S08b | 결산 스냅샷 저장 | S08b 마감 |
