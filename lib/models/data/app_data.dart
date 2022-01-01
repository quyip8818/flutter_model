import 'package:flutter/cupertino.dart';
import 'package:flutter_model/models/data/page_data.dart';

class AppData {
  final List<PageData> pageDataList;
  final List<NavigationItemData> navigationItems;

  AppData({required this.pageDataList, required this.navigationItems});
}

class NavigationItemData implements Comparable<NavigationItemData> {
  final NavigationItemType type;
  final int order;

  final String label;
  final String iconName;
  final int pageId;

  const NavigationItemData(
      {required this.type,
      required this.order,
      required this.label,
      required this.iconName,
      required this.pageId});

  @override
  int compareTo(NavigationItemData other) => order.compareTo(other.order);
}

enum NavigationItemType {
  bottomBar,
  leftMenu,
}
