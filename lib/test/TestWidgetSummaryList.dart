import 'package:flutter/material.dart';

class TestWidgetSummaryList extends StatelessWidget {
  final List<Map<String, dynamic>> listStock;
  const TestWidgetSummaryList({super.key, required this.listStock});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: listStock.length,
      itemBuilder: (context, index) {
        final stock = listStock[index];
        return ListTile(
          leading: Image.asset("assets/stock/${stock["name"].toLowerCase()}.png",
            width: 50, height: 50, color: Colors.white24,
            errorBuilder: (context, error, stactTrace) {
              return SizedBox(
                width: 50, height: 50,
                child: Image.asset("assets/stocks/empty.png")
              );
            },
          ),
          title: Text(
            stock['name'],
            style: const TextStyle(color: Colors.white),
          ),
          subtitle: Text(
            "${stock['amount']}",
            style: const TextStyle(color: Colors.white70),
          ), // Text
          trailing: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(
                "\$ ${stock['value']}",
                style: const TextStyle(color: Colors.white),
              ),
              Text(
                "${stock['change'].toString()}%",
                style: TextStyle(
                  color: stock['change'] < 0 ? Colors.red : Colors.green,
                ),
              ),
            ],
          ),
        );
      }
    );
  }
}
