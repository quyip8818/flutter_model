import 'package:flutter/material.dart';
import 'package:flutter_model/models/page_model.dart';
import 'package:flutter_model/models/widget_model.dart';
import 'package:flutter_model/widgets/widget.dart';

class PageWidget extends StatelessWidget {
  final PageModel model;

  const PageWidget({required this.model, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var widgets = model.data.widgetDataList
        .map((d) => WidgetModel(data: d, pageModel: model))
        .map((m) => CommonWidget.create(m))
        .map((w) => Container(
              height: 50,
              color: Colors.amber[600],
              child: w,
            ))
        .toList();

    return ListView(
      padding: const EdgeInsets.all(8),
      children: widgets,
    );
  }
}
