import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart';
import 'package:project_flutter_jfb/biz/app/route.dart';
import 'package:project_flutter_jfb/biz/main/main_page/action.dart';

import 'action.dart';
import 'state.dart';

Widget buildView(MainState state, Dispatch dispatch, ViewService viewService) {
  final List<BottomNavigationBarItem> bottomNavItems = [
    BottomNavigationBarItem(
      backgroundColor: Colors.blue,
      icon: Icon(Icons.home),
      label: '首页',
    ),
    BottomNavigationBarItem(
      backgroundColor: Colors.green,
      icon: Icon(Icons.message),
      label: '消息',
    ),
  ];
  return Scaffold(
    appBar: AppBar(
      title: Text('首页'),
    ),
    bottomNavigationBar: BottomNavigationBar(
      items: bottomNavItems,
      currentIndex: state.currentIndex,
      type: BottomNavigationBarType.shifting,
      onTap: (index) {
        state.currentIndex = index;
        dispatch(MainActionCreator.onBottomNavPageChanged());
      },
    ),
    body: state.currentIndex == 0
        ? RouteConfig.ROUTES.buildPage(RouteConfig.HOME_PAGE_PATH, null)
        : RouteConfig.ROUTES.buildPage(RouteConfig.PERSON_PAGE_PATH, null),
  );
}
