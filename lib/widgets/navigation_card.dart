import 'package:flutter/material.dart';
import 'package:flutter_model/models/widget_model.dart';
import 'package:flutter_model/models/data/widget_type.dart';
import 'package:flutter_model/widgets/widget.dart';

const cardMinHeight = 120.0;
const cardBorderRadius = 15.0;
const cardBoardPadding = 8.0;

class NavigationCardWidget extends CommonWidget {
  static const type = WidgetType.navigationCard;
  final WidgetModel model;

  const NavigationCardWidget(this.model, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    assert(model.data.type == type);
    var widget = _buildWidget(context);
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
          child: Padding(
            padding: const EdgeInsets.all(cardBorderRadius),
            child: container,
          )),
    );
  }

  Widget _buildWidget(BuildContext context) {
    var widget = Text(model.data.title ?? 'No title');
    return widget;
  }
}
