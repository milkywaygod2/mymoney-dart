import 'dart:math';

import 'package:flutter/material.dart';
import 'package:mymoney/test/TestFlChart.dart';
import 'TestData.dart';

class TestScroll extends StatefulWidget {
  const TestScroll({super.key});
  @override State<TestScroll> createState() => _TestScrollState();
}

class _TestScrollState extends State<TestScroll> {
  String? _selectedStock;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('스크롤 바 ^^'),),
      body: SingleChildScrollView(
        //scrollDirection: Axis.horizontal,
        child: Column(
          children: modelMapStockInfo.entries.map(
            (entry) => Card(
              child: ListTile(
                  title: Text(entry.key),
                  subtitle: Text('주가: ${Random().nextInt(100000)}'),
                  leading: const Icon(Icons.show_chart),
                  onTap: () {
                    setState(() { _selectedStock = entry.key; });
                    Navigator.push(context, MaterialPageRoute(builder: (context) => TestFlChart(
                      stockName: entry.key,
                      chartData: entry.value.listDatePrice,
                    )));
                  }
              ),
            ),
          ).toList(),
        ),
      ),
    );
  }
}