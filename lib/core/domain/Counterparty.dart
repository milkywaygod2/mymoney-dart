import 'package:freezed_annotation/freezed_annotation.dart';

import '../models/TypedId.dart';
import 'CounterpartyAlias.dart';

part 'Counterparty.freezed.dart';

/// Counterparty(거래처) — 거래 상대방 마스터 데이터.
/// OCR 별칭 매칭, 세무 연동(사업자번호), 특수관계자 판정에 사용.
@freezed
class Counterparty with _$Counterparty {
  const Counterparty._();

  const factory Counterparty({
    required CounterpartyId id,

    /// 거래처 정식 명칭
    required String name,

    /// 고유번호 (사업자번호/주민번호 등)
    String? identifier,

    /// 고유번호 유형
    @Default('NONE') String identifierType,

    /// 연락처 (보조 매칭)
    String? phone,

    /// 주소 (보조 매칭)
    String? address,

    /// 신뢰도 수준 — OCR 매칭 정확성
    @Default('UNKNOWN') String confidenceLevel,

    /// 특수관계자 여부 (세무 확장 시 활성화)
    bool? isRelatedParty,

    /// 거래처 유형 (개인/법인/정부기관, 원천징수 판정용)
    String? counterpartyType,

    /// 국가 코드 (해외 확장 시)
    String? countryCode,

    /// OCR 표기 변형 목록 ("스타벅스", "STARBUCKS" 등)
    @Default([]) List<CounterpartyAlias> listAliases,
  }) = _Counterparty;

  // --- 불변조건 검증 ---

  /// INV-C1: 이름은 비어있을 수 없음
  bool get hasValidName => name.isNotEmpty;

  /// INV-C2: identifier가 있으면 identifierType은 'NONE'이 아니어야 함
  bool get hasValidIdentifier =>
      identifier == null || identifierType != 'NONE';

  /// 사업자번호 보유 여부 (세금계산서 발행 가능 판단)
  bool get hasBizNumber =>
      identifier != null && identifierType == 'BIZ_NO';
}
