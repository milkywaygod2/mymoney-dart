import 'package:drift/drift.dart';

/// 환율 — 시계열 이력
class ExchangeRates extends Table {
  IntColumn get id => integer().autoIncrement()();
  TextColumn get fromCurrency => text().withLength(min: 3, max: 3)();
  TextColumn get toCurrency => text().withLength(min: 3, max: 3)();
  /// 환율 (배율 kExchangeRateMultiplier=1,000,000)
  IntColumn get rate => integer()();
  DateTimeColumn get effectiveDate => dateTime()();
  /// 출처 (예: "한국은행", "서울외국환중개")
  TextColumn get source => text()();
  /// 환율 용도 구분: ACCOUNTING(범용) | TAX(세무) | AVERAGE(기간평균-P/L환산) | CLOSING(기말-B/S환산)
  TextColumn get purpose => text().withDefault(const Constant('ACCOUNTING'))();
}
