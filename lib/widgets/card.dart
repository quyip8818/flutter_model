
import 'package:flutter/widgets.dart';
import 'package:flutter_model/models/widget_model.dart';
import 'package:flutter_model/models/data/widget_type.dart';
import 'package:flutter_model/widgets/widget.dart';

class CardWidget extends CommonWidget {
  static const type = WidgetType.card;
  final WidgetModel model;

  const CardWidget(this.model, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    assert (model.data.type == type);
    return Text(model.data.title ?? 'No title');
  }
}