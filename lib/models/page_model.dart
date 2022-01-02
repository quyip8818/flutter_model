import 'app_model.dart';
import 'data/page_data.dart';

class PageModel {
  final AppModel _appModel;
  final PageData data;

  PageModel({required this.data, required AppModel appModel})
      : _appModel = appModel;

  String get title => data.title ?? 'Empty page';
}
