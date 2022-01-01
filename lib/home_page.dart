import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:flutter_model/states/app_state.dart';

import 'models/app_model.dart';
import 'models/data/app_data.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _currentBottomBarItemIndex = 0;

  @override
  Widget build(BuildContext context) =>
      Consumer<AppState>(builder: (context, state, child) {
        final AppModel model = state.model;

        return Scaffold(
          body: SafeArea(
            child: IndexedStack(
              index: _currentBottomBarItemIndex,
              children: const [],
            ),
          ),
          bottomNavigationBar: BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            showSelectedLabels: true,
            showUnselectedLabels: true,
            currentIndex: _currentBottomBarItemIndex,
            onTap: (int index) {
              setState(() => _currentBottomBarItemIndex = index);
            },
            items: model.bottomBarItem.map((i) => i.barItem).toList(),
          ),
        );
      });

}

