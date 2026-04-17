import 'package:flutter/material.dart';
import 'package:mymoney/test/TestWidgetSummary.dart';
import 'package:mymoney/test/TestWidgetSummaryList.dart';

class TestWallet extends StatefulWidget {
  const TestWallet({super.key});

  @override
  State<TestWallet> createState() => _TestWalletState();
}

class _TestWalletState extends State<TestWallet> {
  final List<Map<String, dynamic>> listStockData = [
    { 'name': 'Apple', 'amount': 980, 'value': 215.30, 'change': -0.92 },
    { 'name': 'Microsoft', 'amount': 1020, 'value': 228.40, 'change': 1.15 },
    { 'name': 'Google', 'amount': 950, 'value': 220.20, 'change': -0.68 },
    { 'name': 'Amazon', 'amount': 1005, 'value': 223.50, 'change': 0.87 },
    { 'name': 'Facebook', 'amount': 990, 'value': 218.75, 'change': 0.45 },
    { 'name': 'Netflix', 'amount': 970, 'value': 216.80, 'change': -0.35 },
    { 'name': 'Adobe', 'amount': 1010, 'value': 225.60, 'change': 1.02 },
    { 'name': 'Intel', 'amount': 995, 'value': 219.40, 'change': 0.56 },
    { 'name': 'IBM', 'amount': 980, 'value': 217.70, 'change': -0.12 },
    { 'name': 'Samsung', 'amount': 1008, 'value': 224.90, 'change': 0.78 },
  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      appBar: AppBar(
        title: const Text('Wallet', style: TextStyle(color: Colors.white70),),
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0,
        actions: [
          PopupMenuButton<String>(
            iconColor: Colors.white70,
            onSelected: (String result) {
              print("select menu $result");
            },
            itemBuilder: (BuildContext context) => <PopupMenuEntry<String>>[
              const PopupMenuItem(value: 'Profile^^', child: Text('Profile')),
              const PopupMenuItem(value: 'Settings^^', child: Text('Settings')),
            ],
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            TestWidgetSummary(
              totalValue: listStockData.fold(0, (sum, item) => sum + item['value']),
              totalRate: listStockData.fold(0, (sum, item) => sum + item['change']),
              totalAmount: listStockData.fold(0, (sum, item) => sum + item['amount'] as int),
            ), // TotalWidget
            Expanded(
                child: TestWidgetSummaryList(listStock: listStockData)
            ),
          ],
        ),
      ),
    );
  }
}

