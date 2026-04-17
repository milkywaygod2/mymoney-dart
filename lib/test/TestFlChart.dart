
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class TestFlChart extends StatelessWidget {
  final String stockName;
  final List<Map<String, dynamic>> chartData;
  const TestFlChart({super.key, required this.stockName, required this.chartData});

  @override
  Widget build(BuildContext context) {
    List<FlSpot> spots = chartData.asMap().entries.map((entry) {
      int index = entry.key;
      Map<String, dynamic> data = entry.value;
      return FlSpot(index.toDouble(), data['price'] as double);
    }).toList();
    return Scaffold(
      appBar: AppBar(
        title: Text('$stockName 차트'),
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(30.0, 50.0, 50.0, 30.0),
        child: LineChart(
          LineChartData(
            gridData: const FlGridData(show: true),
            titlesData: FlTitlesData(
              bottomTitles: AxisTitles(
                sideTitles: SideTitles(
                  showTitles: true,
                  reservedSize: 42,
                  getTitlesWidget: (double value, TitleMeta meta) {
                    int index = value.toInt();
                    if (index < chartData.length) {
                      return Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Text(
                          chartData[index]['date'],
                          style: const TextStyle(color: Colors.white70, fontSize: 10),
                        ),
                      );
                    } else {
                      return const Text('');
                    }
                  },
                  interval: 3,
                )
              ),
              leftTitles: AxisTitles(
                sideTitles: SideTitles(
                  showTitles: true,
                  getTitlesWidget: (double value, TitleMeta meta) {
                    if (value == meta.min || value == meta.max) {
                      return const SizedBox.shrink();
                    } else {
                      return Text(
                        '${value.toInt()}',
                        style: const TextStyle(color: Colors.white70, fontSize: 10),
                      );
                    }
                  },
                  interval: 5
                ),
              ),
              topTitles: const AxisTitles(sideTitles: SideTitles(showTitles: false)),
              rightTitles: const AxisTitles(sideTitles: SideTitles(showTitles: false)),
            ),
            borderData: FlBorderData(show: true),
            lineBarsData: <LineChartBarData>[ LineChartBarData(spots: spots), ],
          )
        ),
      ),
    );
  }
}
