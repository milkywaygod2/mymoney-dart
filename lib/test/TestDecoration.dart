import 'package:flutter/material.dart';

class TestDecoration extends StatelessWidget {
  const TestDecoration({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('데코레이션 예시 ^^'),),
      body: Container(
        width : 300,
        height: 300,
        decoration: BoxDecoration(
          color: Colors.yellow,
          border: Border.all(
            color: Colors.blue,
            width: 50,
            style: BorderStyle.solid,
          )
        ),
        child: const Column(
          children: [
            SizedBox(
              width: 100,
              //height: 100,
              child: Text('TestDecoration'),
            ),
          ]
        ),
      ),
    );
    throw UnimplementedError();
  }
}