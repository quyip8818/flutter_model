import 'package:flutter/widgets.dart';
import 'package:flutter_model/models/page_model.dart';

class PageWidget extends StatelessWidget {
  final PageModel model;

  const PageWidget({required this.model, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text('Page ${model.title}');
  }
}
