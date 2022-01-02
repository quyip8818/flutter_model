import 'package:flutter/material.dart';
import 'package:flutter_model/models/widget_model.dart';
import 'package:flutter_model/models/data/widget_type.dart';
import 'package:flutter_model/widgets/widget.dart';

const cardMinHeight = 120.0;
const cardBorderRadius = 20.0;
const cardBoardPadding = 8.0;

class CardWidget extends CommonWidget {
  static const type = WidgetType.card;
  final WidgetModel model;

  const CardWidget(this.model, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    assert(model.data.type == type);
    var widget = Text(model.data.title ?? 'No title');
    var container = ConstrainedBox(
      constraints: const BoxConstraints(
        minWidth: double.infinity,
        minHeight: cardMinHeight,
      ),
      child: widget,
    );
    return Padding(
      padding: const EdgeInsets.all(cardBoardPadding),
      child: Card(
          shape: const RoundedRectangleBorder(
              borderRadius:
                  BorderRadius.all(Radius.circular(cardBorderRadius))),
          child: container),
    );
  }
}
