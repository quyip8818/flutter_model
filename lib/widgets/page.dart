import 'package:fixnum/fixnum.dart';
import 'package:flutter/widgets.dart';

class PageWidget extends StatelessWidget {
  final Int64 pageId;

  const PageWidget({required this.pageId, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text('Page $pageId');
  }
}
