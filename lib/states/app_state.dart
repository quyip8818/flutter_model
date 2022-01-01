import 'package:flutter/material.dart';
import 'package:flutter_model/models/app_model.dart';
import 'package:flutter_model/models/data/app_data.dart';
import 'package:flutter_model/models/init/init_app_data.dart';

class AppState extends ChangeNotifier {
  AppModel _model = AppModel(initAppData);

  AppModel get model => _model;

  set data(AppData value) {
    _model = AppModel(value);
    notifyListeners();
  }
}

