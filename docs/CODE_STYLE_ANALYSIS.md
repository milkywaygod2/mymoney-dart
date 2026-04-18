# 사용자 Dart/Flutter 코딩 스타일 분석

> 출처: 커밋 dba9ddac (Flutter 연습 프로젝트, 2026-04-17)
> 분석 대상: lib/ 하위 18개 파일

---

## 1. 네이밍 컨벤션

### 클래스명
- **파스칼케이스 (PascalCase)**: `MyHomePage`, `MyDrawerItem`, `TestWallet`, `StockInfo`
- **접두사 "My"**: 앱 고유 화면/위젯에 사용 (`MyHomePage`, `MyAdd`, `MyBalanceSheetPage`, `MyDrawerWidget`)
- **접두사 "Test"**: 연습/테스트 코드에 사용 (`TestMain`, `TestGrid`, `TestFlChart`, `TestWidgetSummary`)
- **도메인 용어 직접 사용**: `MyBalanceSheetPage`, `MyProfitLossPage`, `MyEquityPage` — 회계 용어를 그대로 클래스명에 반영

### 파일명
- **파스칼케이스 그대로**: `MyHomePage.dart`, `TestMain.dart`, `MyDrawerItem.dart`
- Dart 공식 권장(snake_case)과 다름 — 사용자는 **클래스명 = 파일명** 규칙 선호

### 변수명
- **카멜케이스 (camelCase)**: `_selectedStock`, `_quantityController`, `listStockData`
- **접두사 관행**:
  - `_` (private): `_selectedStock`, `_currentBodyPage`, `_purchaseStock()`
  - `list` (리스트): `listStockData`, `listStockKey`, `listStockValue`, `listDrawerItem`
  - `model` (데이터 모델): `modelMapStockInfo`, `modelDrawerItemList`
- **헝가리안 네이밍의 변형**: 타입 정보를 접두사에 포함 (`listXxx`, `modelXxx`, `mapXxx`)

### 메서드명
- **카멜케이스**: `_purchaseStock()`, `_actionLongPress()`, `_navigateToPage()`
- **동사 시작**: `setBodyPage()`, `fetchData()`, `buildDrawerItems()`

---

## 2. 프로젝트 구조

```
lib/
├── main.dart              # 앱 엔트리포인트 (MaterialApp 설정)
├── models/                # 데이터 모델
│   └── MyDrawerItem.dart
├── screens/               # 화면 (페이지)
│   ├── MyHomePage.dart    # 메인 화면 (Scaffold + Navigation)
│   ├── core/              # 핵심 기능 화면
│   │   ├── MyAdd.dart
│   │   ├── MyBalanceSheetPage.dart
│   │   ├── MyEquityPage.dart
│   │   └── MyProfitLossPage.dart
│   └── topbar/            # 상단바 메뉴 화면
│       ├── MyAnalysis.dart
│       ├── MyGoal.dart
│       └── MyLink.dart
├── widgets/               # 재사용 위젯
│   └── MyDrawerWidget.dart
└── test/                  # 테스트/연습 코드
    ├── TestData.dart
    ├── TestMain.dart
    ├── TestWallet.dart
    └── ...
```

**특징:**
- models / screens / widgets / test 4분류
- screens 하위에 기능별 서브폴더 (core/, topbar/)
- 도메인 개념을 폴더 구조에 반영 (core = 핵심 회계 화면)

---

## 3. 위젯 작성 패턴

### StatelessWidget (간단한 화면)
```dart
class MyAdd extends StatelessWidget {
  const MyAdd({super.key});
  @override Widget build(BuildContext context) {
    return Container(child: Center(child: Text('Add')));
  }
}
```
- **const 생성자** 사용
- 간단한 placeholder는 `Container > Center > Text` 패턴

### StatefulWidget (복잡한 화면)
```dart
class MyHomePage extends StatefulWidget {
  final String title;
  const MyHomePage({super.key, this.title = 'MyHomePage'});
  @override State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  Widget _currentBodyPage = MyBalanceSheetPage();
  void setBodyPage(Widget currentBodyPage) {
    setState(() { _currentBodyPage = currentBodyPage; });
  }
  @override initState() { super.initState(); }
  @override dispose() { super.dispose(); }
  @override Widget build(BuildContext context) { ... }
}
```
- **상태를 private 변수로 관리**: `_currentBodyPage`, `_selectedStock`
- **setState를 별도 메서드로 래핑**: `setBodyPage()` — 직접 setState 호출보다 의미 부여
- **initState/dispose 명시**: 빈 상태여도 틀을 잡아놓는 스타일

### 위젯 분리 원칙
- **재사용 위젯 분리**: `TestWidgetSummary`, `TestWidgetSummaryList` → 별도 파일
- **데이터 모델 분리**: `StockInfo`, `MyDrawerItem` → models/ 또는 별도 파일
- **루프 연산은 build 밖으로**: 
  ```dart
  // build 밖에서 한 번만 계산
  final List<String> listStockKey = modelMapStockInfo.keys.toList();
  // 주석: "toList같은 Loop구문은 최대한 Build 안에 넣지 않는다."
  ```

---

## 4. 코딩 스타일 습관

### 한 줄 축약 (compact style)
```dart
@override Widget build(BuildContext context) {  // @override와 같은 줄
void setBodyPage(Widget currentBodyPage) { setState(() { _currentBodyPage = currentBodyPage; }); }
@override State<TestMain> createState() => _TestMainState();
```
- 짧은 메서드는 **한 줄로 축약** 선호
- `@override`를 메서드 시그니처와 같은 줄에 배치

### 주석 스타일
```dart
// toList같은 Loop구문은 최대한 Build 안에 넣지 않는다.
// 단순간격
// Dialog
// 닫기
```
- **한국어 주석** 사용
- **의도/이유를 설명하는 주석** (what보다 why)
- **인라인 주석**: 코드 끝에 `// 설명` 형태

### 테마/디자인 관심
```dart
theme: ThemeData(
  useMaterial3: true,           // google 최신디자인시스템
  brightness: Brightness.dark,
  colorScheme: ColorScheme.dark(primary: Colors.green),
  iconTheme: IconThemeData(color: Colors.white24),
),
```
- **다크 모드 기본 설정**
- **Material 3** 사용
- **초록색 기반 컬러 스킴** (가계부 앱 특성 — 돈/재무 연상)

### 네비게이션 패턴
```dart
// 화면 전환 (setState로 body 교체)
void setBodyPage(Widget currentBodyPage) {
  setState(() { _currentBodyPage = currentBodyPage; });
}

// 페이지 이동 (Navigator.push)
void _navigateToPage(Widget testPage) {
  Navigator.of(context).push(
    MaterialPageRoute(builder: (context) => testPage),
  );
}
```
- **두 가지 네비게이션 패턴 혼용**: body 교체 (탭 전환) + Navigator.push (스택 이동)
- **Widget 인스턴스를 직접 전달**: `setBodyPage(MyAnalysis())`, `_navigateToPage(TestGrid())`

---

## 5. 데이터 모델링

### 모델 클래스
```dart
class StockInfo {
  String imgUrl;
  List<Map<String, dynamic>> listDatePrice;
  StockInfo({ required this.imgUrl, required this.listDatePrice});
}

class MyDrawerItem {
  final String title;
  final Icon icon;
  final VoidCallback onTap;
  MyDrawerItem({required this.title, required this.icon, required this.onTap});
}
```
- **named parameters + required** 선호
- **final vs mutable**: `MyDrawerItem`은 final, `StockInfo`는 mutable — 용도에 따라 구분
- **Map<String, dynamic>** 활용: 정형화되지 않은 데이터는 Map으로 처리

### 데이터 선언
```dart
final Map<String, StockInfo> modelMapStockInfo = { ... };
List<MyDrawerItem> modelDrawerItemList = [ ... ];
```
- **top-level 변수로 테스트 데이터 선언** (클래스 밖)
- **model 접두사**로 데이터 역할 명시

---

## 6. 앱 구조 설계 의도 (회계 도메인)

```
BottomNavigationBar:
  ├── ProfitLoss (손익계산서)
  ├── BalanceSheet (재무상태표)
  └── Equity (자본변동표)

AppBar Actions:
  ├── Analysis (분석)
  ├── Goal (목표)
  └── Link (외부연동)

Drawer:
  └── Menu items (Home, Settings, About, Logout, Tests...)

FAB:
  └── Add (거래 추가)
```
- **핵심 회계 화면이 BottomNav**: B/S, P/L, Equity — 재무 3표를 메인 탭으로
- **부가 기능은 AppBar Actions**: 분석, 목표, 연동
- **FAB로 거래 추가**: 가장 빈번한 액션을 FAB에 배치

---

## 7. 코딩 컨벤션 확정 (사용자 결정)

> 핵심 원칙: **"뇌의 사고 속도를 병목시키는 모든 행위는 적폐."**
> 코드의 가독성이 최우선. IDE 지원이 있더라도, 코드를 보는 즉시 뇌에 정보가 들어와야 한다.
> 고도화된 언어를 쓰는 이유 자체가 가독성 — 기계가 읽기 편한 코드가 아니라 사람이 읽기 편한 코드.

### 네이밍

| 대상 | 컨벤션 | 예시 | 근거 |
|------|--------|------|------|
| **파일명** | **PascalCase** | `TransactionRepository.dart` | 클래스명=파일명 직관 매핑, 가독�� > 린터 권장 |
| **클래스명** | **도메인 접두사 + PascalCase** | `TransactionRepository`, `BalanceSheetPage` | 클래스가 수백 개일 때 이름만으로 소속 즉시 파악 |
| **변수명** | **헝가리안 접두사 + camelCase** | `listTransactions`, `mapAccountsByCode` | 컨테이너 타입이 보이면 알고리즘 연상이 즉시 작동 |
| **메서드명** | **동사 시작 + camelCase** | `fetchData()`, `setBodyPage()`, `buildDrawerItems()` | 행위 명확 |
| **private** | **언더스코어 접두사** | `_selectedStock`, `_currentBodyPage` | Dart 표준 |

### 헝가리안 접두사 상세

| 접두사 | 의미 | 예시 |
|--------|------|------|
| `list` | List (순서, 인덱스, 순회) | `listTransactions`, `listStockData` |
| `map` | Map (키-값, O(1) 조회) | `mapAccountsByCode`, `mapStockInfo` |
| `set` | Set (유일성, 포함 여부) | `setExpandedIds`, `setTagNames` |
| `model` | 데이��� 모델 인스턴스 | `modelDrawerItemList` |
| `is/has` | bool | `isActive`, `hasPermission` |
| `stream` | Stream | `streamPerspective` |

### Dart 린터 예외 설정

파일명 PascalCase를 위해 `analysis_options.yaml`에서 해당 규칙을 비활성화:
```yaml
linter:
  rules:
    file_names: false  # PascalCase 파일명 허용 (가독성 우선)
```

### 계승/발전/변경 종합

| 연습 코드 패턴 | 결정 | 근거 |
|---------------|------|------|
| PascalCase 파일명 | **계승** | 가독성 > 린터 권장. 클래스명=파일명 직관 매핑 |
| 도메인 접두사 (`My`) | **발전** → 도메인명 접두사 | `My`는 무의미 → `Transaction`, `BalanceSheet` 등 도메인명���로 대체 |
| 헝가리안 접두사 | **계승** | 컨테이너 타입 즉시 인지 → 알고리즘 연상 속도 |
| setState | **변경** → BLoC | 상태 관리 체계화 (이벤트/상태 분리) |
| Navigator.push | **변경** → go_router | 선언적 라우팅 (딥링크, 리다이렉트) |
| 다크 모드 + 초록 테마 | **계승** | 사용자 선호, 재무 앱 연상색 |
| 재무 3표 BottomNav | **발전** → 4��� (홈/거래/분석/더보기) | 기능 확장에 대응 |
| 루프 연산 build 밖 | **계승** | 성능 원칙 동일 (BLoC에서도 적용) |
| 한국어 주석 (why 중심) | **계승** | 글로벌 룰과 일치 |
| const 생성자 적극 사용 | **계승** | Flutter 성능 최적화 |
| 짧��� 메서드 한 줄 축약 | **계승** | 가독성 (간단한 건 간단하게) |
| initState/dispose 틀 잡기 | **계승** | 생명주기 명시 습관 |
