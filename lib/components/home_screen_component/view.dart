import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart';

import 'state.dart';

Widget buildView(
    HomeScreenState state, Dispatch dispatch, ViewService viewService) {
  return Container(
    color: Colors.grey[50],
    alignment: Alignment.center,
    child: state.currentChild != null
        ? existedChildContentView(state)
        : noExistedChildContentView(),
  );
}

Widget existedChildContentView(HomeScreenState state) {
  return Text('已存在孩子${state.currentChild.name}');
}

Widget noExistedChildContentView() {
  return RaisedButton(
      color: Colors.green,
      splashColor: Colors.green,
      disabledColor: Colors.green[100],
      child: Text(
        "请添加您的第一个孩子吧",
        style: TextStyle(color: Colors.white),
      ),
      onPressed: () {});
}
