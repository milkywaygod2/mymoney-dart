import 'package:flutter/material.dart';
import 'package:mymoney/test/TestDecoration.dart';
import 'package:mymoney/test/TestGrid.dart';
import 'package:mymoney/test/TestScroll.dart';
import 'package:mymoney/test/TestData.dart';
import 'package:mymoney/test/TestWallet.dart';

class TestMain extends StatefulWidget {
  const TestMain({super.key});
  @override State<TestMain> createState() => _TestMainState();
}

class _TestMainState extends State<TestMain> {
  late final TextEditingController _quantityController;
  String? _selectedStock;
  final List<DropdownMenuItem<String>> _listDropmenu = modelMapStockInfo.keys.map<DropdownMenuItem<String>>(
          (String stock) {
        return DropdownMenuItem<String>(
          value: stock,
          child: Text(stock),
        );
      }
  ).toList(); // toList같은 Loop구문은 최대한 Build 안에 넣지 않는다.

  @override
  void initState() {
    super.initState();
    _quantityController = TextEditingController();
  }
  
  void _purchaseStock() {
    final String stock = _selectedStock ?? '선택되지 않음';
    final String quantity = _quantityController.text;
    showDialog( // Dialog
      context: context, 
      builder: (context) => AlertDialog(
        title: const Text('구매 완료'),
        content: Text('$stock 주식을 $quantity 주 구매했습니다.'),
        actions: <Widget>[
          TextButton(
            onPressed: () => Navigator.of(context).pop(), // 닫기
            child: const Text('확인'),
          )
        ],
      ) 
    );
  }

  void _actionLongPress() {
    showDialog( // Dialog
        context: context,
        builder: (context) => AlertDialog(
          title: const Text('길게 누름'),
          content: Text('길게 누르기 동작 감지'),
          actions: <Widget>[
            TextButton(
              onPressed: () => Navigator.of(context).pop(), // 닫기
              child: const Text('확인'),
            )
          ],
        )
    );
  }

  void _actionDoubleTap() {
    showDialog( // Dialog
        context: context,
        builder: (context) => AlertDialog(
          title: const Text('더블 탭'),
          content: Text('더블 탭 동작 감지'),
          actions: <Widget>[
            TextButton(
              onPressed: () => Navigator.of(context).pop(), // 닫기
              child: const Text('확인'),
            )
          ],
        )
    );
  }

  void _navigateToPage(Widget testPage) {
    Navigator.of(context).push(
      MaterialPageRoute(builder: (context) => testPage),
    );
  }

  @override Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('주식 구매'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            DropdownButtonFormField<String>(
              value: _selectedStock,
              hint: const Text('주식종목을 선택하세요'),
              onChanged: (newValue) {
                setState(() {
                  _selectedStock = newValue;
                });
              },
              items: _listDropmenu,
            ),
            TextField(
              controller: _quantityController,
              decoration: const InputDecoration(labelText: '수량'),
              keyboardType: TextInputType.number,
            ),
            const SizedBox(height: 20,), // 단순간격
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                    onPressed: _purchaseStock,
                    style: ElevatedButton.styleFrom(backgroundColor: Colors.lightGreenAccent),
                    child: const Text('구매')),
                ElevatedButton(
                    onPressed: (){ setState(() {
                      _selectedStock = null;
                      _quantityController.clear();
                    });},
                    style: ElevatedButton.styleFrom(backgroundColor: Colors.lightGreenAccent),
                    child: const Text('취소')),
              ],
            ),
            SizedBox(height: 30,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                GestureDetector(
                  //onTap: _actionLongPress,
                  onLongPress: _actionLongPress,
                  child: Container(
                    padding: const EdgeInsets.symmetric(vertical: 15.0, horizontal: 30.0),
                    decoration: BoxDecoration(color: Colors.blue, borderRadius: BorderRadius.circular(5.0)),
                    child: const Text('길게누르기', style: TextStyle(color: Colors.white),),
                  ),
                ),
                GestureDetector(
                  //onTap: _actionLongPress,
                  onDoubleTap: _actionDoubleTap,
                  child: Container(
                    padding: const EdgeInsets.symmetric(vertical: 15.0, horizontal: 30.0),
                    decoration: BoxDecoration(color: Colors.blue, borderRadius: BorderRadius.circular(5.0)),
                    child: const Text('더블탭', style: TextStyle(color: Colors.white),),
                  ),
                ),
              ],
            ),
            SizedBox(height: 30,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                    onPressed: () => _navigateToPage(TestDecoration()), // void()
                    style: ElevatedButton.styleFrom(backgroundColor: Colors.white70),
                    child: const Text('TestDecoration', style: TextStyle(color: Colors.black),)),
                ElevatedButton(
                    onPressed: () => _navigateToPage(TestScroll()),
                    style: ElevatedButton.styleFrom(backgroundColor: Colors.white70),
                    child: const Text('TestScroll', style: TextStyle(color: Colors.black),)),
                ElevatedButton(
                    onPressed: () => _navigateToPage(TestGrid()),
                    style: ElevatedButton.styleFrom(backgroundColor: Colors.white70),
                    child: const Text('TestGrid', style: TextStyle(color: Colors.black),)),
              ],
            ),
            SizedBox(height: 30,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                    onPressed: () => _navigateToPage(TestWallet()), // void()
                    style: ElevatedButton.styleFrom(backgroundColor: Colors.white70),
                    child: const Text('wallet', style: TextStyle(color: Colors.black),)),
                ElevatedButton(
                    onPressed: () => (){},
                    style: ElevatedButton.styleFrom(backgroundColor: Colors.white70),
                    child: const Text('-', style: TextStyle(color: Colors.black),)),
                ElevatedButton(
                    onPressed: () => (){},
                    style: ElevatedButton.styleFrom(backgroundColor: Colors.white70),
                    child: const Text('-', style: TextStyle(color: Colors.black),)),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
