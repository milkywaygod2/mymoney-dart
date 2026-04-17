import 'package:flutter/material.dart';

class MyDrawerItem {
  final String title;
  final Icon icon;
  final VoidCallback onTap;
  MyDrawerItem({required this.title, required this.icon, required this.onTap});
}

List<MyDrawerItem> modelDrawerItemList = [
  MyDrawerItem(title: 'Home', icon: const Icon(Icons.home), onTap: (){}),
  MyDrawerItem(title: 'Settings', icon: const Icon(Icons.settings), onTap: (){}),
  MyDrawerItem(title: 'About', icon: const Icon(Icons.info), onTap: (){}),
  MyDrawerItem(title: 'Logout', icon: const Icon(Icons.exit_to_app), onTap: (){}),
  MyDrawerItem(title: 'TestDecoration', icon: const Icon(Icons.abc), onTap: (){}),
  MyDrawerItem(title: 'TestScrollView', icon: const Icon(Icons.abc), onTap: (){}),
  MyDrawerItem(title: 'Test2', icon: const Icon(Icons.abc), onTap: (){}),
  MyDrawerItem(title: 'TestStateful', icon: const Icon(Icons.abc), onTap: (){}),
  MyDrawerItem(title: 'TestStateless', icon: const Icon(Icons.abc), onTap: (){}),
];