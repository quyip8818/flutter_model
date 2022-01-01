import 'package:fixnum/fixnum.dart';

import 'package:flutter_model/models/data/app_data.dart';
import 'package:flutter_model/models/data/page_data.dart';

const bottomBarItems = [
   NavigationItemData(
    type: NavigationItemType.bottomBar,
    order: 1,
    iconName: 'message',
    label: 'Message',
    pageId: Int64.ONE,
  ),
  NavigationItemData(
    type: NavigationItemType.bottomBar,
    order: 2,
    iconName: 'vpn_key',
    label: 'Rental',
    pageId: Int64.TWO,
  ),
  NavigationItemData(
    type: NavigationItemType.bottomBar,
    order: 3,
    iconName: 'home',
    label: 'Management',
    pageId: Int64.ZERO,
  ),
  NavigationItemData(
    type: NavigationItemType.bottomBar,
    order: 4,
    iconName: 'people',
    label: 'Community',
    pageId: Int64.ZERO,
  )
];

const pageDataList = [
  PageData(pageId: Int64.ONE, widgetDataList: [], title: 'page1'),
  PageData(pageId: Int64.TWO, widgetDataList: [], title: 'page2'),
];

var initAppData =
    AppData(pageDataList: pageDataList, navigationItems: bottomBarItems);
