import 'package:fixnum/fixnum.dart';

import 'package:flutter/cupertino.dart';
import 'package:flutter_model/models/init/icons_db.dart';
import 'package:flutter_model/models/page_model.dart';

import 'data/app_data.dart';
import 'data/page_data.dart';

class AppModel {
  final AppData _data;
  final Map<Int64, PageData> _pageDataMap;
  final List<NavigationItem> leftMenuItem;
  final List<NavigationItem> bottomBarItem;

  AppModel(this._data)
      : _pageDataMap = {for (var d in _data.pageDataList) d.pageId: d},
        bottomBarItem = _toNavigationItem(
            _data.navigationItems, NavigationItemType.bottomBar),
        leftMenuItem = _toNavigationItem(
            _data.navigationItems, NavigationItemType.leftMenu);

  PageModel getPageModel(Int64 pageId) =>
      PageModel(data: _pageDataMap[pageId] ?? emptyPageData, appModel: this);

  static List<NavigationItem> _toNavigationItem(
      List<NavigationItemData> data, NavigationItemType type) {
    var items = data.where((i) => i.type == type).toList();
    return (items..sort()).map((d) => NavigationItem(d)).toList();
  }
}

class NavigationItem {
  final NavigationItemData data;
  final Icon _icon;

  NavigationItem(this.data) : _icon = IconsDb.getIcon(data.iconName);

  BottomNavigationBarItem get barItem =>
      BottomNavigationBarItem(label: data.label, icon: _icon);
}
