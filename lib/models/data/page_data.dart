import 'dart:ffi';

import 'package:flutter_model/models/data/widget_data.dart';

class PageData {
  final Int64 pageId;
  final List<WidgetData> widgetDataList;

  PageData({
      required this.pageId,
      required this.widgetDataList
  });
}