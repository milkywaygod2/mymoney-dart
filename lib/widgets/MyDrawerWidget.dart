import 'package:flutter/material.dart';
import 'package:mymoney/models/MyDrawerItem.dart';
import 'package:mymoney/screens/MyHomePage.dart';

class MyDrawerWidget extends StatelessWidget {
  final List<MyDrawerItem> listDrawerItem;
  const MyDrawerWidget({super.key, required this.listDrawerItem});

  @override Widget build(BuildContext context) {
    return Drawer(
      //width: MediaQuery.of(context).size.width * 0.4,
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          SizedBox(
            height: kToolbarHeight,
            child: DrawerHeader(
              decoration: BoxDecoration(color: Theme.of(context).colorScheme.primary),
              child: Text('Menu', style: TextStyle(color: Colors.white70)),
            ),
          ),
          ...buildDrawerItems(context, listDrawerItem), // 변경되지않으면 재사용됨
        ],
      ),
    );
  }

  List<Widget> buildDrawerItems(BuildContext context, List<MyDrawerItem> list) {
    return list.map((item) {
      return ListTile(
        leading: item.icon,
        title: Text(item.title),
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => MyHomePage()),
          );
        },
      );
    }).toList();
  }
}