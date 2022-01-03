import 'package:flutter_model/models/data/widget_type.dart';

class WidgetData {
  final WidgetType type;
  final String? title;
  final String? description;

  const WidgetData({required this.type, this.title, this.description});
}