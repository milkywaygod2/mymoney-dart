import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../core/constants/Enums.dart';
import '../../../core/models/CurrencyCode.dart';
import '../../../core/models/TypedId.dart';
import '../usecase/CreateTransaction.dart';
import 'JournalBloc.dart';
import 'JournalEvent.dart';

/// 거래 입력 폼 (BottomSheet)
class TransactionForm extends StatefulWidget {
  const TransactionForm({super.key});

  static Future<void> show(BuildContext context) {
    return showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      useSafeArea: true,
      builder: (_) => BlocProvider.value(
        value: context.read<JournalBloc>(),
        child: const TransactionForm(),
      ),
    );
  }

  @override
  State<TransactionForm> createState() => _TransactionFormState();
}

class _TransactionFormState extends State<TransactionForm> {
  final _formKey = GlobalKey<FormState>();
  final _descController = TextEditingController();
  final _counterpartyController = TextEditingController();
  DateTime _date = DateTime.now();
  final List<_LineInput> _listLines = [
    _LineInput(entryType: EntryType.debit),
    _LineInput(entryType: EntryType.credit),
  ];

  @override
  void dispose() {
    _descController.dispose();
    _counterpartyController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 16, right: 16, top: 16,
        bottom: MediaQuery.of(context).viewInsets.bottom + 16,
      ),
      child: Form(
        key: _formKey,
        child: ListView(
          shrinkWrap: true,
          children: [
            Text('새 거래', style: Theme.of(context).textTheme.titleLarge),
            const SizedBox(height: 16),
            // 날짜 선택
            ListTile(
              leading: const Icon(Icons.calendar_today),
              title: Text('${_date.year}-${_date.month.toString().padLeft(2, '0')}-${_date.day.toString().padLeft(2, '0')}'),
              onTap: _pickDate,
            ),
            // 설명
            TextFormField(
              controller: _descController,
              decoration: const InputDecoration(labelText: '설명', hintText: '카드로 커피 구매'),
              validator: (v) => v == null || v.isEmpty ? '설명을 입력하세요' : null,
            ),
            const SizedBox(height: 8),
            // 거래처
            TextFormField(
              controller: _counterpartyController,
              decoration: const InputDecoration(labelText: '거래처 (선택)', hintText: '스타벅스 강남점'),
            ),
            const SizedBox(height: 16),
            // 전표 라인
            ..._listLines.asMap().entries.map((e) => _buildLineInput(e.key, e.value)),
            // 라인 추가 버튼
            TextButton.icon(
              onPressed: () => setState(() => _listLines.add(_LineInput(entryType: EntryType.debit))),
              icon: const Icon(Icons.add),
              label: const Text('전표 라인 추가'),
            ),
            const SizedBox(height: 16),
            // 저장 버튼
            FilledButton(
              onPressed: _submit,
              child: const Text('Draft 저장'),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildLineInput(int index, _LineInput line) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(8),
        child: Row(
          children: [
            // 차변/대변 토글
            SegmentedButton<EntryType>(
              segments: const [
                ButtonSegment(value: EntryType.debit, label: Text('차변')),
                ButtonSegment(value: EntryType.credit, label: Text('대변')),
              ],
              selected: {line.entryType},
              onSelectionChanged: (v) => setState(() => line.entryType = v.first),
            ),
            const SizedBox(width: 8),
            // 금액 입력
            Expanded(
              child: TextFormField(
                decoration: const InputDecoration(labelText: '금액', prefixText: '₩'),
                keyboardType: TextInputType.number,
                onChanged: (v) => line.amount = int.tryParse(v) ?? 0,
              ),
            ),
            // 삭제 (최소 2줄 유지)
            if (_listLines.length > 2)
              IconButton(
                icon: const Icon(Icons.close),
                onPressed: () => setState(() => _listLines.removeAt(index)),
              ),
          ],
        ),
      ),
    );
  }

  Future<void> _pickDate() async {
    final picked = await showDatePicker(
      context: context,
      initialDate: _date,
      firstDate: DateTime(2020),
      lastDate: DateTime(2030),
    );
    if (picked != null) setState(() => _date = picked);
  }

  void _submit() {
    if (!_formKey.currentState!.validate()) return;
    final listInputs = _listLines.map((line) => JournalEntryLineInput(
      accountId: const AccountId(1), // TODO: 계정 선택 UI (Wave 6)
      entryType: line.entryType,
      originalAmount: line.amount,
      originalCurrency: CurrencyCode.KRW,
      exchangeRateAtTrade: 1000000,
      baseCurrency: CurrencyCode.KRW,
      baseAmount: line.amount,
    )).toList();

    context.read<JournalBloc>().add(CreateTransactionEvent(
      date: _date,
      description: _descController.text,
      listLineInputs: listInputs,
      counterpartyName: _counterpartyController.text.isNotEmpty ? _counterpartyController.text : null,
    ));
    Navigator.of(context).pop();
  }
}

/// 전표 라인 입력 임시 모델
class _LineInput {
  _LineInput({required this.entryType});
  EntryType entryType;
  int amount = 0;
}
