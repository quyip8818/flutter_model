import 'package:flutter_model/models/page_model.dart';

import 'data/widget_data.dart';
import 'data/widget_type.dart';

class WidgetModel {
  final PageModel _pageModel;
  final WidgetData data;

  WidgetModel({required this.data, required PageModel pageModel})
      : _pageModel = pageModel;

  WidgetType get type => data.type;
}
