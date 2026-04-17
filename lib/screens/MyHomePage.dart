import 'package:flutter/material.dart';
import 'package:mymoney/models/MyDrawerItem.dart';
import 'package:mymoney/screens/topbar/MyAnalysis.dart';
import 'package:mymoney/screens/topbar/MyGoal.dart';
import 'package:mymoney/screens/topbar/MyLink.dart';
import 'package:mymoney/widgets/MyDrawerWidget.dart';

import 'core/MyAdd.dart';
import 'core/MyBalanceSheetPage.dart';
import 'core/MyEquityPage.dart';
import 'core/MyProfitLossPage.dart';


class MyHomePage extends StatefulWidget {
  final String title;
  const MyHomePage({super.key, this.title = 'MyHomePage'});
  @override State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  Widget _currentBodyPage = MyBalanceSheetPage();
  void setBodyPage(Widget currentBodyPage) { setState(() { _currentBodyPage = currentBodyPage; }); }

  @override initState(){
    super.initState();
  }
  @override dispose() {
    super.dispose();
  }

  @override Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(kToolbarHeight), // AppBar의 기본 높이 지정
        child: LayoutBuilder(
          builder: (BuildContext context, BoxConstraints constraints) {
            double iconSize = constraints.maxHeight * 0.55; // AppBar 높이에 따라 아이콘 크기 계산
            return AppBar(
              backgroundColor: Theme.of(context).colorScheme.inversePrimary, // 다크모드에서는 초록색의 대비색도 검정, 명시적 별도 설정가능
              title: Text('MyMoney'), // widget.title 대신 텍스트 사용
              leading: IconButton(
                icon: Icon(Icons.menu, size: iconSize),
                onPressed: () {
                  Scaffold.of(context).openDrawer();
                },
              ),
              actions: [
                IconButton(
                  icon: Icon(Icons.bar_chart, size: iconSize),
                  onPressed: () { setBodyPage(MyAnalysis()); },
                ),
                IconButton(
                  icon: Icon(Icons.star_rate, size: iconSize),
                  onPressed: () { setBodyPage(MyGoal()); },
                ),
                IconButton(
                  icon: Icon(Icons.admin_panel_settings, size: iconSize),
                  onPressed: () { setBodyPage(MyLink()); },
                ),
              ],
            );
          },
        ),
      ),
      body: _currentBodyPage,
      bottomNavigationBar: Container(
        color: Colors.black54,
        height: 70, // TODO: dynamic
        child: LayoutBuilder(
          builder: (BuildContext context, BoxConstraints constraints) {
            double iconSize = constraints.maxHeight * 0.55; // TODO: 멤버변수화
            return Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                IconButton(
                  icon: Icon(Icons.account_balance_wallet, size: iconSize),
                  onPressed: () { setBodyPage(MyProfitLossPage()); },
                ),
                IconButton(
                  icon: Icon(Icons.account_balance_outlined, size: iconSize),
                  onPressed: () { setBodyPage(MyBalanceSheetPage()); },
                ),
                IconButton(
                  icon: Icon(Icons.egg, size: iconSize),
                  onPressed: () { setBodyPage(MyEquityPage()); },
                ),
              ],
            );
          },
        ),
      ),
      drawer: MyDrawerWidget(listDrawerItem: modelDrawerItemList),
      floatingActionButton: FloatingActionButton(
        onPressed: (){ setBodyPage(MyAdd());},
        tooltip: 'Add',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
