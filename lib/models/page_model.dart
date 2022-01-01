import 'app_model.dart';
import 'data/page_data.dart';

class PageModel {
  final AppModel _appModel;
  final PageData _data;

  PageModel({required PageData data, required AppModel appModel})
      : _data = data,
        _appModel = appModel;

  String get title => _data.title ?? 'Empty page';
}
