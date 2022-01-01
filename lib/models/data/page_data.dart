import 'package:fixnum/fixnum.dart';

import 'package:flutter_model/models/data/widget_data.dart';

class PageData {
  final Int64 pageId;
  final List<WidgetData> widgetDataList;
  final String? title;

  const PageData({
    required this.pageId,
    required this.widgetDataList,
    this.title,
  });
}

const emptyPageData = PageData(
  widgetDataList: [],
  pageId: Int64.ZERO,
  title: 'Empty Page',
);
