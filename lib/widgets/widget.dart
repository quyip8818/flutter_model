import 'package:flutter/cupertino.dart';
import 'package:flutter_model/models/data/widget_type.dart';
import 'package:flutter_model/models/widget_model.dart';

import 'navigation_card.dart';

abstract class CommonWidget extends StatelessWidget {
  const CommonWidget({ Key? key }) : super(key: key);

  factory CommonWidget.create(WidgetModel model) {
    switch(model.type) {
      case WidgetType.navigationCard:
        return NavigationCardWidget(model);
      default:
        throw "The '${model.type}' not exist";
    }
  }
}