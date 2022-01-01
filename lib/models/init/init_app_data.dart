import 'package:flutter_model/models/data/app_data.dart';

var bottomBarItems = [
  const NavigationItemData(
    type: NavigationItemType.bottomBar,
    order: 1,
    iconName: 'message',
    label: 'Message',
    pageId: 1,
  ),
  const NavigationItemData(
    type: NavigationItemType.bottomBar,
    order: 2,
    iconName: 'vpn_key',
    label: 'Rental',
    pageId: 1,
  ),
  const NavigationItemData(
    type: NavigationItemType.bottomBar,
    order: 3,
    iconName: 'home',
    label: 'Management',
    pageId: 1,
  ),
  const NavigationItemData(
    type: NavigationItemType.bottomBar,
    order: 4,
    iconName: 'people',
    label: 'Community',
    pageId: 1,
  )
];

var initAppData =
    AppData(pageDataList: const [], navigationItems: bottomBarItems);
