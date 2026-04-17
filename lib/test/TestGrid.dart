

import 'package:flutter/material.dart';
import 'TestData.dart';

class TestGrid extends StatefulWidget {
  const TestGrid({super.key});

  @override State<TestGrid> createState() => _TestGridState();
}

class _TestGridState extends State<TestGrid> {
  final List<String> listStockKey = modelMapStockInfo.keys.toList(); // 루프연산은 최대한 build에서 빼준다
  final List<StockInfo> listStockValue = modelMapStockInfo.values.toList();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('그리드 뷰 ^^'),),
      body: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2, // 한줄에 표시될 아이템개수
          childAspectRatio: 1.0, // 아이템 가로세로비율
          crossAxisSpacing: 5, // 가로방향 아이템 간격
          mainAxisSpacing: 5, // 세로방향 아이템 간격
        ),
        itemCount: modelMapStockInfo.length,
        itemBuilder: (context, index) => Card(
          child: GridTile(
            footer: Center(child: Text(listStockKey[index])),
            child: Image.network(listStockValue[index].imgUrl, fit: BoxFit.cover),
          ),
        )
      ),
    );
  }
}

