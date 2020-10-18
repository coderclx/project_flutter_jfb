import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart';
import 'package:project_flutter_jfb/biz/app/route.dart';
import 'package:project_flutter_jfb/biz/main/main_page/action.dart';

import 'action.dart';
import 'state.dart';

Widget buildView(MainState state, Dispatch dispatch, ViewService viewService) {
  final List<BottomNavigationBarItem> bottomNavItems = [
    BottomNavigationBarItem(
      backgroundColor: Colors.green,
      icon: Icon(Icons.home),
      label: '首页',
    ),
    BottomNavigationBarItem(
      backgroundColor: Colors.green,
      icon: Icon(Icons.message),
      label: '我的',
    ),
  ];

  Widget _bottomNavigationBarView(int index) {
    switch (index) {
      case 0:
        return RouteConfig.ROUTES.buildPage(RouteConfig.HOME_PAGE_PATH, null);
        break;
      case 1:
        return RouteConfig.ROUTES.buildPage(RouteConfig.PERSON_PAGE_PATH, null);
        break;
      default:
    }
  }

  return Scaffold(
    bottomNavigationBar: BottomNavigationBar(
      items: bottomNavItems,
      backgroundColor: Colors.grey[300],
      fixedColor: Colors.green,
      currentIndex: state.currentIndex,
      type: BottomNavigationBarType.fixed,
      onTap: (index) {
        if (index == state.currentIndex) {
          return;
        }
        state.currentIndex = index;
        dispatch(MainActionCreator.onBottomNavPageChanged());
      },
    ),
    body: _bottomNavigationBarView(state.currentIndex),
  );
}
