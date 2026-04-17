import 'package:flutter/material.dart';

class TestWidgetSummary extends StatelessWidget {
  final double totalValue;
  final double totalRate;
  final int totalAmount;
  const TestWidgetSummary({super.key, required this.totalValue, required this.totalRate, required this.totalAmount});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.green[300],
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(children: [
          const Text('Total Account Value', style: TextStyle(color: Colors.white70),),
          Text('\$$totalValue', style: TextStyle(color: Colors.white70, fontSize: 31),),
          const Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('7day Rate', style: TextStyle(color: Colors.white24),),
            Text('7day Ammount', style: TextStyle(color: Colors.white24),),
          ],),
          Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('$totalRate%', style: TextStyle(color: Colors.white24),),
              Text('$totalAmount', style: TextStyle(color: Colors.white24),),
            ],),
        ],),
      ),
    );
  }
}
