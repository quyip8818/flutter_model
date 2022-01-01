import 'package:flutter/material.dart';
import 'package:flutter_model/states/app_state.dart';
import 'package:provider/provider.dart';
import 'package:flutter_model/theme/app_theme.dart';

import 'home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<AppState>(create: (_) => AppState()),
      ],
      child: MaterialApp(
        title: 'Property Management',
        theme: appTheme,
        home: const HomePage(),
      ),
    );
  }
}
