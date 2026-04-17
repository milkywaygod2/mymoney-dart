import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:mymoney/test/TestDecoration.dart';
import 'package:mymoney/test/TestMain.dart';
import 'package:mymoney/test/TestGrid.dart';
import 'package:mymoney/test/TestScroll.dart';
import 'screens/MyHomePage.dart';

void main() async {
  runApp(const MyMoney());
}

//MyApp
class MyMoney extends StatelessWidget {
  const MyMoney({super.key});

  Future<String> fetchData() async {
    final response = await http.get(Uri.parse('http://localhost:8080/'));
    return response.body;
  }

  @override Widget build(BuildContext context) { return MaterialApp(
      title: 'MyMoney',
      theme: ThemeData(
        useMaterial3: true, // google 최신디자인시스템
        brightness: Brightness.dark,
        colorScheme: ColorScheme.dark(primary: Colors.green),
        iconTheme: IconThemeData(color: Colors.white24),
        //iconButtonTheme: IconButtonThemeData(color: Colors.white70)
      ),
      home: const MyHomePage(),
      //z`home: TestMain(), //Test
    );
  }
}

