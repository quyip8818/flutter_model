import 'dart:ffi';

import 'package:flutter/cupertino.dart';
import 'package:flutter_model/models/init/icons_db.dart';

import 'data/app_data.dart';
import 'data/page_data.dart';

class AppModel {
  final AppData _data;
  final Map<Int64, PageData> _pageDataMap;
  final List<NavigationItem> leftMenuItem;
  final List<NavigationItem> bottomBarItem;

  AppModel(this._data)
      : _pageDataMap = {for (var d in _data.pageDataList) d.pageId: d},
        bottomBarItem = toNavigationItem(
            _data.navigationItems, NavigationItemType.bottomBar),
        leftMenuItem = toNavigationItem(
            _data.navigationItems, NavigationItemType.leftMenu);

  PageData? getPage(Int64 pageId) => _pageDataMap[pageId];

  static List<NavigationItem> toNavigationItem(
          List<NavigationItemData> data, NavigationItemType type) =>
      (data..sort())
          .where((i) => i.type == type)
          .map((d) => NavigationItem(d))
          .toList();
}

class NavigationItem {
  final NavigationItemData data;
  final Icon _icon;

  NavigationItem(this.data) : _icon = IconsDb.getIcon(data.iconName);

  BottomNavigationBarItem get barItem =>
      BottomNavigationBarItem(label: data.label, icon: _icon);
}
