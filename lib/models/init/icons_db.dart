import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class IconsDb {
  static const Map<String, Icon> _iconMap = {
    'message': Icon(Icons.message),
    'home': Icon(Icons.home),
    'people': Icon(Icons.people),
    'settings': Icon(Icons.settings),
    'vpn_key': Icon(Icons.vpn_key),
  };
  static const Icon defaultIcon = Icon(Icons.disabled_by_default);

  static Icon getIcon(String name) => _iconMap[name] ?? defaultIcon;
}